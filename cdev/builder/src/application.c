#include <stdmoh.h>
#include <stderr.h>
#include <string.h>

//* Builder Version
uint64_t version_major = 0;
uint64_t version_minor = 0;

//* Builder FLAGs
uint64_t FLAGs = 0;
#define FLAG_BUILD_FILE   (1 << 0)
#define FLAG_VERBOSE      (1 << 1)
#define FLAG_HELP         (1 << 4)
#define FLAG_VERSION      (1 << 5)
#define FLAG_VERBOSE_ONLY (1 << 6)

#define BUILDER_LOG(args...) if (FLAGs & (FLAG_VERBOSE))\
                             {                          \
                                 args                   \
                             }

//* Builder Args
#define ARG_BUILD_FILE    "--file"
#define ARG__BUILD_FILE   'f'
#define ARG_VERBOSE       "--verbose"
#define ARG__VERBOSE      'd'
#define ARG_HELP          "--help"
#define ARG__HELP         'h'
#define ARG_VERSION       "--version"
#define ARG__VERSION      'v'
#define ARG_VERBOSE_ONLY  "--verbose-only"
#define ARG__VERBOSE_ONLY 'i'
#define ARG__ARGS         "fdhvi"

//* Exit Flags
#define EXIT_ARGSPARCER_ERROR -1

//* Build Files
#define MAX_BUILD_FILES    32
#define DEFAULT_BUILD_FILE "build.bld"
typedef struct build_file_t
{
    FILE     *file;
    string_t  name;
    string_t  code;
} build_file_t;
build_file_t build_files[MAX_BUILD_FILES];
uint8_t current_build_file = -1;

//* Compilers
#define GCC_COMPILER     "gcc"
#define GPP_COMPILER     "g++"
#define CLANG_COMPILER   "clang"
#define DEFAULT_COMPILER GCC_COMPILER
string_t current_compiler = DEFAULT_COMPILER;

//* Functions
void builder_help();
void builder_version();
void builder_verbose();
int32_t builder_argsparcer(int32_t argc, string_t *argv);


int32_t main(int32_t argc, string_t argv[])
{
    builder_argsparcer(argc, argv);

    // //!
    // //TODO: how to stderr
    // FILE *pwd = popen("pwd", "r");
    // char buffer[128];
    // while (fgets(buffer, 128, pwd) != NULL)
    //     printf("pwd: %s", buffer);
    // pclose(pwd);
    // //!
  
    return EXIT_SUCCESS;
}

//****************************************************************************************************************************************************************
//* Functions

void builder_help()
{
    printf("Builder help:\n");  //TODO
}
void builder_version()
{
    printf("Builder version %lu.%lu\n", version_major, version_minor);
}
void builder_verbose()
{
    printf("Builder is a c, c++ and asm programs buider, it offer 3 compilers support: gcc, g++ and clang\n");
    printf("Builder use a language similar to c but with a smale changes\n");
    printf("Builder work with a .bld file (by default build.bld) and support multiple building files\n\n");
}
int32_t builder_argsparcer(int32_t argc, string_t *argv)
{
    for (uint32_t i = 1; i < (uint32_t)argc; i++)
    {
        LOG_INFO("argv[%u] = %s", i, argv[i]);

        if (argv[i][0] == '-')
        {
            if (strcmp(argv[i], ARG_VERBOSE) == 0)
            {
                FLAGs |= FLAG_VERBOSE * (!(FLAGs & (FLAG_HELP | FLAG_VERSION | FLAG_VERBOSE_ONLY)));
            }
            else if (strcmp(argv[i], ARG_BUILD_FILE) == 0)
            {
                FLAGs |= FLAG_BUILD_FILE * (!(FLAGs & (FLAG_HELP | FLAG_VERSION | FLAG_VERBOSE_ONLY)));
            }
            else if (strcmp(argv[i], ARG_HELP) == 0)
            {
                FLAGs = (FLAGs | FLAG_HELP) & (~(FLAG_BUILD_FILE | FLAG_VERBOSE));
            }
            else if (strcmp(argv[i], ARG_VERSION) == 0)
            {
                FLAGs = (FLAGs | FLAG_VERSION) & (~(FLAG_BUILD_FILE | FLAG_VERBOSE));
            }
            else if (strcmp(argv[i], ARG_VERBOSE_ONLY) == 0)
            {
                FLAGs = (FLAGs | FLAG_VERBOSE_ONLY) & (~(FLAG_BUILD_FILE | FLAG_VERBOSE));
            }
            else
            {
                char_t *arg = strpbrk(argv[i], ARG__ARGS);
                if (arg == NULL)
                {
                    LOG_FATAL(EXIT_ARGSPARCER_ERROR, "arg: '%s': isn't a valid argument", argv[i]);
                }

                do
                {
                    if (*arg == ARG__VERBOSE)
                    {
                        FLAGs |= FLAG_VERBOSE * (!(FLAGs & (FLAG_HELP | FLAG_VERSION | FLAG_VERBOSE_ONLY)));
                    }
                    else if (*arg == ARG__BUILD_FILE)
                    {
                        FLAGs |= FLAG_BUILD_FILE * (!(FLAGs & (FLAG_HELP | FLAG_VERSION | FLAG_VERBOSE_ONLY)));
                    }
                    else if (*arg == ARG__HELP)
                    {
                        FLAGs = (FLAGs | FLAG_HELP) & (~(FLAG_BUILD_FILE | FLAG_VERBOSE));
                    }
                    else if (*arg == ARG__VERSION)
                    {
                        FLAGs = (FLAGs | FLAG_VERSION) & (~(FLAG_BUILD_FILE | FLAG_VERBOSE));
                    }
                    else if (*arg == ARG__VERBOSE_ONLY)
                    {
                        FLAGs = (FLAGs | FLAG_VERBOSE_ONLY) & (~(FLAG_BUILD_FILE | FLAG_VERBOSE));
                    }
                } while ((arg = strpbrk(arg, ARG__ARGS)) != NULL);

            }
        }

        LOG_INFO("FLAGs = %#018lx\n", FLAGs)
    }

    return 0;
}

// bool parse_args(const string_t arg, build_file_t *build_files)
// {
//     if (arg[0] == '-')
//     {
//         if(!strcmp(arg, "--file") || !strcmp(arg, "-f"))
//             FLAGs |= BUILDER_BUILD_FILE;
//         else if(!strcmp(arg, "--version") || !strcmp(arg, "-v"))
//             FLAGs = BUILDER_VERSION | (FLAGs & ~BUILDER_BUILD_FILE);
//         else if(!strcmp(arg, "--verbose") || !strcmp(arg, "-#"))
//             FLAGs = BUILDER_VERBOSE | (FLAGs & ~BUILDER_BUILD_FILE);
//         else if(!strcmp(arg, "-###"))
//         {
//             FLAGs = BUILDER_VERBOSE_ONLY;
//             goto END_FLAGS_SETUP;
//         }
//         else if(!strcmp(arg, "--help") || !strcmp(arg, "-h"))
//         {
//             FLAGs = BUILDER_HELP;
//             goto END_FLAGS_SETUP;
//         }
//         else
//         {
//             LOG_ERROR("arg: '%s': isn't a valid argument", arg);
//             return false;
//         }
//     }
//     else
//     {
//         if (FLAGs & BUILDER_BUILD_FILE)
//         {
//             if (!parse_build_file(&build_files[++current_build_file], arg))
//             {
//                 LOG_FATAL(EXIT_PARSE_BUILD_FILE_ERROR, "build_files[%hhu]: '%s': isn't a valid build_file",
//                     current_build_file, build_files[current_build_file].name);
//             }
//         }
//     }
// END_FLAGS_SETUP: BUILDER_LOG(LOG_INFO("FLAGs: %#lx\n", FLAGs));
    
//     return true;
// }

// bool parse_build_file(build_file_t *build_files, const string_t file_name)
// {
//     auto uint8_t is_comment_or_new_line(const string_t code)
//     {
//         for (size_t i = 0; code[i] != 0; i++)
//         {
//             if (code[i] == ' ')
//                 continue;
//             else if (code[i] == '#')
//                 return 1;
//             else if (code[i] == '\n')
//                 return 2;
//         }

//         return 0;
//     };
//     auto bool parse_line_code_macros(const string_t code)
//     {
//         for (size_t i = 0; code[i] != 0; i++)
//         {
//             if (code[i] == ' ')
//                 continue;
//             else if (!(strncmp(&code[i], MACRO_ARCHITECTURE, strlen(MACRO_ARCHITECTURE))))
//             {
//                 FLAGs |= BUILDER_CHOSE_ARCHITECTURE;
//                 return true;
//             }
//             else if (!(strncmp(&code[i], MACRO_SOURCES, strlen(MACRO_SOURCES))))
//             {
//                 FLAGs |= BUILDER_CHOSE_;
//                 return true;
//             }
//         }

//         return false;
//     };

//     build_files[current_build_file].name = (string_t)malloc((strlen(file_name) + 1) * sizeof(char));
//     strcat(build_files[current_build_file].name, file_name);
//     //!
//     if ((build_files->file = fopen(build_files->name, "r")) == NULL)
//     {
//         LOG_ERROR("unable to open %s (build_file: %hhu)", build_files->name, current_build_file);
//         return false;
//     }
//     char buffer256[256];
//     LOG_FILE(build_files[current_build_file].file, build_files[current_build_file].name, buffer256);
//     build_files->code = (string_t)malloc(4096 * sizeof(char));
//     char buffer[128], tmp_buffer[128];
//     uint32_t codemax = 4080, codeline = -1;
//     bool is_open_array = false;

//     while (fgets(buffer, 128, build_files->file) != NULL)
//     {
//         codeline++;
//         tmp_buffer[0] = '\0';
//         strcat(tmp_buffer, buffer);
//         tmp_buffer[strlen(tmp_buffer) - 1] = '\0';
//         if (strlen(build_files->code) > (codemax - 128))
//         {
//             codemax += 1024;
//             build_files->code = (string_t)realloc(build_files->code, codemax + 26);
//         }
//         uint8_t _is_comment_or_new_line = is_comment_or_new_line(tmp_buffer);
//         if (!_is_comment_or_new_line || is_open_array)
//         {
//             LOG(printf("In %s) %s)%u:\nin %s)%u: (code): %s\n", __FILE__, __FUNCTION__, __LINE__, build_files->name, codeline, tmp_buffer));
//             LOG_ERROR("unable to open %s (build_file: %hhu)", build_files->name, current_build_file);
            
//         }
//         else if (_is_comment_or_new_line == 1)
//         { 
//             LOG(printf("In %s) %s)%u:\nin %s)%u: (comment): %s\n", __FILE__, __FUNCTION__, __LINE__, build_files->name, codeline, tmp_buffer));
//             continue;
//         }
//         strcat(build_files->code, buffer);
//     }
//     //!
//     fclose(build_files->file);
//     //!

//     // char *file = NULL, *path_to_file = NULL, *file_name = NULL, *file_extention = NULL;
//     // if (!parse_file_name(file, &path_to_file, &file_name, &file_extention))
//     // {
//     //     LOG(fprintf(stderr, "ERROR in %s) %s)%u: unable to parse file name '%s'\n", __FILE__, __FUNCTION__, __LINE__, file));
//     //     return false;
//     // }
//     // LOG(printf("In %s) %s)%u: path_to_file: %s, file_name: %s, file_extention: %s\n", __FILE__, __FUNCTION__, __LINE__, path_to_file, file_name, file_extention));

//     // bool is_gnu_compiler = true;
//     // if (is_gnu_compiler)
//     // {
//     //     if (!strcmp("c", file_extention))
//     //         current_compiler = GCC_COMPILER;
//     //     else if (!strcmp("cpp", file_extention))
//     //         current_compiler = GPP_COMPILER;
//     // }
//     // else
//     //   current_compiler = CLANG_COMPILER;
//     // LOG(printf("In %s) %s)%u: compiler: %s\n", __FILE__, __FUNCTION__, __LINE__, current_compiler));

//     // strcat(commands[current_command], current_compiler);
//     // strcat(commands[current_command], " ");
//     // strcat(commands[current_command], file);
//     // strcat(commands[current_command], " -o ");
//     // strcat(commands[current_command], path_to_file);
//     // strcat(commands[current_command], file_name);
//     // LOG(printf("In %s) %s)%u: command: %s\n", __FILE__, __FUNCTION__, __LINE__, commands[0]));

//     // free(path_to_file);
//     // free(file_name);
//     // free(file_extention);

//     return true;
// }

// bool parse_file_name(const string_t file, string_t *path_to_file, string_t *file_name, string_t *file_extention)
// {
//     auto bool valid_name(string_t name)
//     {
//         size_t i = -1;
//         while (name[++i])
//         {
//             if (name[i] < 33 || name[i] == '/' || name[i] == ';' || name[i] == 127)
//             {
//                 LOG(fprintf(stderr, "ERROR in %s) %s)%u: '%s' isn't a valid file name\n", __FILE__, __FUNCTION__, __LINE__, name));
//                 return false;
//             }
//         }

//         return true;
//     };

//     if (file == NULL)
//     {
//         LOG(fprintf(stderr, "ERROR in %s) %s)%u: file = NULL\n", __FILE__, __FUNCTION__, __LINE__));
//         return false;
//     }
//     if (!valid_name(file))
//     {
//         LOG(fprintf(stderr, "ERROR in %s) %s)%u: '%s' isn't a valid file name\n", __FILE__, __FUNCTION__, __LINE__, file));
//         return false;
//     }

//     size_t file_size = strlen(file), path_to_file_size = 0, file_name_size = file_size, file_extention_size = 0;
//     LOG(printf("In %s) %s)%u: file_size: %lu\n", __FILE__, __FUNCTION__, __LINE__, file_size));
//     for (size_t i = 0; i < file_size; i++)
//     {
//         if (file[i] == '/')
//             file_name_size = file_size - i;
//         else if (file[i] == '.')
//             file_extention_size = file_size - i;
//     }
//     file_extention_size--;
//     file_name_size -= file_extention_size + 2;
//     path_to_file_size = file_size - (file_name_size + 1 + file_extention_size);
//     LOG(printf("In %s) %s)%u: file_size: %lu, path_to_file_size: %lu, file_name_size: %lu, file_extention_size: %lu\n",
//         __FILE__, __FUNCTION__, __LINE__, file_size, path_to_file_size, file_name_size, file_extention_size));

//     if ((*file_extention = (string_t)malloc(sizeof(char) * (file_extention_size + 1))) == NULL)
//     {
//         LOG(fprintf(stderr, "ERROR in %s) %s)%u: file_extention = NULL\n", __FILE__, __FUNCTION__, __LINE__));
//         return false;
//     }

//     if ((*file_name = (string_t)malloc(sizeof(char) * (file_name_size + 1))) == NULL)
//     {
//         LOG(fprintf(stderr, "ERROR in %s) %s)%u: file_name = NULL\n", __FILE__, __FUNCTION__, __LINE__));
//         return false;
//     }
//     if ((*path_to_file = (string_t)malloc(sizeof(char) * (path_to_file_size + 1))) == NULL)
//     {
//         LOG(fprintf(stderr, "ERROR in %s) %s)%u: path_to_file = NULL\n", __FILE__, __FUNCTION__, __LINE__));
//         return false;
//     }

//     size_t itr;
//     for (itr = 0; itr < file_extention_size; itr++)
//         (*file_extention)[itr] = file[file_size - file_extention_size + itr];
//     (*file_extention)[itr] = '\0';
//     for (itr = 0; itr < file_name_size; itr++)
//         (*file_name)[itr] = file[path_to_file_size + itr];
//     (*file_name)[itr] = '\0';
//     for (itr = 0; itr < path_to_file_size; itr++)
//         (*path_to_file)[itr] = file[itr];
//     (*path_to_file)[itr] = '\0';
//     LOG(printf("In %s) %s)%u: path_to_file: %s, file_name: %s, file_extention: %s\n",
//         __FILE__, __FUNCTION__, __LINE__, *path_to_file, *file_name, *file_extention));

//     return true;
// }
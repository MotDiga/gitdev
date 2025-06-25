#include "stdargs.h"



str_t app_name;
opt_t opts[1024];
int32_t argn = 0;

//****************************************************************************************************

//! Handel Duplicates !!!
void parce_args(int32_t argc, str_t argv[], const str_t str_args, void (*parce_shortcuts)(int32_t argp, str_t argv[]))
{
    app_name = argv[0];
    
    //* Parce str_args
    opt_arg_t str_argv[1024];
    int32_t str_argn = 0, i = 0, j;
    if (str_args != NULL)
    {
        while (str_args[i] != '\0')
        {
            str_argv[str_argn].name = (str_t)malloc(sizeof(char_t) * (128 + 1));
            j = 0;
            while (str_args[i] != ':')
            {
                str_argv[str_argn].name[j] = str_args[i];
                i++;
            }
            i++;
            str_argv[str_argn].dup = str_args[i] - '0';
            str_argn++, i+=2;
        }
    }

    //* Parce args
    for (int32_t argp = 1; argp < argc; argp++)
    {
        if (argv[argp][0] == '-')
        {
            if (argv[argp][1] == '-')
            {
                parce_shortcuts(argp, argv);
                continue;
            }
            //!!!!! Handel Duplicates !!!
            // for (int32_t i = 0; i < str_argn; i++)
            // {
                // if (!strcmp(str_argv[i].name, ))
                // {
                    // return;
                // }
            // }
            //!!!!!
            opts[argn].name = &argv[argp][1];
            opts[argn].pos = argp;
            argn++;
        }
    }
    
    //* Free str_argv
    while (str_argn)
    {
        str_argn--;
        free(str_argv[str_argn].name);
    }
}
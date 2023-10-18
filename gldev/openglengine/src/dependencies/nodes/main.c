#include <stdmoh.h>
#include "tests/tests.h"
#include "tests/benchmarks.h"

// #define rotateleft(x,n) ((x<<n) | (x>>(32-n)))  
// #define rotateright(x,n) ((x>>n) | (x<<(32-n)))  

// void sha1(uchar_t *str1)  
// {
//     uint64_t h0, h1, h2, h3, h4, a, b, c, d, e, f, k, temp;
//     int64_t i, j;
    
//     h0 = 0x67452301;
//     h1 = 0xEFCDAB89;
//     h2 = 0x98BADCFE;
//     h3 = 0x10325476;
//     h4 = 0xC3D2E1F0;
    
//     uchar_t *str;
//     str = (uchar_t*)malloc(strlen((const char_t*)str1) + 100);
//     strcpy((char_t*)str,(const char_t*)str1);
    
//     int64_t current_length = strlen((const char_t*)str);
//     int64_t original_length = current_length;
//     str[current_length] = 0x80;
//     str[current_length + 1] = '\0';
    
//     // char_t ic = str[current_length];  //!
//     current_length++;
    
//     int64_t ib = current_length % 64;
//     if (ib < 56)
//     {
//         ib = 56-ib;
//     }
//     else
//     {
//         ib = 120 - ib;
//     }
  
//     for (i = 0; i < ib; i++)  
//     {
//         str[current_length]=0x00;
//         current_length++;
//     }
//     str[current_length + 1] = '\0';
    
//     for(i = 0; i < 6; i++)  
//     {
//         str[current_length]=0x0;
//         current_length++;
//     }
//     str[current_length] = (original_length * 8) / 0x100 ;
//     current_length++;
//     str[current_length] = (original_length * 8) % 0x100;
//     current_length++;
//     str[current_length+i]='\0';
    
//     int number_of_chunks = current_length/64;
//     uint64_t word[80]; 
//     for (i = 0; i < number_of_chunks; i++)  
//     {
//         for(j = 0; j < 16; j++)  
//         {
//             word[j] = str[i*64 + j*4 + 0] * 0x1000000 + str[i*64 + j*4 + 1] * 0x10000 + str[i*64 + j*4 + 2] * 0x100 + str[i*64 + j*4 + 3];
//         }
//         for(j=16;j<80;j++)  
//         {
//             word[j] = rotateleft((word[j-3] ^ word[j-8] ^ word[j-14] ^ word[j-16]), 1);
//         }
        
//         a = h0;
//         b = h1;
//         c = h2;
//         d = h3;
//         e = h4;
        
//         for(int64_t m = 0; m < 80; m++)  
//         {
//             if(m <= 19)  
//             {
//                 f = (b & c) | ((~b) & d);
//                 k = 0x5A827999;
//             }
//             else if(m <= 39)  
//             {
//                 f = b ^ c ^ d;
//                 k = 0x6ED9EBA1;
//             }
//             else if(m <= 59)  
//             {
//                 f = (b & c) | (b & d) | (c & d);
//                 k = 0x8F1BBCDC;
//             }
//             else  
//             {
//                 f = b ^ c ^ d;
//                 k = 0xCA62C1D6; 
//             }
            
//             temp = (rotateleft(a, 5) + f + e + k + word[m]) & 0xFFFFFFFF;
//             e = d;
//             d = c;
//             c = rotateleft(b, 30);
//             b = a;
//             a = temp;
            
//         }
            
//         h0 = h0 + a;
//         h1 = h1 + b;
//         h2 = h2 + c;
//         h3 = h3 + d;
//         h4 = h4 + e;
//     }
        
//     printf("Hash: %#18lx, %#18lx, %#18lx, %#18lx, %#18lx\n", h0, h1, h2, h3, h4);
// }

// static void test_vlog(const string_t format, ...)
// {
//     va_list args;
//     va_start(args, format);

//     mtime_t mtime;
//     mtime_updatemtime(&mtime);

//     uint64_t int_count = 0, real_count = 0;
//     int64_t ints[16];
//     real64_t reals[16];

//     #define IS_INT(format, i) (((i >= 1) && (strncmp(&(format[i-1]), "%d", 2L) == 0)) || ((i >= 2) && (strncmp(&(format[i-2]), "%ld", 3L) == 0)) || ((i >= 1) && (strncmp(&(format[i-1]), "%i", 2L) == 0)) || ((i >= 2) && (strncmp(&(format[i-2]), "%li", 3L) == 0)))
//     #define IS_REAL(format, i) (((i >= 1) && (strncmp(&(format[i-1]), "%f", 2L) == 0)) || ((i >= 2) && (strncmp(&(format[i-2]), "%lf", 3L) == 0)))

//     for (size_t i = 0; format[i] != '\0'; i++)
//     {
//         if (IS_INT(format, i))
//         {
//             ints[int_count++] = va_arg(args, int);
//             log_info_plus("int_count = %lu\n", int_count);
//             log_info_plus("ints[int_count-1] = %lu\n", ints[int_count-1]);
//         }
//         if (IS_REAL(format, i))
//         {
//             reals[real_count++] = va_arg(args, double);
//             log_info_plus("real_count = %lu\n", real_count);
//             log_info_plus("reals[real_count-1] = %lf\n", reals[real_count-1]);
//         }
//     }
//     size_t itr = -1;
//     if (int_count > 0)
//     {
//         printf("ints: ");
//         while (++itr < int_count-1)
//         {
//             printf("%ld, ", ints[itr]);
//         }
//         printf("%ld\n", ints[itr]);
//     }
//     itr = -1;
//     if (real_count > 0)
//     {
//         printf("reals: ");
//         while (++itr < real_count-1)
//         {
//             printf("%lf, ", reals[itr]);
//         }
//         printf("%lf\n", reals[itr]);
//     }

//     va_end(args);
// }

int32_t main(int32_t argc, string_t argv[])
{
    puts("\nSalam Alicom\n");

    // onode_test();  //!
    // dnode_test();
    // alist_test();  //!
    // list_test();
    // dlist_test();
    // stack_test();
    // queue_test();
    // stdstr_test();  //!
    // mtime_test();  //!!!
    // rsa_test(); //!

    // test_vlog("%ld %d, %f, %i eded%lf, %lili%%\n", 3, 9, 9.0, 8, 3.0f, 0);   //!

//****************************************
//* Shader

    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    window_t *window = glfwCreateWindow(960, 540, "LearnOpenGL", NULL, NULL);
    if (window == NULL)
    {
        glfwTerminate();
        log_fatal_plus(EXIT_FAILURE, "unable to init glfw")
    }
    glfwMakeContextCurrent(window);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glfwSwapInterval(1);
    if (glewInit() != GLEW_OK)
    {
        glfwTerminate();
        log_fatal_plus(EXIT_FAILURE, "unable to init glew")
    }
    printf("Status: Using GL %s\n", glGetString(GL_VERSION));
    printf("Status: Using GLEW %s\n\n", glewGetString(GLEW_VERSION));

    //* Vertex Inputs

    const real32_t triangle[9] = {
        -0.5f, -0.5f, 0.0f,
         0.0f,  0.5f, 0.0f,
         0.5f, -0.5f, 0.0f
    };
    const uint32_t triangleindeces[3] = { 0, 1, 2 };

    uint32_t vao;
    glGenVertexArrays(1, &vao);
    glBindVertexArray(vao);
    uint32_t triangle_vbo;
    glGenBuffers(1, &triangle_vbo);
    glBindBuffer(GL_ARRAY_BUFFER, triangle_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(triangle), triangle, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    uint32_t triangle_ebo;
    glGenBuffers(1, &triangle_ebo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, triangle_ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(triangleindeces), triangleindeces, GL_STATIC_DRAW);

    gprogram_t color_program;
    gprogram_gen(&color_program, "color.glsl");
    int32_t u_color = gprogram_uniformlocation(&color_program, "u_color");

    //* Rendering loop

    while (!glfwWindowShouldClose(window))
    {
        glClear(GL_COLOR_BUFFER_BIT);
        glClearColor(0.0f, 0.1f, 0.15f, 1.0f);

        real32_t ctime = glfwGetTime();
#define M_2PI_3 3.14159265f*(2.0f/3.0f)
#define M_4PI_3 3.14159265f*(4.0f/3.0f)
        real32_t u_r = sin(ctime*0.75f);
        real32_t u_g = sin(ctime*0.75f + M_2PI_3);
        real32_t u_b = sin(ctime*0.75f + M_4PI_3);
        gprogram_updateuniform(u_color, 3f, u_r, u_g, u_b);

        glDrawElements(GL_TRIANGLES, 3, GL_UNSIGNED_INT, NULL);

        glfwSwapBuffers(window);
        
        glfwPollEvents();
    }
    gprogram_free(&color_program);
    glfwTerminate();

//****************************************
//* Pipe
	// int32_t n;
	// int32_t fd[2];
	// char_t buf[1025];
	// string_t data = "hello... this is sample data";

	// pipe(fd);
	// write(fd[1], data, strl(data));
	// if ((n = read(fd[0], buf, 1024)) >= 0)
    // {
	// 	buf[n] = 0;	/* terminate the string */
	// 	printf("read %d bytes from the pipe: \"%s\"\n", n, buf);
	// }	
	// else
    // {
	// 	perror("read");
    // }
//****************************************
    // char_t bin[65] ,hexdec[20];
    // uint64_t uinum = strtouint(argv[1]);
    // int64_t  inum  = strtoint(argv[2]);
    // real64_t rnum  = strtoreal(argv[3]);

    // printf("%lu %s uint\n", uinum, (issrtuint(argv[1])) ? "==" : "!=");
    // printf("%ld %s int\n",  inum,  (issrtint(argv[2]))  ? "==" : "!=");
    // printf("%lf %s real\n\n", rnum,  (issrtreal(argv[3])) ? "==" : "!="); 

    // uinttobits(bin, uinum);
    // printf("(%ld)10 -> (%s)2\n", inum, bin);

    // inttohexdec(hexdec, inum);
    // printf("(%ld)10 -> %s\n\n", inum, hexdec);

    // sha1((uchar_t *)"Salam alicom");
    // sha1((uchar_t *)"Salam alicom");
    // sha1((uchar_t *)"Salam Alicom");
    // sha1((uchar_t *)"Salam Alicom");
    // sha1((uchar_t *)"Salam Alicom ç_è''é_è\"-\' dlikjhfezf  ezfe$$ẑ");

    return 0;
}
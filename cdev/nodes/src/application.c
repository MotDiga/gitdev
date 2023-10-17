#include <stdmoh.h>
#include "nodes.h"
#include "tests/tests.h"
// #include <complex.h>


// void sha1(uchar_t *str1);
// static void test_vlog(const string_t format, ...);

//? sha encript, ecc encript


int32_t main(int32_t argc, string_t argv[])
{
    if (argc == 0)
    {
        return (int32_t)((uint64_t)argv);
    }
    log_colorwhite("\nSalam Alicom\n\n");

    // onode_test();  //!
    // dnode_test();
    // alist_test();  //!
    // list_test();
    // dlist_test();
    // stack_test();
    // queue_test();
    // stdstr_test();  //!
    //********
    // iabs32_test();
    // iabs64_test();
    // isign64_test();
    // isign32_test();
    //****
    // sqrt32_test();
    // sqrt64_test();
    // exp32_test();    //!
    // exp64_test();
    // ln32_test();     //!
    // ln64_test();
    // lambertw0_32_test();
    // lambertw0_64_test();
    // lambertwm1_32_test();
    // lambertwm1_64_test();
    //********
    biguintbitwise_test();       //!
    // biguintcomparison_test();    //!
    // biguintarethmetic_test();    //!
    //********
    // mtime_test();   //!!!
    // rsa_test();     //!
    // shader_test();
    // bubblesort_test();
    // insertionsort_test();    //!
    // mergesort_test();

//****************************************

    // if (argc != 2)
    // {
    //     printf("Usage: %s number\n", argv[0]);
    //     return -1;
    // }
    // printf("x = %.15lG\n", strtoreal(argv[1]));

//****************************************

    // if (argc != 2)
    // {
    //     printf("Usage: %s number\n", argv[0]);
    //     return -1;
    // }

    // mtime_t time0, time1 = time0 = MTIME_ZERO;
    // real32_t x, w, wexp_w, err_x = 0.0f;
    // x = strtoreal(argv[1]);

    // mtime_update(&time0);
    // w = lambertw0_32(x);
    // // w = lambertwm1_32(x);
    // mtime_update(&time1);
    // wexp_w = w*exp(w);

    // printf("W(%.6G) = %.6E\n", x, w);
    // printf("We^W = %.6E\n", wexp_w);
    // printf("error<x> = %.6G\n", floorf(fabsf(wexp_w - x)/fabsf(x)*1E+6)*1E-6);
    // printf("lambertw<-1> in %12.9lfs\n\n", mtime_delta(time0, time1));

//****************************************

    // realint64_t realint;

    // char_t buffer[65];
    // realint.real = -1.0;
    // printf("bin(x) = %s\n", uinttobin(buffer, 64, realint.intr));
    // printf("sign(x) = %lf\n", realint.real);
    // realint.real = 1.0;
    // printf("bin(x) = %s\n", uinttobin(buffer, 64, realint.intr));
    // printf("sign(x) = %lf\n", realint.real);

    // realint.real = -rand()*625.109976789;
    // printf("sign32(x) = %lf\n", sign32(realint.real));
    // printf("sign64(x) = %lf\n", sign64(realint.real));
    // realint.real = +rand()*827.089897687;
    // printf("sign32(x) = %lf\n", sign32(realint.real));
    // printf("sign64(x) = %lf\n", sign64(realint.real));

//****************************************

    // if (argc != 2)
    // {
    //     printf("Usage: %s number\n", argv[0]);
    //     return -1;
    // }

    // mtime_t time0, time1 = time0 = MTIME_ZERO;
    // // real64_t x, expx, lnexpx;
    // real32_t x, expx, lnexpx;
    // x = strtoreal(argv[1]);

    // mtime_update(&time0);
    // // expx = exp64(x);
    // expx = exp32(x);
    // mtime_update(&time1);
    // // lnexpx = log(expx);
    // lnexpx = logl(expx);

    // // printf("W(%.6lG) = %.15lE\n", x, expx);
    // // printf("We^W = %.15lE\n", lnexpx);
    // // printf("delta<x> = %.15lG\n", fabs(lnexpx - x)/fabs(x));
    // // printf("exp(x) in %12.9lfs\n\n", mtime_delta(time0, time1));
    // printf("\nW(%.6G) = %.6E\n", x, expx);
    // printf("We^W = %.6E\n", lnexpx);
    // printf("delta<x> = %.6G\n", fabsf(lnexpx - x)/fabsf(x));
    // printf("exp(x) in %12.9lfs\n", mtime_delta(time0, time1));

//****************************************

    // if (argc != 2)
    // {
    //     printf("Usage: %s number\n", argv[0]);
    //     return -1;
    // }

    // mtime_t time0, time1 = time0 = MTIME_ZERO;
    // real64_t x, w, wexp_w, err_x = 0.0;
    // x = strtoreal(argv[1]);

    // mtime_update(&time0);
    // w = lambertw0_64(x);
    // // w = lambertwm1_64(x);
    // mtime_update(&time1);
    // wexp_w = w*exp(w);

    // printf("W(%.6lG) = %.15lE\n", x, w);
    // printf("We^W = %.15lE\n", wexp_w);
    // printf("delta<x> = %.15lG\n", floor(fabs(wexp_w - x)/fabs(x)*1E+15)*1E-15);
    // printf("lambertw<-1> in %12.9lfs\n\n", mtime_delta(time0, time1));

//****************************************
//* BrainBlow interpretor

// #define BRAINBLOWDEBUG(format, args...) if (argc == 2)                      \
//                                         {                                   \
//                                             if (streq(argv[1], "debug"))    \
//                                             {                               \
//                                                 log_trace(format, ##args);  \
//                                             }                               \
//                                         }

    // puts("\nSalam Alicom, This is BrainBow!\n");

    // auto void inc_code_itr(char_t code[100][1025], int8_t *l, int8_t *c)
    // {
    //     (*c)++;
    //     if (code[*l][*c] == '\0')
    //     {
    //         (*l)++, *c = 0;
    //     }
    // };
    // auto void dec_code_itr(char_t code[100][1025], int8_t *l, int8_t *c)
    // {
    //     (*c)--;
    //     if (*c < 0)
    //     {
    //         (*l)--, *c = strl(code[*l])-1;
    //     }
    // };

    // // code[lines][colonnes]
    // char_t code[100][1025];
    // // init array of cells to zeros
    // byte_t cell[1024] = { 0 };
    // byte_t input[1024];
    // // lines: lines count
    // // inputs: inputs count
    // uint16_t lines = 0, inputs = 0;
    // // FILE *programin = fopen("/dev/stdin", "r");
    // for (uint8_t i = 0; i < 100; i++)
    // {
    //     printf("line %d: ", i);
    //     scanf("%[^\n]", code[i]); fgetc(stdin);
    //     inputs += strchrcnt(code[i], ',');
    //     lines++;
    //     BRAINBLOWDEBUG("{inputs: %d}\n", inputs)
    //     if (inputs > 0)
    //     {
    //         printf("inputs: ");
    //         do {
    //             scanf("%hhd", input+i);
    //         }
    //         while (--inputs);
    //     }
    //     if (code[i][0] == '\0')
    //     {
    //         break;
    //     }
    // }

    // // Syntax error (brackets) check
    // // bracket_itr: bracket iretator
    // int16_t bracket_itr = 0;
    // // l: line iterator
    // for (int8_t l = 0; l < lines; l++)
    // {
    //     // c: colonne iterator
    //     for (int8_t c = 0; code[l][c] != 0; c++)
    //     {
    //         if (code[l][c] == '[')
    //         {
    //             bracket_itr++;
    //         }
    //         else if (code[l][c] == ']')
    //         {
    //             bracket_itr--;
    //         }
    //     }
    // }
    // if (bracket_itr != 0)
    // {
    //     log_fatal(1, "SYNTAX ERROR");
    // }

    // log_colorgreen("Output:\n");
    // // Interpreter loop
    // // cell_itr: cells iretator
    // // input_itr: inputs iretator
    // int16_t cell_itr = 0, input_itr = 0;
    // // l: line iterator
    // // c: colonne iterator
    // for (int8_t l = 0, c = 0; l < lines; inc_code_itr(code, &l, &c))
    // {
    //     if (code[l][c] == '>')
    //     {
    //         cell_itr++;
    //         if (cell_itr >= 1024)
    //         {
    //             log_fatal(2, "POINTER OUT OF BOUNDS");
    //         }
    //     }
    //     else if (code[l][c] == '<')
    //     {
    //         cell_itr--;
    //         if (cell_itr < 0)
    //         {
    //             log_fatal(2, "POINTER OUT OF BOUNDS");
    //         }
    //     }
    //     else if (code[l][c] == '+')
    //     {
    //         //! if (cell[cell_itr] == 255)
    //         //! {
    //         //!     log_fatal(3, "INCORRECT VALUE");
    //         //! }
    //         cell[cell_itr]++;
    //     }
    //     else if (code[l][c] == '-')
    //     {
    //         //! if (cell[cell_itr] == 0)
    //         //! {
    //         //!     log_fatal(3, "INCORRECT VALUE");
    //         //! }
    //         cell[cell_itr]--;
    //     }
    //     else if (code[l][c] == '.')
    //     {
    //         putchar(cell[cell_itr]);
    //     }
    //     else if (code[l][c] == ',')
    //     {
    //         cell[cell_itr] = input[input_itr++];
    //     }
    //     else if (code[l][c] == '[')
    //     {
    //         bracket_itr = 1;
    //         if (cell[cell_itr] == 0)
    //         {
    //             while (bracket_itr != 0)
    //             {
    //                 inc_code_itr(code, &l, &c);
    //                 if (code[l][c] == '[')
    //                 {
    //                     bracket_itr++;
    //                 }
    //                 if (code[l][c] == ']')
    //                 {
    //                     bracket_itr--;
    //                 }
    //             }
    //         }
    //     }
    //     else if (code[l][c] == ']')
    //     {
    //         bracket_itr = -1;
    //         if (cell[cell_itr] != 0)
    //         {
    //             while (bracket_itr != 0)
    //             {
    //                 dec_code_itr(code, &l, &c);
    //                 if (code[l][c] == '[')
    //                 {
    //                     bracket_itr++;
    //                 }
    //                 if (code[l][c] == ']')
    //                 {
    //                     bracket_itr--;
    //                 }
    //             }
    //         }
    //     }
    // }
    // putchar('\n');

//****************************************
//*

    // auto list_t* rivsizes(const int32_t row, const int32_t col, const bool_t mat[row][col])
    // {
    //     auto void riversearcher(const int32_t i, const int32_t j, const int32_t row, const int32_t col, const bool_t mat[row][col], bool_t visitedmat[row][col], uint32_t *size)
    //     {
    //         if (!mat[i][j])       return;
    //         if (visitedmat[i][j]) return;
    //         visitedmat[i][j] = true;

    //         (*size)++;
    //         if (i+1 < row)
    //         {
    //             riversearcher(i+1, j, row, col, mat, visitedmat, size);
    //         }
    //         if (j+1 < col)
    //         {
    //             riversearcher(i, j+1, row, col, mat, visitedmat, size);
    //         }
    //         if (j > 0)
    //         {
    //             riversearcher(i, j-1, row, col, mat, visitedmat, size);
    //         }
    //         if (i > 0)
    //         {
    //             riversearcher(i-1, j, row, col, mat, visitedmat, size);
    //         }
    //     }

    //     list_t *sizes = list_init();
    //     bool_t visitedmat[row][col];
    //     for (int32_t i = 0; i < row; i++)
    //     {
    //         for (int32_t j = 0; j < col; j++)
    //         {
    //             visitedmat[i][j] = false;
    //         }
    //     }
        
    //     for (int32_t i = 0; i < row; i++)
    //     {
    //         for (int32_t j = 0; j < col; j++)
    //         {
    //             uint32_t size = 0;
    //             riversearcher(i, j, row, col, mat, visitedmat, &size);
    //             if (size > 0)
    //             {
    //                 list_pushhead(sizes, size);
    //             }
    //         }
    //     }

    //     return sizes;
    // }

    // bool_t mat0[5][5] = { 
    //     { 1, 0, 0, 1, 0 },
    //     { 1, 0, 1, 0, 0 },
    //     { 0, 0, 1, 0, 1 },
    //     { 1, 0, 1, 0, 1 },
    //     { 1, 0, 1, 1, 0 }
    // };  //TODO: 2 -> 2 -> 5 -> 1 -> 2 -> NULL

    // bool_t mat1[6][10] = {
    //     { 1, 0, 0, 1, 0, 1, 0, 1, 1, 0 },
    //     { 1, 0, 0, 1, 0, 1, 0, 0, 1, 0 },
    //     { 0, 0, 0, 1, 0, 1, 1, 0, 1, 0 },
    //     { 1, 1, 1, 1, 0, 0, 1, 0, 0, 0 },
    //     { 1, 0, 0, 1, 1, 1, 0, 0, 1, 1 },
    //     { 1, 0, 0, 0, 0, 1, 0, 0, 1, 0 }
    // };  //TODO: 3 -> 4 -> 5 -> 13 -> 2 -> NULL

    // bool_t mat2[10][15] = {
    //     { 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0 },
    //     { 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0 },
    //     { 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0 },
    //     { 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0 },
    //     { 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1 },
    //     { 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0 },
    //     { 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0 },
    //     { 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0 },
    //     { 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1 },
    //     { 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0 }
    // };  //TODO:  3 -> 5 -> 11 -> 4 -> 9 -> 4 -> 5 -> 4 -> 5 -> 16 -> 2 -> NULL

    // list_t *sizes = rivsizes(5, 5, mat0);
    // list_print(sizes);
    // sizes = rivsizes(6, 10, mat1);
    // list_print(sizes);
    // sizes = rivsizes(10, 15, mat2);
    // list_print(sizes);
    // list_free(&sizes);

//****************************************

    // register real64_t real, x = STDM_PI_4;
    // __asm__ __volatile__( "fcos" : "=t" (real) : "0" (x) );
    // log_colorgreen("fcos(%.6lf) = %.15lf\n", x, real);
    // __asm__ __volatile__( "fsin" : "=t" (real) : "0" (x) );
    // log_colorgreen("fsin(%.6lf) = %.15lf\n", x, real);

//****************************************

    // test_vlog("%ld %d, %f, %i eded%lf, %lili%%\n", 3, 9, 9.0, 8, 3.0f, 0);   //!

//****************************************

    // struct uint24_t { uint8_t a, b, c; } n, m;

    // n = (struct uint24_t){ 10, 10, 0};
    // m = (struct uint24_t){ 10, 10, 0};
    // printf("n = %u, m = %u\n", n, m);

    // n.a += m.a;
    // n.b += m.b;
    // n.c += m.c;
    // if (n.b < m.b) n.c++;
    // if (n.a < m.a && ++n.b == 0) n.c++;
    // printf("n + m = %u\n", n);

    //! n.a -= m.a;
    //! n.b -= m.b;
    //! n.c -= m.c;
    //! if (n.b < m.b) n.c++;
    //! if (n.a < m.a && ++n.b == 0) n.c++;
    //! printf("n - m = %u\n", n);

//****************************************
//* avx

    // typedef __m128 vec_4;
    // typedef vec_4 mat_4[4];

    // vec_4 pos = { 3.0f, 4.0f, 5.0f, 1.0f },
    //       res = { 0.0f, 0.0f, 0.0f, 0.0f }, tmp;

    // puts("");
    // log_colorgreen("pos = < %7.3f %7.3f %7.3f %7.3f  >\n", pos[0], pos[1], pos[2], pos[3]);
    // log_colorgreen("res = < %7.3f %7.3f %7.3f %7.3f  >\n", res[0], res[1], res[2], res[3]);

    // real32_t Tx = 5.000f, Ty = 5.000f, Tz = 5.000f,
    //          Sx = 2.000f, Sy = 2.000f, Sz = 2.000f,
    //          Rx = 0.577f, Ry = 0.577f, Rz = 0.577f;

    // mat_4 scalemat4 = {
    //     { Sx  , 0.0f, 0.0f, 0.0f },
    //     { 0.0f, Sy  , 0.0f, 0.0f },
    //     { 0.0f, 0.0f, Sz  , 0.0f },
    //     { 0.0f, 0.0f, 0.0f, 1.0f }
    // };
    // mat_4 transmat4 = {
    //     { 1.0f, 0.0f, 0.0f, Tx   },
    //     { 0.0f, 1.0f, 0.0f, Ty   },
    //     { 0.0f, 0.0f, 1.0f, Tz   },
    //     { 0.0f, 0.0f, 0.0f, 1.0f }
    // };
    // real32_t a = M_PI * 2.0/3.0;
    // mat_4 rotatemat4 = {
    //     { cosf(a) + Rx*Rx*(1 - cosf(a))   ,  Rx*Ry*(1 - cosf(a)) - Rz*sinf(a),  Rx*Rz*(1 - cosf(a)) + Ry*sinf(a),  0.0f },
    //     { Ry*Rx*(1 - cosf(a)) + Rz*sinf(a),  cosf(a) + Ry*Ry*(1 - cosf(a))   ,  Ry*Rz*(1 - cosf(a)) - Rx*sinf(a),  0.0f },
    //     { Rz*Rx*(1 - cosf(a)) - Ry*sinf(a),  Rz*Ry*(1 - cosf(a)) + Rx*sinf(a),  cosf(a) + Rz*Rz*(1 - cosf(a))   ,  0.0f },
    //     { 0.0f                            ,  0.0f                            ,  0.0f                            ,  1.0f }
    // };
    // mat_4 tsmat4, tsrmat4;

    // log_colorgreen("             _                                  _\n");
    // log_colorgreen("            |  %7.3f %7.3f %7.3f %7.3f   |\n",   scalemat4[0][0], scalemat4[0][1], scalemat4[0][2], scalemat4[0][3]);
    // log_colorgreen("            |  %7.3f %7.3f %7.3f %7.3f   |\n",   scalemat4[1][0], scalemat4[1][1], scalemat4[1][2], scalemat4[1][3]);
    // log_colorgreen("scalemat4 = |  %7.3f %7.3f %7.3f %7.3f   |\n",   scalemat4[2][0], scalemat4[2][1], scalemat4[2][2], scalemat4[2][3]);
    // log_colorgreen("            |_ %7.3f %7.3f %7.3f %7.3f  _|\n\n", scalemat4[3][0], scalemat4[3][1], scalemat4[3][2], scalemat4[3][3]);

    // log_colorgreen("             _                                  _\n");
    // log_colorgreen("            |  %7.3f %7.3f %7.3f %7.3f   |\n",   transmat4[0][0], transmat4[0][1], transmat4[0][2], transmat4[0][3]);
    // log_colorgreen("            |  %7.3f %7.3f %7.3f %7.3f   |\n",   transmat4[1][0], transmat4[1][1], transmat4[1][2], transmat4[1][3]);
    // log_colorgreen("transmat4 = |  %7.3f %7.3f %7.3f %7.3f   |\n",   transmat4[2][0], transmat4[2][1], transmat4[2][2], transmat4[2][3]);
    // log_colorgreen("            |_ %7.3f %7.3f %7.3f %7.3f  _|\n\n", transmat4[3][0], transmat4[3][1], transmat4[3][2], transmat4[3][3]);

    // glm_mat4_mul((real32_t (*)[4])scalemat4, (real32_t (*)[4])transmat4, (real32_t (*)[4])tsmat4);

    // log_colorgreen("          _                                  _\n");
    // log_colorgreen("         |  %7.3f %7.3f %7.3f %7.3f   |\n",   tsmat4[0][0], tsmat4[0][1], tsmat4[0][2], tsmat4[0][3]);
    // log_colorgreen("         |  %7.3f %7.3f %7.3f %7.3f   |\n",   tsmat4[1][0], tsmat4[1][1], tsmat4[1][2], tsmat4[1][3]);
    // log_colorgreen("tsmat4 = |  %7.3f %7.3f %7.3f %7.3f   |\n",   tsmat4[2][0], tsmat4[2][1], tsmat4[2][2], tsmat4[2][3]);
    // log_colorgreen("         |_ %7.3f %7.3f %7.3f %7.3f  _|\n\n", tsmat4[3][0], tsmat4[3][1], tsmat4[3][2], tsmat4[3][3]);

    // tmp = pos * tsmat4[0];
    // res[0] = tmp[0] + tmp[1] + tmp[2] + tmp[3];
    // tmp = pos * tsmat4[1];
    // res[1] = tmp[0] + tmp[1] + tmp[2] + tmp[3];
    // tmp = pos * tsmat4[2];
    // res[2] = tmp[0] + tmp[1] + tmp[2] + tmp[3];
    // tmp = pos * tsmat4[3];
    // res[3] = tmp[0] + tmp[1] + tmp[2] + tmp[3];

    // puts("");
    // log_colorgreen("pos =               < %7.3f %7.3f %7.3f %7.3f  >\n", pos[0], pos[1], pos[2], pos[3]);
    // log_colorgreen("res = tsmat * pos = < %7.3f %7.3f %7.3f %7.3f  >\n", res[0], res[1], res[2], res[3]);

    // log_colorgreen("              _                                  _\n");
    // log_colorgreen("             |  %7.3f %7.3f %7.3f %7.3f   |\n",   rotatemat4[0][0], rotatemat4[0][1], rotatemat4[0][2], rotatemat4[0][3]);
    // log_colorgreen("             |  %7.3f %7.3f %7.3f %7.3f   |\n",   rotatemat4[1][0], rotatemat4[1][1], rotatemat4[1][2], rotatemat4[1][3]);
    // log_colorgreen("rotatemat4 = |  %7.3f %7.3f %7.3f %7.3f   |\n",   rotatemat4[2][0], rotatemat4[2][1], rotatemat4[2][2], rotatemat4[2][3]);
    // log_colorgreen("             |_ %7.3f %7.3f %7.3f %7.3f  _|\n\n", rotatemat4[3][0], rotatemat4[3][1], rotatemat4[3][2], rotatemat4[3][3]);

    // glm_mat4_mul((real32_t (*)[4])tsmat4, (real32_t (*)[4])rotatemat4, (real32_t (*)[4])tsrmat4);

    // log_colorgreen("           _                                  _\n");
    // log_colorgreen("          |  %7.3f %7.3f %7.3f %7.3f   |\n",   tsrmat4[0][0], tsrmat4[0][1], tsrmat4[0][2], tsrmat4[0][3]);
    // log_colorgreen("          |  %7.3f %7.3f %7.3f %7.3f   |\n",   tsrmat4[1][0], tsrmat4[1][1], tsrmat4[1][2], tsrmat4[1][3]);
    // log_colorgreen("tsrmat4 = |  %7.3f %7.3f %7.3f %7.3f   |\n",   tsrmat4[2][0], tsrmat4[2][1], tsrmat4[2][2], tsrmat4[2][3]);
    // log_colorgreen("          |_ %7.3f %7.3f %7.3f %7.3f  _|\n\n", tsrmat4[3][0], tsrmat4[3][1], tsrmat4[3][2], tsrmat4[3][3]);

    // tmp = pos * tsrmat4[0];
    // res[0] = tmp[0] + tmp[1] + tmp[2] + tmp[3];
    // tmp = pos * tsrmat4[1];
    // res[1] = tmp[0] + tmp[1] + tmp[2] + tmp[3];
    // tmp = pos * tsrmat4[2];
    // res[2] = tmp[0] + tmp[1] + tmp[2] + tmp[3];
    // tmp = pos * tsrmat4[3];
    // res[3] = tmp[0] + tmp[1] + tmp[2] + tmp[3];

    // puts("");
    // log_colorgreen("pos =                < %7.3f %7.3f %7.3f %7.3f  >\n", pos[0], pos[1], pos[2], pos[3]);
    // log_colorgreen("res = tsrmat * pos = < %7.3f %7.3f %7.3f %7.3f  >\n", res[0], res[1], res[2], res[3]);

    // printf("");

//****************************************
//* Complex

    // complex z = 2.0 + 3.0i, s = 3.0 + 2.0i;

    // printf("%lf + %lfi\n", z);
    // printf("%lf + %lfi\n", s);
    // printf("%lf + %lfi\n", s + z);
    // printf("%lf + %lfi\n", s - z);
    // printf("%lf + %lfi\n", s * z);
    // printf("%lf + %lfi\n", s / z);

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


// #define rotateright(x,n) ((x>>n) | (x<<(32-n)))
// #define rotateleft(x,n) ((x<<n) | (x>>(32-n)))

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
#ifndef   TESTS_H_INCLUDED
#define   TESTS_H_INCLUDED

#include "../nodes.h"
// #include <math.h>


//****************************************************************************************************************************************************************
//* Node
void onode_test();
void dnode_test();

//****************************************************************************************************************************************************************
//* Advencenode
void slist_test();
void list_test();
void dlist_test();
void stack_test();
void queue_test();

//****************************************************************************************************************************************************************
//* STDSTR
void stdstr_test();

//****************************************************************************************************************************************************************
//* Number Conversion
// bool_t issrtreal(string_t strnum);
// bool_t issrtint(string_t strnum);
// bool_t issrtuint(string_t strnum);
// int64_t  strtoint(string_t strnum);
// uint64_t strtouint(string_t strnum);
// real64_t strtoreal(string_t strnum); //!!! 1E-8726, e = 2.71828, pi...
// string_t uinttobin(string_t bin, uint64_t bits, uint64_t integer);
// string_t uinttobits(string_t bin, uint64_t integer);
// string_t inttohexdec(string_t hexdec, int64_t integer); //!!!!!!

//****************************************************************************************************************************************************************
//* Integer Functions
void iabs32_test();
void iabs64_test();
void isign64_test();
void isign32_test();
void ifacto32_test();
void ifacto64_test();
void gcd32_test();
void gcd64_test();
void lcm32_test();
void lcm64_test();
void isprime32_test();
void isprime64_test();
void find_p32_test();
void find_p64_test();
void nck32_test();
void nck64_test();
void npk32_test();
void npk64_test();
//****************************************
//* Real Functions
void abs32_test();
void abs64_test();
void sign32_test();
void sign64_test();
void sqrt32_test();
void sqrt64_test();
void exp32_test();
void exp64_test();
void ln32_test();
void ln64_test();
void lambertw0_32_test();
void lambertw0_64_test();
void lambertwm1_32_test();
void lambertwm1_64_test();

//****************************************************************************************************************************************************************
//* MTime
void mtime_test();

//****************************************************************************************************************************************************************
//* BigNum
void biguintbitwise_test();
void biguintcomparison_test();
void biguintarethmetic_test();

//****************************************************************************************************************************************************************
//* RSA
void rsa_test();

//****************************************************************************************************************************************************************
//* Shader
void shader_test();

//****************************************************************************************************************************************************************
//* Sorting
void bubblesort_test();
void insertionsort_test();
void mergesort_test();

#endif // TESTS_H_INCLUDED
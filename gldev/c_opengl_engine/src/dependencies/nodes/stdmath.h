#ifndef   STDMATH_H_INCLUDED
#define   STDMATH_H_INCLUDED

#include "stdstr.h"
#include "stdtime.h"

typedef struct complex32_t
{
    real32_t real;
    real32_t imag;
} complex32_t;
typedef struct complex64_t
{
    real64_t real;
    real64_t imag;
} complex64_t;


//****************************************************************************************************************************************************************
//* Number conversion
bool_t issrtreal(string_t snum);
bool_t issrtint(string_t snum);
bool_t issrtuint(string_t snum);

int64_t strtoint(string_t snum);
uint64_t strtouint(string_t snum);
real64_t strtoreal(string_t snum);

string_t uinttobin(string_t bin, uint64_t bits, uint64_t inum);
string_t uinttobits(string_t bin, uint64_t inum);
string_t inttohexdec(string_t hexdec, int64_t inum);

// string_t inttostr(int64_t _int);
// string_t realtostr(real64_t real);
// string_t realtobin(string_t bin, uint64_t type, real64_t real);
// string_t realtohex(string_t hex, uint64_t type, real64_t real);

//****************************************************************************************************************************************************************
//* Integers
uint64_t gcd(uint64_t inum0, uint64_t inum1);   //* Greater Common Divador
bool_t   isprime(uint64_t inum);
uint64_t findgp(uint64_t inum);                 //* Find Greatest Prime
// factor //to primes

//****************************************************************************************************************************************************************
//* Real numbers
#define LOG_1_X_MU 0.0450465679168701171875
real32_t qsqrt32(real32_t rnum);
real64_t qsqrt64(real64_t rnum);
real32_t qrsqrt32(real32_t rnum);   //* Quick Reciprocal Square Root (real32)
real64_t qrsqrt64(real64_t rnum);   //* Quick Reciprocal Square Root (real64)

//****************************************************************************************************************************************************************
//* Complex numbers

//****************************************************************************************************************************************************************
//* Algorithms

#endif // STDMATH_H_INCLUDED
#ifndef   STDMATH_H_INCLUDED
#define   STDMATH_H_INCLUDED

#include <stdmoh.h>
#include <stderr.h>
#include <math.h>

#define R32_NAN         (__builtin_nanf(""))
#define R32_INF         (__builtin_inff())
#define R32_1_2         0.5f                             //* 1/2
#define R32_1_3         3.33333333333333333333E-1f       //* 1/3
#define R32_1_4         0.25f                            //* 1/4
#define R32_1_5         0.2f                             //* 1/5
#define R32_1_6         1.66666666666666666667E-1f       //* 1/6
#define R32_1_7         1.42857142857142857143E-1f       //* 1/7
#define R32_1_8         0.125f                           //* 1/8
#define R32_1_9         1.11111111111111111111E-1f       //* 1/9
#define R32_1_10        0.1f                             //* 1/10
#define R32_1_11        9.09090909090909090909E-2f       //* 1/11
#define R32_1_12        8.33333333333333333333E-2f       //* 1/12
#define R32_1_13        7.69230769230769230769E-2f       //* 1/13
#define R32_1_14        7.14285714285714285714E-2f       //* 1/14
#define R32_1_15        6.66666666666666666667E-2f       //* 1/15
#define R32_1_16        0.0625f                          //* 1/16
#define R32_1_17        5.88235294117647058824E-2f       //* 1/17
#define R32_1_18        5.55555555555555555556E-2f       //* 1/18
#define R32_1_19        5.26315789473684210526E-2f       //* 1/19
#define R32_1_20        0.05f                            //* 1/20
#define R32_F_2         2.0f                             //* 2!
#define R32_F_3         6.0f                             //* 3!
#define R32_F_4         24.0f                            //* 4!
#define R32_F_5         120.0f                           //* 5!
#define R32_F_6         720.0f                           //* 6!
#define R32_F_7         5040.0f                          //* 7!
#define R32_F_8         40320.0f                         //* 8!
#define R32_F_9         362880.0f                        //* 9!
#define R32_F_10        3628800.0f                       //* 10!
#define R32_F_11        39916800.0f                      //* 11!
#define R32_F_12        479001600.0f                     //* 12!
#define R32_F_13        6227020800.0f                    //* 13!
#define R32_F_14        87178291200.0f                   //* 14!
#define R32_F_15        1307674368000.0f                 //* 15!
#define R32_F_16        20922789888000.0f                //* 16!
#define R32_F_17        355687428096000.0f               //* 17!
#define R32_F_18        6402373705728000.0f              //* 18!
#define R32_F_19        121645100408832000.0f            //* 19!
#define R32_F_20        2432902008176640000.0f           //* 20!
#define R32_RF_2        0.5f                             //* 1/(2!)
#define R32_RF_3        1.66666666666666666667E-1f       //* 1/(3!)
#define R32_RF_4        4.16666666666666666667E-2f       //* 1/(4!)
#define R32_RF_5        8.33333333333333333333E-3f       //* 1/(5!)
#define R32_RF_6        1.38888888888888888889E-3f       //* 1/(6!)
#define R32_RF_7        1.98412698412698412698E-4f       //* 1/(7!)
#define R32_RF_8        2.48015873015873015873E-5f       //* 1/(8!)
#define R32_RF_9        2.75573192239858906526E-6f       //* 1/(9!)
#define R32_RF_10       2.75573192239858906526E-7f       //* 1/(10!)
#define R32_RF_11       2.50521083854417187751E-8f       //* 1/(11!)
#define R32_RF_12       2.08767569878680989792E-9f       //* 1/(12!)
#define R32_RF_13       1.60590438368216145994E-10f      //* 1/(13!)
#define R32_RF_14       1.14707455977297247139E-11f      //* 1/(14!)
#define R32_RF_15       7.64716373181981647590E-13f      //* 1/(15!)
#define R32_RF_16       4.77947733238738529744E-14f      //* 1/(16!)
#define R32_RF_17       2.81145725434552076320E-15f      //* 1/(17!)
#define R32_RF_18       1.56192069685862264622E-16f      //* 1/(18!)
#define R32_RF_19       8.22063524662432971696E-18f      //* 1/(19!)
#define R32_RF_20       4.11031762331216485848E-19f      //* 1/(20!)
//! #define R32_LOG_1_X_MU  4.5046567916870117187E-2f        //* fast rsqrt
#define R32_E           2.71828182845904523536f          //* e (euler constant)
#define R32_2E          5.43656365691809047072f          //* 2e
#define R32_1_E         3.67879441171442321596E-1f       //* 1/e
#define R32_1_2E        1.83939720585721160798E-1f       //* 1/(2e)
#define R32_LOG2E       1.44269504088896340736f          //* log2(e) = 1/ln(2)
#define R32_LOG10E      4.34294481903251827651E-1f       //* log10(e) = 1/ln(10)
#define R32_LN2         6.93147180559945309417E-1f       //* ln(2)
#define R32_LN10        2.30258509299404568402f          //* ln(10)
#define R32_PI          3.14159265358979323846f          //* pi
#define R32_2PI         6.28318530717958647693f          //* 2pi
#define R32_2PI_3       2.09439510239319549231f          //* 2pi/3
#define R32_PI_2        1.57079632679489661923f          //* pi/2
#define R32_PI_3        1.04719755119659774615f          //* pi/3
#define R32_PI_4        7.85398163397448309616E-1f       //* pi/4
#define R32_PI_6        5.52359877559829887308E-1f       //* pi/6
#define R32_1_PI        3.18309886183790671538E-1f       //* 1/pi
#define R32_2_PI        6.36619772367581343076E-1f       //* 1/(2pi)
#define R32_SQRTPI      1.7724538509055160273f           //* sqrt(pi)
#define R32_2_SQRTPI    1.1283791670955125739f           //* 2/sqrt(pi)
#define R32_SQRT2       1.4142135623730950488f           //* sqrt(pi)
#define R32_RSQRT2      7.07106781186547524401E-1f       //* sqrt(1/2)
#define R32_OMEGA       5.67143290409783873000E-1f       //* omega*e^omega = 1

#define R64_NAN         (__builtin_nan(""))
#define R64_INF         (__builtin_inf())
#define R64_1_2         0.5                              //* 1/2
#define R64_1_3         3.33333333333333333333E-1        //* 1/3
#define R64_1_4         0.25                             //* 1/4
#define R64_1_5         0.2                              //* 1/5
#define R64_1_6         1.66666666666666666667E-1        //* 1/6
#define R64_1_7         1.42857142857142857143E-1        //* 1/7
#define R64_1_8         0.125                            //* 1/8
#define R64_1_9         1.11111111111111111111E-1        //* 1/9
#define R64_1_10        0.1                              //* 1/10
#define R64_1_11        9.09090909090909090909E-2        //* 1/11
#define R64_1_12        8.33333333333333333333E-2        //* 1/12
#define R64_1_13        7.69230769230769230769E-2        //* 1/13
#define R64_1_14        7.14285714285714285714E-2        //* 1/14
#define R64_1_15        6.66666666666666666667E-2        //* 1/15
#define R64_1_16        0.0625                           //* 1/16
#define R64_1_17        5.88235294117647058824E-2        //* 1/17
#define R64_1_18        5.55555555555555555556E-2        //* 1/18
#define R64_1_19        5.26315789473684210526E-2        //* 1/19
#define R64_1_20        0.05                             //* 1/20
#define R64_1_21        4.76190476190476190476e-2        //* 1/21
#define R64_1_22        4.54545454545454545455e-2        //* 1/22
#define R64_1_23        4.34782608695652173913e-2        //* 1/23
#define R64_1_24        4.16666666666666666667e-2        //* 1/24
#define R64_1_25        4e-2                             //* 1/25
#define R64_1_26        3.84615384615384615385e-2        //* 1/26
#define R64_1_27        3.7037037037037037037e-2         //* 1/27
#define R64_1_28        3.57142857142857142857e-2        //* 1/28
#define R64_1_29        3.44827586206896551724e-2        //* 1/29
#define R64_F_2         2.0                              //* 2!
#define R64_F_3         6.0                              //* 3!
#define R64_F_4         24.0                             //* 4!
#define R64_F_5         120.0                            //* 5!
#define R64_F_6         720.0                            //* 6!
#define R64_F_7         5040.0                           //* 7!
#define R64_F_8         40320.0                          //* 8!
#define R64_F_9         362880.0                         //* 9!
#define R64_F_10        3628800.0                        //* 10!
#define R64_F_11        39916800.0                       //* 11!
#define R64_F_12        479001600.0                      //* 12!
#define R64_F_13        6227020800.0                     //* 13!
#define R64_F_14        87178291200.0                    //* 14!
#define R64_F_15        1307674368000.0                  //* 15!
#define R64_F_16        20922789888000.0                 //* 16!
#define R64_F_17        355687428096000.0                //* 17!
#define R64_F_18        6402373705728000.0               //* 18!
#define R64_F_19        121645100408832000.0             //* 19!
#define R64_F_20        2432902008176640000.0            //* 20!
#define R64_RF_2        0.5                              //* 1/(2!)
#define R64_RF_3        1.66666666666666666667E-1        //* 1/(3!)
#define R64_RF_4        4.16666666666666666667E-2        //* 1/(4!)
#define R64_RF_5        8.33333333333333333333E-3        //* 1/(5!)
#define R64_RF_6        1.38888888888888888889E-3        //* 1/(6!)
#define R64_RF_7        1.98412698412698412698E-4        //* 1/(7!)
#define R64_RF_8        2.48015873015873015873E-5        //* 1/(8!)
#define R64_RF_9        2.75573192239858906526E-6        //* 1/(9!)
#define R64_RF_10       2.75573192239858906526E-7        //* 1/(10!)
#define R64_RF_11       2.50521083854417187751E-8        //* 1/(11!)
#define R64_RF_12       2.08767569878680989792E-9        //* 1/(12!)
#define R64_RF_13       1.60590438368216145994E-10       //* 1/(13!)
#define R64_RF_14       1.14707455977297247139E-11       //* 1/(14!)
#define R64_RF_15       7.64716373181981647590E-13       //* 1/(15!)
#define R64_RF_16       4.77947733238738529744E-14       //* 1/(16!)
#define R64_RF_17       2.81145725434552076320E-15       //* 1/(17!)
#define R64_RF_18       1.56192069685862264622E-16       //* 1/(18!)
#define R64_RF_19       8.22063524662432971696E-18       //* 1/(19!)
#define R64_RF_20       4.11031762331216485848E-19       //* 1/(20!)
//! #define R64_LOG_1_X_MU  4.5046567916870117187E-2         //* fast rsqrt
#define R64_E           2.71828182845904523536           //* e (euler constant)
#define R64_2E          5.43656365691809047072           //* 2e
#define R64_1_E         3.67879441171442321596E-1        //* 1/e
#define R64_1_2E        1.83939720585721160798E-1        //* 1/(2e)
#define R64_LOG2E       1.44269504088896340736           //* log2(e) = 1/ln(2)
#define R64_LOG10E      4.34294481903251827651E-1        //* log10(e) = 1/ln(10)
#define R64_LN2         6.93147180559945309417E-1        //* ln(2)
#define R64_LN10        2.30258509299404568402           //* ln(10)
#define R64_PI          3.14159265358979323846           //* pi
#define R64_2PI         6.28318530717958647693           //* 2pi
#define R64_2PI_3       2.09439510239319549231           //* 2pi/3
#define R64_PI_2        1.57079632679489661923           //* pi/2
#define R64_PI_3        1.04719755119659774615           //* pi/3
#define R64_PI_4        7.85398163397448309616E-1        //* pi/4
#define R64_PI_6        5.52359877559829887308E-1        //* pi/6
#define R64_1_PI        3.18309886183790671538E-1        //* 1/pi
#define R64_2_PI        6.36619772367581343076E-1        //* 1/(2pi)
#define R64_SQRTPI      1.7724538509055160273            //* sqrt(pi)
#define R64_2_SQRTPI    1.1283791670955125739            //* 2/sqrt(pi)
#define R64_SQRT2       1.4142135623730950488            //* sqrt(pi)
#define R64_RSQRT2      7.07106781186547524401E-1        //* sqrt(1/2)
#define R64_OMEGA       5.67143290409783873000E-1        //* omega*e^omega = 1

#define R32_HI(real) *(1 + (uint16_t*)&real)
#define R32_LO(real) *((uint16_t*)&real)
#define R64_HI(real) *(1 + (uint32_t*)&real)
#define R64_LO(real) *((uint32_t*)&real)

typedef union realint32_t
{
    real32_t real;
    uint32_t intr;
} realint32_t;
typedef union realint64_t
{
    real64_t real;
    uint64_t intr;
} realint64_t;
//? RealInt Funcions ?

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
//* Integer Functions

uint32_t rint32(uint32_t integer);                      //* Reverse Int 32Bit
uint64_t rint64(uint64_t integer);                      //* Reverse Int 64Bit
// uint64_t intlog2_64(uint64_t integer);
int32_t  iabs32(int32_t integer);
int64_t  iabs64(int64_t integer);
int64_t  isign64(int64_t integer);
int32_t  isign32(int32_t integer);
uint32_t ifacto32(uint32_t integer);                     //* Factorial   (int32)
uint64_t ifacto64(uint64_t integer);                     //* Factorial   (int64)
uint32_t gcd32(uint32_t integer0, uint32_t integer1);   //* Greatest Common Divador (PGCD); integer0 >= integer1  (int32)
uint64_t gcd64(uint64_t integer0, uint64_t integer1);   //* Greatest Common Divador (PGCD); integer0 >= integer1  (int64)
uint32_t lcm32(uint32_t integer0, uint32_t integer1);   //* Lowest Common Multiplier (PPCM); integer0 >= integer1 (int32)
uint64_t lcm64(uint64_t integer0, uint64_t integer1);   //* Lowest Common Multiplier (PPCM); integer0 >= integer1 (int64)
bool_t   isprime32(uint32_t integer);
bool_t   isprime64(uint64_t integer);
uint32_t fgp32(uint32_t integer);                       //* Find Greatest Prime <= integer  (int64)
uint64_t fgp64(uint64_t integer);                       //* Find Greatest Prime <= integer  (int64)
uint32_t npk32(uint32_t n, uint32_t k);                 //* n Permutation k     (int32)
uint64_t npk64(uint64_t n, uint64_t k);                 //* n Permutation k     (int64)
uint32_t nck32(uint32_t n, uint32_t k);                 //* n Combination k     (int32)
uint64_t nck64(uint64_t n, uint64_t k);                 //* n Combination k     (int64)
//? factor //to primes
//? ilog, ipow

//****************************************************************************************************************************************************************
//* Real Functions

real32_t abs32(real32_t real);
real64_t abs64(real64_t real);
real32_t sign32(real32_t real);
real64_t sign64(real64_t real);
//! uint32_t facto32(uint32_t integer);                     //* Factorial;  32Bit
//! uint64_t facto64(uint64_t integer);                     //* Factorial;  64Bit
real32_t floor32(real32_t real);
real64_t floor64(real64_t real);
real32_t ceil32(real32_t real);
real64_t ceil64(real64_t real);
real32_t frac32(real32_t real);                 //* Fraction Part of Real;  32Bit
real64_t frac64(real64_t real);                 //* Fraction Part of Real;  64Bit
real32_t round32(real32_t real);
real64_t round64(real64_t real);
real32_t mod32(real32_t real, real32_t mod);
real64_t mod64(real64_t real, real64_t mod);
real32_t mmod32(real32_t real, real32_t mod);   //* x = k*m - mod, mmod = -mod; 32Bit
real64_t mmod64(real64_t real, real64_t mod);   //* x = k*m - mod, mmod = -mod; 64Bit
real32_t sqrt32(real32_t real);
real64_t sqrt64(real64_t real);
real32_t rsqrt32(real32_t real);                //* Reciprocal Square Root;     32Bit
real64_t rsqrt64(real64_t real);                //* Reciprocal Square Root;     64Bit
real32_t exp32(real32_t real);      //!
real64_t exp64(real64_t real);      //!
real32_t ln32(real32_t real);
real64_t ln64(real64_t real);
real32_t pow32(real32_t base, real32_t exp);
real64_t pow64(real64_t base, real64_t exp);
//? pow2_64, pow10_64, log2_64, log10_64, floor64, ceil64, round64, integer64, frac64
real32_t log32(real32_t base, real32_t real);   //!
real64_t log64(real64_t base, real64_t real);   //!
real32_t sin32(real32_t real);
real64_t sin64(real64_t real);
real32_t cos32(real32_t real);
real64_t cos64(real64_t real);
real32_t tan32(real32_t real);
real64_t tan64(real64_t real);
real32_t sec32(real32_t real);
real64_t sec64(real64_t real);
real32_t csc32(real32_t real);
real64_t csc64(real64_t real);
real32_t cot32(real32_t real);
real64_t cot64(real64_t real);
real32_t cosh32(real32_t real);
real64_t cosh64(real64_t real);
real32_t sinh32(real32_t real);
real64_t sinh64(real64_t real);
real32_t tanh32(real32_t real);
real64_t tanh64(real64_t real);
real32_t sec32h(real32_t real);
real64_t sec64h(real64_t real);
real32_t csc32h(real32_t real);
real64_t csc64h(real64_t real);
real32_t cot32h(real32_t real);
real64_t cot64h(real64_t real);
real32_t asin32(real32_t real);
real64_t asin64(real64_t real);
real32_t acos32(real32_t real);
real64_t acos64(real64_t real);
real32_t atan32(real32_t real);
real64_t atan64(real64_t real);
real32_t asec32(real32_t real);
real64_t asec64(real64_t real);
real32_t acsc32(real32_t real);
real64_t acsc64(real64_t real);
real32_t acot32(real32_t real);
real64_t acot64(real64_t real);
real32_t acosh32(real32_t real);
real64_t acosh64(real64_t real);
real32_t asinh32(real32_t real);
real64_t asinh64(real64_t real);
real32_t atanh32(real32_t real);
real64_t atanh64(real64_t real);
real32_t asech32(real32_t real);
real64_t asech64(real64_t real);
real32_t acsch32(real32_t real);
real64_t acsch64(real64_t real);
real32_t acoth32(real32_t real);
real64_t acoth64(real64_t real);
real32_t lambertw0_32(real32_t real);               //* lambertw0(x)*e^(lambertw0(x)) = x,   -0.3678794 <= x < inf;             32Bit
real64_t lambertw0_64(real64_t real);               //* lambertw0(x)*e^(lambertw0(x)) = x,   -0.3678794411714423 <= x < inf;    64Bit
real32_t lambertwm1_32(real32_t real);              //* lambertwm1(x)*e^(lambertwm1(x)) = x, -0.3678794 <= x < 0;               32Bit
real64_t lambertwm1_64(real64_t real);              //* lambertwm1(x)*e^(lambertwm1(x)) = x, -0.3678794411714423 <= x < 0;      64Bit
real32_t gamma32(real32_t real);                    //* gamma(x) = facto(x); real 32Bit
real64_t gamma64(real64_t real);                    //* gamma(x) = facto(x); real 64Bit

//****************************************************************************************************************************************************************
//* Complex Functions
// ln(z, k);            //! ln(-x) = ln(x) + i*pi { x > 0; x € R }, ln(z) = ln(r*e^(i*teta)) = ln(r) + i*teta { z = a + i*b; r = |z| = sqrt(a^2 + b^2); teta = arg(z)}
//                      //* ln(-x, k) = ln(x) + i*(pi + 2*k*pi) { x > 0; x € R }, ln(z) = ln(r*e^(i*teta)) = ln(r) + i*(teta + 2*k*pi) { z = a + i*b; r = |z| = sqrt(a^2 + b^2); teta = arg(z)}
// lambert_w(z, k);     //* lambert_w(z, k)*exp(lambert_w(z, k)) = z; k = branch

//****************************************************************************************************************************************************************
//* Quaternions Functions

//! ****************************************************************************************************************************************************************
//! * Vectors (File)

//! ****************************************************************************************************************************************************************
//! * Matrices (File)

//****************************************************************************************************************************************************************
//* Algorithms

#endif // STDMATH_H_INCLUDED
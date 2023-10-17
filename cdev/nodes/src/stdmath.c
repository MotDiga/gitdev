#include "stdmath.h"
//!!!!!!!!!!!!!!!
#include <math.h>   //!
//!!!!!!!!!!!!!!!

//****************************************************************************************************************************************************************
//* Number Conversion

bool_t issrtreal(string_t strnum)
{
    uint64_t i = 0;
    while ((strnum[i] == '-') || (strnum[i] == '+'))
    {
        i++;
    }
    while (strnum[i] != '\0')
    {
        if (!(((strnum[i] >= '0') && (strnum[i] <= '9')) || strnum[i] == '.'))
        {
            return false;
        }
        i++;
    }

    return true;
}
bool_t issrtint(string_t strnum)
{
    uint64_t i = 0;
    while ((strnum[i] == '-') || (strnum[i] == '+'))
    {
        i++;
    }
    while (strnum[i] != '\0')
    {
        if (!((strnum[i] >= '0') && (strnum[i] <= '9')))
        {
            return false;
        }
        i++;
    }

    return true;
}
bool_t issrtuint(string_t strnum)
{
    uint64_t i = 0;
    while (strnum[i] != '\0')
    {
        if (!((strnum[i] >= '0') && (strnum[i] <= '9')))
        {
            return false;
        }
        i++;
    }

    return true;
}
//****************************************
int64_t strtoint(string_t strnum)
{
    int64_t integer, i = 0L;
    bool_t sign = false;

    if (strnum[i] == '-')
    {
        sign = true;
        i++;
    }
    else
    {
        if (strnum[i] == '+')
        {
            i++;
        }
    }

    integer = strnum[i] - '0';
    while (strnum[++i] != '\0')
    {
        integer = 10UL*integer + strnum[i] - '0';
    }

    return !sign*integer + !!sign*(~(integer - 1L));
}
uint64_t strtouint(string_t strnum)
{
    uint64_t integer, i = 0UL;

    integer = strnum[0] - '0';
    while (strnum[++i] != '\0')
    {
        integer = 10UL*integer + strnum[i] - '0';
    }

    return integer;
}
real64_t strtoreal(string_t strnum) //! replace 1E-1 with pow10_64(n)
{
    realint64_t real;
    uint64_t integer, exponent, i = 0UL, j = 17UL;
    real64_t frac = 0.0, k;

    if (strnum[0] == '-')
    {
        real.intr = 0xBFF0000000000000UL;    //* -1.0
        j++, i++;
    }
    else if (strnum[0] == '+')
    {
        real.intr = 0x3FF0000000000000UL;    //* +1.0
        j++, i++;
    }
    else
    {
        real.intr = 0x3FF0000000000000UL;    //*  1.0
    }

    integer = strnum[i++] - '0';
    for (; (i < j) && (strnum[i] != '.') && (strnum[i] != 'E') && (strnum[i] != '\0'); i++)
    {
        integer = 10UL*integer + strnum[i] - '0';
    }
    for (; (strnum[i] != '.') && (strnum[i] != 'E') && (strnum[i] != '\0'); i++)
    {
        real.real *= 10.0;
    }

    if (strnum[i] == '\0')
    {
        return real.real*integer;
    }
    else if (strnum[i+1] == '\0')
    {
        return real.real*integer;
    }
    else if (((strnum[i+1] == '+') || (strnum[i+1] == '-')) && (strnum[i+2] == '\0'))
    {
        return real.real*integer;
    }
    else if (strnum[i] == '.')
    {
        j = 0UL;
        for (; (strnum[j] != 'E') && (strnum[j] != '\0'); j++);
        i = j;

        while (strnum[--j] != '.')
        {
            frac += strnum[j] - '0', frac *= 1E-1;
        }
    }

    if (strnum[i] == 'E')
    {
        if (strnum[i+1] == '\0')
        {
            return real.real*(integer + frac);
        }
        else if (((strnum[i+1] == '+') || (strnum[i+1] == '-')) && (strnum[i+2] == '\0'))
        {
            return real.real*(integer + frac);
        }

        if (strnum[i+1] == '-')
        {
            k = 1E-1;
            i++;
        }
        else
        {
            k = 10.0;
            if (strnum[i+1] == '+')
            {
                i++;
            }
        }
        exponent = strnum[++i] - '0';
        while (strnum[++i] != '\0')
        {
            exponent = 10UL*exponent + strnum[i] - '0';
        }
        while (exponent > 0UL)
        {
            if (exponent & 1UL)
            {
                real.real *= k;
            }
            exponent >>= 1UL;
            k *= k;
        }
    }

    return real.real*(integer + frac);

}

//****************************************
string_t uinttobin(string_t bin, uint64_t bits, uint64_t integer)   //! 0 !!!
{
    for (uint64_t i = 0UL; i < bits; i++)
    {
        bin[i] = integer%2UL + '0';
        //? bin[i] = (integer&1UL) + '0';
        integer >>= 1UL;
    }
    bin[bits] = '\0';

    return flipstr(bin);
}
string_t uinttobits(string_t bin, uint64_t integer)
{
    uint64_t i;
    for (i = 0UL; integer > 0UL; i++)
    {
        bin[i] = integer%2UL + '0';
        integer >>= 1UL;
    }
    bin[i] = '\0';

    return flipstr(bin);
}
string_t inttohexdec(string_t hexdec, int64_t integer)  //!!!!!!
{
    int64_t i, hexdecnum = 0, tmpinteger = ((integer < 0) ? -integer : integer);

    for (i = 0; tmpinteger > 0; i++)
    {
        hexdecnum = tmpinteger%16;
        if (hexdecnum >= 10)
        {
            hexdec[i] = 'a' + (hexdecnum-10);
        }
        else
        {
            hexdec[i] = '0' + hexdecnum;
        }
        tmpinteger >>= 4;
    }
    hexdec[i++] = 'x';
    hexdec[i++] = '0';
    if (integer < 0)
    {
        hexdec[i++] = '-';
    }
    hexdec[i] = '\0';

    return flipstr(hexdec);
}

//****************************************************************************************************************************************************************
//* Integer Functions

uint32_t rint32(uint32_t integer)
{
    integer = (integer >> 16) | (integer << 16);
    integer = ((integer & 0xFF00FF00) >> 8) | ((integer & 0x00FF00FF) << 8);
    integer = ((integer & 0xF0F0F0F0) >> 4) | ((integer & 0x0F0F0F0F) << 4);
    integer = ((integer & 0xCCCCCCCC) >> 2) | ((integer & 0x33333333) << 2);
    integer = ((integer & 0xAAAAAAAA) >> 1) | ((integer & 0x55555555) << 1);

    return integer;
}
uint64_t rint64(uint64_t integer)
{
    integer = (integer >> 32L) | (integer << 32L);
    integer = ((integer & 0xFFFF0000FFFF0000) >> 16L) | ((integer & 0x0000FFFF0000FFFF) << 16L);
    integer = ((integer & 0xFF00FF00FF00FF00) >> 8L)  | ((integer & 0x00FF00FF00FF00FF) << 8L);
    integer = ((integer & 0xF0F0F0F0F0F0F0F0) >> 4L)  | ((integer & 0x0F0F0F0F0F0F0F0F) << 4L);
    integer = ((integer & 0xCCCCCCCCCCCCCCCC) >> 2L)  | ((integer & 0x3333333333333333) << 2L);
    integer = ((integer & 0xAAAAAAAAAAAAAAAA) >> 1L)  | ((integer & 0x5555555555555555) << 1L);

    return integer;
}

//? static const uint64_t _intlog2_tab_64[64] = {
//?     63,  0, 58,  1, 59, 47, 53,  2,
//?     60, 39, 48, 27, 54, 33, 42,  3,
//?     61, 51, 37, 40, 49, 18, 28, 20,
//?     55, 30, 34, 11, 43, 14, 22,  4,
//?     62, 57, 46, 52, 38, 26, 32, 41,
//?     50, 36, 17, 19, 29, 10, 13, 21,
//?     56, 45, 25, 31, 35, 16,  9, 12,
//?     44, 24, 15,  8, 23,  7,  6,  5};
//? uint64_t intlog2_64(uint64_t integer)
//? {
//?     integer |= integer >> 1;
//?     integer |= integer >> 2;
//?     integer |= integer >> 4;
//?     integer |= integer >> 8;
//?     integer |= integer >> 16;
//?     integer |= integer >> 32;
//?     return _intlog2_tab_64[((uint64_t)((integer - (integer >> 1))*0x07EDD5E59A4E28C2)) >> 58L];
//? }

inline int32_t iabs32(int32_t integer)
{
    return integer & 0x7FFFFFFF;
}
inline int64_t iabs64(int64_t integer)
{
    return integer & 0x7FFFFFFFFFFFFFFFL;
}
inline int32_t isign32(int32_t integer)
{
    return (integer & 0x80000000) | 0x00000001;
}
inline int64_t isign64(int64_t integer)
{
    return (integer & 0x8000000000000000L) | 0x0000000000000001L;
}

uint32_t ifacto32(const uint32_t integer)
{
    if (integer > 0U)
    {
        return integer * ifacto32(integer - 1U);
    }

    return 1U;
    //! for ()
}
uint64_t ifacto64(const uint64_t integer)
{
    if (integer > 0UL)
    {
        return integer * ifacto64(integer - 1UL);
    }

    return 1UL;
}

uint32_t gcd32(uint32_t integer0, uint32_t integer1)
{
    uint32_t rest;
    
    while (true)
    {
        rest = integer0%integer1;
        if (rest == 0UL)
        {
            return integer1;
        }
        integer0 = integer1;
        integer1 = rest;
    }
}
uint64_t gcd64(uint64_t integer0, uint64_t integer1)
{
    uint64_t rest;
    
    while (true)
    {
        rest = integer0%integer1;
        if (rest == 0UL)
        {
            return integer1;
        }
        integer0 = integer1;
        integer1 = rest;
    }
}
inline uint32_t lcm32(const uint32_t integer0, const uint32_t integer1)
{
    return integer0*integer1/gcd32(integer0, integer1);
}
inline uint64_t lcm64(const uint64_t integer0, const uint64_t integer1)
{
    return integer0*integer1/gcd64(integer0, integer1);
}

bool_t isprime32(const uint32_t integer)
{
    if (integer < 2U)
    {
        return false;
    }

    for (uint32_t i = 2U; i < integer; i++)
    {
        if (integer%i == 0U)
        {
            return false;
        }
    }

    return true;
}
bool_t isprime64(const uint64_t integer)
{
    if (integer < 2UL)
    {
        return false;
    }

    for (uint64_t i = 2UL; i < integer; i++)
    {
        if (integer%i == 0UL)
        {
            return false;
        }
    }

    return true;
}
uint32_t fgp32(uint32_t integer)
{
    for (; integer > 2U; integer--)
    {
        if (isprime32(integer))
        {
            return integer;
        }
    }

    return 2U;
}
uint64_t fgp64(uint64_t integer)
{
    for (; integer > 2UL; integer--)
    {
        if (isprime64(integer))
        {
            return integer;
        }
    }

    return 2UL;
}

inline uint32_t npk32(const uint32_t n, const uint32_t k)
{
    return ifacto32(n)/ifacto32(k);
}
inline uint64_t npk64(const uint64_t n, const uint64_t k)
{
    return ifacto64(n)/ifacto64(k);
}
inline uint32_t nck32(const uint32_t n, const uint32_t k)
{
    return ifacto32(n)/(ifacto32(n-k)*ifacto32(k));
}
inline uint64_t nck64(const uint64_t n, const uint64_t k)
{
    return ifacto64(n)/(ifacto64(n-k)*ifacto64(k));
}

//****************************************************************************************************************************************************************
//* Real Functions

real32_t abs32(real32_t real)
{
    union { real32_t x; uint32_t i; } u;
    u.x = real;
    u.i = u.i & 0x7FFFFFFF;
    
    return u.x;
}
real64_t abs64(real64_t real)
{
    union { real64_t x; uint64_t i; } u;
    u.x = real;
    u.i = u.i & 0x7FFFFFFFFFFFFFFFL;
    
    return u.x;
}
real32_t sign32(real32_t real)
{
    union { real32_t x; uint32_t i; } u;
    u.x = real;
    u.i = (u.i & 0xBF800000) | 0x3F800000;
    
    return u.x;
}
real64_t sign64(real64_t real)
{
    union { real64_t x; uint64_t i; } u;
    u.x = real;
    u.i = (u.i & 0xBFF0000000000000L) | 0x3FF0000000000000L;
    
    return u.x;
}
real32_t floor32(real32_t real);
real64_t floor64(real64_t real)
{
    union { real64_t x; uint64_t i; } u;
    u.x = real;
    u.i = (u.i & 0xBFF0000000000000L) | 0x3FF0000000000000L;
    
    return u.x;
}
//* x = k*m + y
//* x/m = k + y/m; y/m < 1
//* floor(x/m) = k
//* mod(x, m) = y = x - k*m = x - floor(x/m)*m
inline real32_t mod32(real32_t real, real32_t mod)
{
    return real - floorf(real/mod)*mod;
}
inline real64_t mod64(real64_t real, real64_t mod)
{
    return real - floor(real/mod)*mod;
}

real32_t sqrt32(real32_t real)
{
    union { real32_t y; uint32_t i; } u;
    real32_t y2;

    u.y = real;
    u.i = 0x1fbd1df5 + (u.i >> 1);

    u.y = 0.5f*(u.y + real/u.y);
    y2 = u.y*u.y;
    return u.y*(y2 + 3.0f*real)/(3.0f*y2 + real);
}
real64_t sqrt64(real64_t real)
{
    union { real64_t y; uint64_t i; } u;
    real64_t y2;

    u.y = real;
    u.i = 0x1ff7a3bea0000000 + (u.i >> 1L);

    u.y = 0.5*(u.y + real/u.y);
    y2 = u.y*u.y;
    u.y *= (y2 + 3.0*real)/(3.0*y2 + real);
    y2 = u.y*u.y;
    return u.y*(y2 + 3.0*real)/(3.0*y2 + real);
}
real32_t rsqrt32(real32_t real)
{
    union { real32_t y; uint32_t i; } u;

    u.y = real;
    u.i = 0x5f3759df - (u.i >> 1);

    u.y = u.y * (1.5f - u.y*u.y*real*0.5f);
    // u.y = u.y * (1.5f - u.y*u.y*real*0.5f);

    return u.y;
}
real64_t rsqrt64(real64_t real)
{
    union { real64_t y; uint64_t i; } u;

    u.y = real;
    u.i = 0x5fe6eb3be0000000 - (u.i >> 1L);

    u.y = u.y * (1.5 - u.y*u.y*real*0.5);
    // u.y = u.y * (1.5 - u.y*u.y*real*0.5);

    return u.y;
}

//!!! #define LN2_HI, LN2_LO
#define R32_LN2_LOW     -19.40054690582767878542E-10f
#define R32_LOG2E_LOW   18.888963407359924681E-9f
real32_t exp32(real32_t real)   //* e^x = (2^k)*e^r, x = k*ln(2) + r
{
    union { real32_t y; uint32_t i; } u;
    int32_t k;
    real32_t r, r2, r4, e_r;

    //* x/ln(2)
    e_r = real*R32_LOG2E;// + real*R32_LOG2E_LOW;
    //* k = floor(x/ln(2))
    k = (int32_t)e_r;
    //* 2^k
    u.i = ((k + 127) << 23);

    //* r = x - k*ln(2)
    r = real - (real32_t)k*R32_LN2;// - (real32_t)k*R32_LN2_LOW;
    //* e^r
    r2 = r*r, r4 = r2*r2;//, r8 = r4*r4;
    e_r = 1.0f + r + r2*R32_RF_2 + r*r2*R32_RF_3 + r4*R32_RF_4 + r*r4*R32_RF_5 + r2*r4*R32_RF_6 + r*r2*r4*R32_RF_7;// + r8*R32_RF_8 + r*r8*R32_RF_9;

    //* (2^k)e^r = e^x
    return u.y * e_r;

    //* 5th Shroder root finding method
    // real32_t en = u.y * e_r, r3, r8, lnen_x;
    // r = (e_r - 1.0f)/(e_r + 1.0f), r2 = r*r, r3 = r*r2, r4 = r2*r2, r8 = r4*r4;
    // lnen_x = (real32_t)k*R32_LN2 + 2.0f*(r + r3*R32_1_3 + r3*r2*R32_1_5 + r3*r4*R32_1_7 + r3*r2*r4*R32_1_9 + r3*r8*R32_1_11 + r3*r2*r8*R32_1_13) - real;
    // return en - 2.0f*en*lnen_x/(2.0f - lnen_x);
}
real64_t exp64(real64_t real)   //* e^x = (2^k)*e^r, x = k*ln(2) + r
{
    union { real64_t y; uint64_t i; } u;
    int64_t k;
    real64_t r, r2, r4, r8, r16, e_r;
    
    //* e_r = tmp
    e_r = real*R64_LOG2E;
    //* k = floor(x/ln(2))
    k = (int64_t)e_r;
    //* 2^k
    u.i = ((k + 1023L) << 52L);

    //* r = x - k*ln(2)
    r = real - (real64_t)k*R64_LN2;
    //* e^r
    r2 = r*r, r4 = r2*r2, r8 = r4*r4, r16 = r8*r8;
    e_r = 1.0 + r + r2*R64_RF_2 + r*r2*R64_RF_3 + r4*R64_RF_4 + r*r4*R64_RF_5 + r2*r4*R64_RF_6 + r*r2*r4*R64_RF_7 + r8*R64_RF_8 + r*r8*R64_RF_9;
    e_r += r2*r8*R64_RF_10 + r*r2*r8*R64_RF_11 + r4*r8*R64_RF_12 + r*r4*r8*R64_RF_13 + r2*r4*r8*R64_RF_14 + r*r2*r4*r8*R64_RF_15 + r16*R64_RF_16;

    return u.y * e_r; //* (2^k)e^r = e^x

/* __ieee754_exp(x)
 * Returns the exponential of x.
 *
 * Method
 *   1. Argument reduction:
 *      Reduce x to an r so that |r| <= 0.5*ln2 ~ 0.34658.
 *	Given x, find r and integer k such that
 *
 *               x = k*ln2 + r,  |r| <= 0.5*ln2.  
 *
 *      Here r will be represented as r = hi-lo for better 
 *	accuracy.
 *
 *   2. Approximation of exp(r) by a special rational function on
 *	the interval [0,0.34658]:
 *	Write
 *	    R(r**2) = r*(exp(r) + 1)/(exp(r) - 1) = 2 + r*r/6 - r**4/360 + ...
 *      We use a special Remes algorithm on [0,0.34658] to generate 
 * 	a polynomial of degree 5 to approximate R. The maximum error 
 *	of this polynomial approximation is bounded by 2**-59. In
 *	other words,
 *	    R(z) ~ 2.0 + P1*z + P2*z**2 + P3*z**3 + P4*z**4 + P5*z**5
 *  	(where z=r*r, and the values of P1 to P5 are listed below)
 *	and
 *	    |                  5          |     -59
 *	    | 2.0+P1*z+...+P5*z   -  R(z) | <= 2 
 *	    |                             |
 *	The computation of exp(r) thus becomes
 *                     2*r
 *		exp(r) = 1 + -------
 *		              R - r
 *                                 r*R1(r)	
 *		       = 1 + r + ----------- (for better accuracy)
 *		                  2 - R1(r)
 *	where
 *			         2       4             10
 *		R1(r) = r - (P1*r  + P2*r  + ... + P5*r   ).
 *	
 *   3. Scale back to obtain exp(x):
 *	From step 1, we have
 *	   exp(x) = 2^k * exp(r)
 *
 * Special cases:
 *	exp(INF) is INF, exp(NaN) is NaN;
 *	exp(-INF) is 0, and
 *	for finite argument, only exp(0)=1 is exact.
 *
 * Accuracy:
 *	according to an error analysis, the error is always less than
 *	1 ulp (unit in the last place).
 *
 * Misc. info.
 *	For IEEE double 
 *	    if x >  7.09782712893383973096e+02 then exp(x) overflow
 *	    if x < -7.45133219101941108420e+02 then exp(x) underflow
 *
 * Constants:
 * The hexadecimal values are the intended ones for the following 
 * constants. The decimal values may be used, provided that the 
 * compiler will convert from decimal to binary accurately enough
 * to produce the hexadecimal values shown.
 */

// #define huge         1.0e+300
// #define twom1000     9.33263618503218878990e-302    /* 2**-1000=0x01700000,0*/
// #define o_threshold  7.09782712893383973096e+02     /* 0x40862E42, 0xFEFA39EF */
// #define u_threshold -7.45133219101941108420e+02     /* 0xc0874910, 0xD52D3051 */
// #define invln2       1.44269504088896338700e+00     /* 0x3ff71547, 0x652b82fe */
// #define P1           1.66666666666666019037e-01     /* 0x3FC55555, 0x5555553E */
// #define P2          -2.77777777770155933842e-03     /* 0xBF66C16C, 0x16BEBD93 */
// #define P3           6.61375632143793436117e-05     /* 0x3F11566A, 0xAF25DE2C */
// #define P4          -1.65339022054652515390e-06     /* 0xBEBBBD41, 0xC5D26BF1 */
// #define P5           4.13813679705723846039e-08     /* 0x3E663769, 0x72BEA4D0 */

//     real64_t
//     halF[2]  = {0.5, -0.5},
//     ln2HI[2] = { 6.93147180369123816490e-01,        /* 0x3fe62e42, 0xfee00000 */
//                 -6.93147180369123816490e-01},       /* 0xbfe62e42, 0xfee00000 */
//     ln2LO[2] = { 1.90821492927058770002e-10,        /* 0x3dea39ef, 0x35793c76 */
//                 -1.90821492927058770002e-10};       /* 0xbdea39ef, 0x35793c76 */

//     real64_t y, hi, lo, c, t, x = real;
//     int64_t k, xsb;
//     uint64_t hx;

//     hx  = R64_HI(x);            /* high word of x */
//     xsb = (hx >> 31) & 1;       /* sign bit of x */
//     hx &= 0x7fffffff;           /* high word of |x| */

//     /* filter out non-finite argument */
//     if (hx >= 0x40862E42)       /* if |x| >= 709.78... */
//     {
//             if (hx >= 0x7ff00000)
//             {
//                 if (((hx & 0xfffff) | R64_LO(x)) != 0)
//                 {
//                     return x + x;                   /* NaN */
//                 } 
//                 else
//                 {
//                     return (xsb == 0) ? x : 0.0;    /* exp(+-inf)={inf,0} */
//                 }
//         }
//         if (x > o_threshold)
//         {
//             return huge*huge;           /* overflow */
//         }
//         if (x < u_threshold)
//         {
//             return twom1000*twom1000;   /* underflow */
//         }
//     }

//     /* argument reduction */
//     if (hx > 0x3fd62e42)        /* if  |x| > 0.5 ln2 */
//     { 
//         if (hx < 0x3FF0A2B2)    /* and |x| < 1.5 ln2 */
//         {
//             hi = x - ln2HI[xsb], lo = ln2LO[xsb]; k = 1 - xsb - xsb;
//         }
//         else
//         {
//             k  = (int32_t)(invln2*x + halF[xsb]);
//             t  = k;
//             hi = x - t*ln2HI[0];    /* t*ln2HI is exact here */
//             lo = t*ln2LO[0];
//         }
//         x  = hi - lo;
//     }
//     else if (hx < 0x3e300000)   /* when |x|<2**-28 */
//     {
//         if (huge + x > 1.0)
//         {
//             return 1.0 + x;     /* trigger inexact */
//         }
//     }
//     else
//     {
//         k = 0;
//     }

//     /* x is now in primary range */
//     t  = x * x;
//     c  = x - t*(P1 + t*(P2 + t*(P3 + t*(P4 + t*P5))));
//     if (k == 0)
//     {
//         return 1.0 - ((x*c)/(c - 2.0) - x); 
//     }
//     else
//     {
//         y = 1.0 - ((lo - (x*c)/(2.0 - c)) - hi);
//     }
//     if (k >= -1021)
//     {
//         R64_HI(y) += (k << 20);             /* add k to y's exponent */
//         return y;
//     }
//     else
//     {
//         R64_HI(y) += ((k + 1000) << 20);    /* add k to y's exponent */
//         return y*twom1000;
//     }
}
real32_t ln32(real32_t real)    //! * ln(x) = k*ln(2) + ln(r), x = (2^k)*r
{
    union { real32_t x; uint32_t i; } u;
    real32_t k, r, r2, r3, r4, r8, lnr_2;

    u.x = real;
    //* k = x.exponent
    k = (u.i >> 23) - 127;
    //* x.exponent = 0
    //* 1065353216 = 127 << 23
    u.i = (u.i & 0x007FFFFF) + 1065353216;

	//* ln(x) = 2 * [ (x-1)/(x+1) + (1/3)((x-1)/(x+1))^3 + (1/5)((x-1)/(x+1))^5 + ... ]
    r = (u.x - 1.0f)/(u.x + 1.0f), r2 = r*r, r3 = r*r2, r4 = r2*r2, r8 = r4*r4;
    //* ln(r)/2
    lnr_2 = r + r3*R32_1_3 + r3*r2*R32_1_5 + r3*r4*R32_1_7 + r3*r2*r4*R32_1_9 + r3*r8*R32_1_11 + r3*r2*r8*R32_1_13;

    //* ln(x) = k*ln(2) + 2*(ln(r)/2)
    return k*R32_LN2 + 2.0f*lnr_2;

    //* 5th Shroder root finding method
    // real32_t lnx = k*R32_LN2 + 2.0f*lnr_2, xexp_mlnx = real*expf(-lnx), xexp_m2lnx = xexp_mlnx*xexp_mlnx;
    // // lnx = lnx - (xexp_m2lnx)/(1.0f/(1.0f - xexp_mlnx) + 2.0f - 6.0f*xexp_mlnx + xexp_m2lnx);
    // // xexp_mlnx = real*expf(-lnx), xexp_m2lnx = xexp_mlnx*xexp_mlnx;
    // return lnx - (xexp_m2lnx)/(1.0f/(1.0f - xexp_mlnx) + 2.0f - 6.0f*xexp_mlnx + xexp_m2lnx);
}
real64_t ln64(real64_t real)    //! * ln(x) = k*ln(2) + ln(r), x = (2^k)*r
{
    union { real64_t x; uint64_t i; } u;
    real64_t k, r, r2, r3, r4, r8, r16, lnr;

    u.x = real;
    //* k = x.exponent
    k = (u.i >> 52L) - 1023L;
    //* x.exponent = 0
    //* 4607182418800017408L = 1023L << 52L
    u.i = (u.i & 0x000FFFFFFFFFFFFF) + 4607182418800017408L;

    //* ln(x) = 2 * [ arctanh((x-1)/(x+1)) ]
	//* ln(x) = 2 * [ (x-1)/(x+1) + (1/3)((x-1)/(x+1))^3 + (1/5)((x-1)/(x+1))^5 + ... ]
    r = (u.x - 1.0)/(u.x + 1.0), r2 = r*r, r3 = r*r2, r4 = r2*r2, r8 = r4*r4, r16 = r8*r8;
    //* ln(r)/2
    lnr = r + r3*R64_1_3 + r3*r2*R64_1_5 + r3*r4*R64_1_7 + r3*r2*r4*R64_1_9 + r3*r8*R64_1_11 + r3*r2*r8*R64_1_13 + r3*r4*r8*R64_1_15
          + r3*r2*r4*r8*R64_1_17 + r3*r16*R64_1_19 + r3*r2*r16*R64_1_21 + r3*r4*r16*R64_1_23 + r3*r2*r4*r16*R64_1_25 + r3*r8*r16*R64_1_27
          + r3*r2*r8*r16*R64_1_29;

    //* ln(x) = k*ln(2) + 2*(ln(r)/2)
    return k*R64_LN2 + 2.0*lnr;

    //* 5th Shroder root finding method
    // real64_t lnx = k*R64_LN2 + 2.0*lnr, xexp_mlnx = real*exp(-lnx), xexp_m2lnx = xexp_mlnx*xexp_mlnx;
    // // lnx = lnx - (xexp_m2lnx)/(1.0/(1.0 - xexp_mlnx) + 2.0 - 6.0*xexp_mlnx + xexp_m2lnx);
    // // xexp_mlnx = real*exp(-lnx), xexp_m2lnx = xexp_mlnx*xexp_mlnx;
    // return lnx - (xexp_m2lnx)/(1.0/(1.0 - xexp_mlnx) + 2.0 - 6.0*xexp_mlnx + xexp_m2lnx);

/*
 * __ieee754_log(x)
 * Return the logrithm of x
 *
 * Method :                  
 *   1. Argument Reduction: find k and f such that 
 *			x = 2^k * (1+f), 
 *	   where  sqrt(2)/2 < 1+f < sqrt(2) .
 *
 *   2. Approximation of log(1+f).
 *	Let s = f/(2+f) ; based on log(1+f) = log(1+s) - log(1-s)
 *		 = 2s + 2/3 s**3 + 2/5 s**5 + .....,
 *	     	 = 2s + s*R
 *      We use a special Reme algorithm on [0,0.1716] to generate 
 * 	a polynomial of degree 14 to approximate R The maximum error 
 *	of this polynomial approximation is bounded by 2**-58.45. In
 *	other words,
 *		        2      4      6      8      10      12      14
 *	    R(z) ~ Lg1*s +Lg2*s +Lg3*s +Lg4*s +Lg5*s  +Lg6*s  +Lg7*s
 *  	(the values of Lg1 to Lg7 are listed in the program)
 *	and
 *	    |      2          14          |     -58.45
 *	    | Lg1*s +...+Lg7*s    -  R(z) | <= 2 
 *	    |                             |
 *	Note that 2s = f - s*f = f - hfsq + s*hfsq, where hfsq = f*f/2.
 *	In order to guarantee error in log below 1ulp, we compute log
 *	by
 *		log(1+f) = f - s*(f - R)	(if f is not too large)
 *		log(1+f) = f - (hfsq - s*(hfsq+R)).	(better accuracy)
 *	
 *	3. Finally,  log(x) = k*ln2 + log(1+f).  
 *			    = k*ln2_hi+(f-(hfsq-(s*(hfsq+R)+k*ln2_lo)))
 *	   Here ln2 is split into two floating point number: 
 *			ln2_hi + ln2_lo,
 *	   where n*ln2_hi is always exact for |n| < 2000.
 *
 * Special cases:
 *	log(x) is NaN with signal if x < 0 (including -INF) ;
 *	log(+INF) is +INF; log(0) is -INF with signal;
 *	log(NaN) is that NaN with no signal.
 *
 * Accuracy:
 *	according to an error analysis, the error is always less than
 *	1 ulp (unit in the last place).
 *
 * Constants:
 * The hexadecimal values are the intended ones for the following 
 * constants. The decimal values may be used, provided that the 
 * compiler will convert from decimal to binary accurately enough 
 * to produce the hexadecimal values shown.
*/

// #define ln2_hi  6.93147180369123816490e-01 	/* 3fe62e42 fee00000 */
// // #define ln2_lo  1.90821492927058770002e-10 	/* 3dea39ef 35793c76 */
// #define ln2_lo  1.90821492927232121458e-10 	//!!/* 3dea39ef 35793c76 */
// #define two54   1.80143985094819840000e+16  /* 43500000 00000000 */
// #define Lg1     6.666666666666735130e-01    /* 3FE55555 55555593 */
// #define Lg2     3.999999999940941908e-01    /* 3FD99999 9997FA04 */
// #define Lg3     2.857142874366239149e-01    /* 3FD24924 94229359 */
// #define Lg4     2.222219843214978396e-01    /* 3FCC71C5 1D8E78AF */
// #define Lg5     1.818357216161805012e-01    /* 3FC74664 96CB03DE */
// #define Lg6     1.531383769920937332e-01    /* 3FC39A09 D078C69F */
// #define Lg7     1.479819860511658591e-01    /* 3FC2F112 DF3E5244 */

// 	real64_t hfsq, f, s, z, R, w, t1, t2, dk, x = real;
// 	int64_t k, hx, i, j;
// 	uint64_t lx;

// 	hx = R64_HI(x);		            /* high word of x */
// 	lx = R64_LO(x);		            /* low  word of x */

// 	k = 0;
// 	if (hx < 0x00100000)            /* x < 2**-1022  */
//     {
// 	    if (((hx & 0x7fffffff) | lx) == 0)
//         {
// 		    return -two54/0.0;      /* log(+-0)=-inf */
//         } 
// 	    if (hx < 0)
//         {
//             return (x - x)/0.0;     /* log(-#) = NaN */
//         }
// 	    k -= 54; x *= two54;        /* subnormal number, scale up x */
// 	    hx = R64_HI(x);               /* high word of x */
// 	}
// 	if (hx >= 0x7ff00000)
//     {
//         return x + x;
//     }
// 	k += (hx >> 20) - 1023;
// 	hx &= 0x000fffff;
// 	i = (hx + 0x95f64) & 0x100000;
// 	R64_HI(x) = hx|(i^0x3ff00000);    /* normalize x or x/2 */
// 	k += (i >> 20);
// 	f = x - 1.0;
// 	if((0x000fffff & (2 + hx)) < 3) /* |f| < 2**-20 */
//     {
// 	    if(f == 0.0)
//         {
//             if(k == 0)
//             {
//                 return 0.0;
//             }
//             else
//             {
//                 dk = (real64_t)k;
// 				return dk*ln2_hi + dk*ln2_lo;
//             }
//         }
//         R = f*f*(0.5 - 0.33333333333333333*f);
// 	    if (k == 0)
//         {
//             return f - R;
//         }
//         else
//         {
//             dk = (real64_t)k;
// 	        return dk*ln2_hi - ((R - dk*ln2_lo) - f);
//         }
// 	}
//  	s = f/(2.0 + f); 
// 	dk = (real64_t)k;
// 	z = s*s;
// 	i = hx - 0x6147a;
// 	w = z*z;
// 	j = 0x6b851 - hx;
// 	t1 = w*(Lg2 + w*(Lg4 + w*Lg6)); 
// 	t2 = z*(Lg1 + w*(Lg3 + w*(Lg5 + w*Lg7))); 
// 	i |= j;
// 	R = t2 + t1;
// 	if(i > 0)
//     {
// 	    hfsq = 0.5*f*f;
// 	    if (k == 0)
//         {
//             return f - (hfsq - s*(hfsq + R));
//         }
//         else
//         {
// 		    return dk*ln2_hi - ((hfsq - (s*(hfsq + R) + dk*ln2_lo)) - f);
//         }
// 	}
//     else
//     {
// 	    if (k == 0)
//         {
//             return f - s*(f - R);
//         }
//         else
//         {
// 		    return dk*ln2_hi - ((s*(f - R) - dk*ln2_lo) - f);
//         }
// 	}
}
inline real32_t pow32(real32_t base, real32_t exp)
{
    return exp32(exp*ln32(base));
}
inline real64_t pow64(real64_t base, real64_t exp)
{
    return exp64(exp*ln64(base));
}
inline real32_t log32(real32_t base, real32_t real)
{
    return ln32(real)/ln32(base);
}
inline real64_t log64(real64_t base, real64_t real)
{
    return ln64(real)/ln64(base);
}

real32_t cos32(real32_t real)
{
    //! real32_t x = mod32(real + R64_PI, R64_2PI) - R64_PI, x2 = x*x, x4 = x2*x2, x8 = x4*x4;
    //! // LOG_INFO("mod(x+pi, 2pi) - pi = %.3fpi", x*R64_1_PI)
    //! return 1.0 - x2*0.5 + x4*R64_RF_4 - x2*x4*R64_RF_6 + x8*R64_RF_8 - x2*x8*R64_RF_10 + x4*x8*R64_RF_12 - x2*x4*x8*R64_RF_14
    //!        + x8*x8*R64_RF_16;
}
real64_t cos64(real64_t real)   //!
{
    //! real64_t x = mod64(real + R64_PI, R64_2PI) - R64_PI, x2 = x*x, x4 = x2*x2, x8 = x4*x4, x16 = x8*x8;
    //! // LOG_INFO("mod(x+pi, 2pi) - pi = %.3fpi", x*R64_1_PI)
    //! return 1.0 - x2*0.5 + x4*R64_1_4FCT - x2*x4*R64_1_6FCT + x8*R64_1_8FCT - x2*x8*R64_1_10FCT + x4*x8*R64_1_12FCT - x2*x4*x8*R64_1_14FCT
    //!        + x16*R64_1_16FCT - x2*x16*R64_1_18FCT - x4*x16*R64_1_20FCT;
}
real32_t sin32(real32_t real)
{
    //! real32_t x = mod64(real + R64_PI, R64_2PI) - R64_PI, x2 = x*x, x3 = x*x2, x4 = x2*x2, x8 = x4*x4, x16 = x8*x8;
    //! // LOG_INFO("mod(x+pi, 2pi) - pi = %.3fpi", x*R64_1_PI)
    //! return x - x3*R64_1_3FCT + x3*x2*R64_1_5FCT - x3*x4*R64_1_7FCT + x*x8*R64_1_9FCT - x3*x8*R64_1_11FCT + x3*x2*x8*R64_1_13FCT - x3*x4*x8*R64_1_15FCT
    //!        + x*x16*R64_1_17FCT - x3*x16*R64_1_19FCT - x3*x2*x16*R64_1_21FCT;
}
real64_t sin64(real64_t real)   //!
{
    //! real64_t x = mod64(real + R64_PI, R64_2PI) - R64_PI, x2 = x*x, x3 = x*x2, x4 = x2*x2, x8 = x4*x4, x16 = x8*x8;
    //! // LOG_INFO("mod(x+pi, 2pi) - pi = %.3fpi", x*R64_1_PI)
    //! return x - x3*R64_1_3FCT + x3*x2*R64_1_5FCT - x3*x4*R64_1_7FCT + x*x8*R64_1_9FCT - x3*x8*R64_1_11FCT + x3*x2*x8*R64_1_13FCT - x3*x4*x8*R64_1_15FCT
    //!        + x*x16*R64_1_17FCT - x3*x16*R64_1_19FCT - x3*x2*x16*R64_1_21FCT;
}
inline real32_t tan32(real32_t real)
{
    return sin32(real)/cos32(real);
}
inline real64_t tan64(real64_t real)
{
    return sin64(real)/cos64(real);
}
inline real32_t sec32(real32_t real)
{
    return 1.0f/cos32(real);
}
inline real64_t sec64(real64_t real)
{
    return 1.0/cos64(real);
}
inline real32_t cosec32(real32_t real)
{
    return 1.0f/sin32(real);
}
inline real64_t cosec64(real64_t real)
{
    return 1.0/sin64(real);
}
inline real32_t cot32(real32_t real)
{
    return cos32(real)/sin32(real);
}
inline real64_t cot64(real64_t real)
{
    return cos64(real)/sin64(real);
}
inline real32_t cosh32(real32_t real)
{
    return (exp32(real) + exp32(-real))/2.0f;
}
inline real64_t cosh64(real64_t real)
{
    return (exp64(real) + exp64(-real))/2.0;
}
inline real32_t sinh32(real32_t real)
{
    return (exp32(real) - exp32(-real))/2.0f;
}
inline real64_t sinh64(real64_t real)
{
    return (exp64(real) - exp64(-real))/2.0;
}
real32_t tanh32(real32_t real)
{
    real32_t exp_2x = exp32(2.0f*real);
    return (exp_2x - 1.0f)/(exp_2x + 1.0f);
}
real64_t tanh64(real64_t real)
{
    real64_t exp_2x = exp64(2.0*real);
    return (exp_2x - 1.0)/(exp_2x + 1.0);
}
inline real32_t sec32h(real32_t real)
{
    return 1.0f/cosh32(real);
}
inline real64_t sec64h(real64_t real)
{
    return 1.0/cosh64(real);
}
inline real32_t csc32h(real32_t real)
{
    return 1.0f/sinh32(real);
}
inline real64_t csc64h(real64_t real)
{
    return 1.0/sinh64(real);
}
real32_t cot32h(real32_t real)
{
    real32_t exp_2x = exp32(2.0f*real);
    return (exp_2x + 1.0f)/(exp_2x - 1.0f);
}
real64_t cot64h(real64_t real)
{
    real64_t exp_2x = exp64(2.0*real);
    return (exp_2x + 1.0)/(exp_2x - 1.0);
}
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

/*
//* Lambert W Function:     W(x)e^W(x) = x
    (-Inf <= W<-1> < -1)    ==>  (-1/e <= x < 0)
    (-1   <= W<0>  < +Inf)  ==>  (-1/e <= x < +Inf)

//* Branch Point Serie (W<0>, W<-1>)
    w<0>:
        p = sqrt(2*(e*x + 1))
    w<-1>:
        p = -sqrt(2*(e*x + 1))

    W<0, -1> = -1 + p - (1/3)*p^2 + (11/72)*p^3 - (43/540)*p^4 + (769/17280)*p^5 - (221/8505)*p^6 ...

Approximation when ~ 0 < x <= e:

    W<0> = x*(3 + 4*x)/(3 + 7*x + (5/2)*x^2);

Approximation when ~ e << x:
    lnx = ln(x)
    
    W<0> = lnx - 24*(lnx^2 + 2*lnx - 3)/(7*lnx^2 + 58*lnx + 127)

//* Asymptotic Aproximation
    W<0>:
        L1 = ln(x), L2 = ln(ln(x))
    W<-1>:
        L1 = ln(-x), L2 = ln(-ln(-x))

    W<0, -1> = L1 - L2 + L2/L1 + (-2*L2 + L2^2)/(2*L1^2) + (6*L2 - 9*L2^2 + 2*L2^3)/(6*L1^3) + (-12*L2 + 36*L2^2 - 22*L2^3 + 3*L2^4)/(12*L1^4) ...

//* Root Finding Methods:
    Wn1 = W<0, -1>n+1, Wn = W<0, -1>n

//* Fritsch-Shafer-Crowley method:
    x != 0
    zn = ln(x/Wn) - Wn, qn = 2*(Wn + 1)*(Wn + 1 + (2/3)*zn);
    epsn = (zn/(Wn + 1))*((qn - zn)/(qn - 2*zn))

    Wn1 = Wn*(1 + epsn)

//* Newton method: Shroder 2nd order:
    Wn1 = Wn - (Wn - x*e^(-Wn))/(Wn + 1)

//* Halley method: Shroder 3rd order:
    y = Wn - x*e^(-Wn)

    Wn1 = Wn - (Wn - x*e^(-Wn))/(Wn + 1 - (Wn + 1)*y/(2*(Wn + 1)))

//* Shroder 5th order method:
    y = x*exp(-Wn), f0 = Wn - y, f1 = 1 + y, f00 = f0*f0, f11 = f1*f1, f0y = f0*y;
    Wn1 = Wn - 4*f0*(6*f1*(f11 + f0y) + f00*y)/(f11*(24*f11 + 36*f0y) + f00*(6*y*y + 8*f1*y + f0y));
*/

//* Branch Point Serie Coefficients
#define bps32_c2    3.33333333333333333333E-1f  //* 1/3
#define bps32_c3    1.52777777777777777778E-1f  //* 11/72
#define bps32_c4    7.96296296296296296296E-2f  //* 43/540
#define bps32_c5    4.45023148148148148148E-2f  //* 769/17280
#define bps32_c6    2.59847148736037624927E-2f  //* 221/8505
#define bps32_c7    1.56356325323339212228E-2f  //* 680863/43545600
#define bps32_c8    9.61689202429943170684E-3f  //* 1963/204120
#define bps32_c9    6.01454325295611786095E-3f  //* 226287557/37623398400
#define bps32_c10   3.81129803489199922670E-3f  //* 5776369/1515591000

#define bps64_c2    3.33333333333333333333E-1   //* 1/3
#define bps64_c3    1.52777777777777777778E-1   //* 11/72
#define bps64_c4    7.96296296296296296296E-2   //* 43/540
#define bps64_c5    4.45023148148148148148E-2   //* 769/17280
#define bps64_c6    2.59847148736037624927E-2   //* 221/8505
#define bps64_c7    1.56356325323339212228E-2   //* 680863/43545600
#define bps64_c8    9.61689202429943170684E-3   //* 1963/204120
#define bps64_c9    6.01454325295611786095E-3   //* 226287557/37623398400
#define bps64_c10   3.81129803489199922670E-3   //* 5776369/1515591000

real32_t lambertw0_32(real32_t real)    //* lambertw0(x)*exp(lambertw0(x)) = x; -0.3678794 <= x < inf
{
    real32_t w, p, p2, a, b, lnx, lnx_2, y, f0, f1, f00, f11, f0y;
    if (real == -R32_1_E)
    {
        return -1.0f;
    }
    else
    if (real < 0.0f)
    {
        p = sqrtf(2.0f*(R32_E*real + 1.0f)), p2 = p*p;
        w = -1.0f + p - bps32_c2*p2 + bps32_c3*p*p2;
    }
    else
    if (real == 0.0f)
    {
        return 0.0f;
    }
    else
    if (real < R32_E)
    // if (real < 20.0f)   //? faster but, real < ?
    {
        w = real*(3.0f + 4.0f*real)/(3.0f + real*(7.0f + 2.5f*real));
    }
    else
    {
        lnx = logf(real), lnx_2 = lnx*lnx;
        w = lnx - 24.0f*(lnx_2 + 2.0f*lnx - 3.0f)/(7.0f*lnx_2 + 58.0f*lnx + 127.0f);
    }

    //* Shroder 5th order method
    y = real*expf(-w), f0 = w - y, f1 = 1.0f + y, f00 = f0*f0, f11 = f1*f1, f0y = f0*y;
    w -= 4.0f*f0*(6.0f*f1*(f11 + f0y) + f00*y)/(f11*(24.0f*f11 + 36.0f*f0y) + f00*(6.0f*y*y + 8.0f*f1*y + f0y));

    //* Fritsch method
    p = w + 1.0f, a = logf(real/w) - w, b = 6.0f*p*(p + 2.0f*a);
    return w + w*a*(b - 3.0f*a)/(p*(b - 6.0f*a));
}
real64_t lambertw0_64(real64_t real)   //* lambertw0(x)*e^(lambertw0(x)) = x; -0.3678794411714423 <= x < inf
{
    real64_t w, p, p2, p4, p8, a, a2, a4, b, b2, b4, lnx, lnx_2, y, f0, f1, f00, f11, f0y;
    if (real == -R64_1_E)
    {
        return -1.0;
    }
    else
    if (real < 0.0)
    {
        p = sqrt(2.0*(R64_E*real + 1.0)), p2 = p*p, p4 = p2*p2, p8 = p4*p4;
        w = -1.0 + p - bps64_c2*p2 + bps64_c3*p*p2 - bps64_c4*p4 + bps64_c5*p*p4 - bps64_c6*p2*p4 + bps64_c7*p*p2*p4 - bps64_c8*p8 + bps64_c9*p*p8 - bps64_c10*p2*p8;
    }
    else
    if (real == 0.0)
    {
        return 0.0;
    }
    else
    if (real < R64_E)
    {
        w = real*(3.0 + 4.0*real)/(3.0 + real*(7.0 + 2.5*real));
    }
    else
    if (real <= 21100.0)
    {
        lnx = log(real), lnx_2 = lnx*lnx;
        w = lnx - 24.0*(lnx_2 + 2.0*lnx - 3.0)/(7.0*lnx_2 + 58.0*lnx + 127.0);
    }
    else
    {
        //* Asymptotic Aproximation
        a = log(real), b = log(a);
        a2 = a*a, a4 = a2*a2, b2 = b*b, b4 = b2*b2;
        w = a - b + b/a + (-2.0*b + b2)/(2.0*a2) + (6.0*b - 9.0*b2 + 2.0*b*b2)/(6.0*a2*a);
        w += (-12.0*b + 36.0*b2 - 22.0*b*b2 + 3.0*b4)/(12.0*a4);
    }

    //* Shroder 5th order method
    y = real*exp(-w), f0 = w - y, f1 = 1.0 + y, f00 = f0*f0, f11 = f1*f1, f0y = f0*y;
    w -= 4.0*f0*(6.0*f1*(f11 + f0y) + f00*y)/(f11*(24.0*f11 + 36.0*f0y) + f00*(6.0*y*y + 8.0*f1*y + f0y));
    y = real*exp(-w), f0 = w - y, f1 = 1.0 + y, f00 = f0*f0, f11 = f1*f1, f0y = f0*y;
    return w - 4.0*f0*(6.0*f1*(f11 + f0y) + f00*y)/(f11*(24.0*f11 + 36.0*f0y) + f00*(6.0*y*y + 8.0*f1*y + f0y));
}
real32_t lambertwm1_32(real32_t real)              //* w<-1>(x)*e^(w<-1>(x)) = x; -0.3678794411714423 <= x < 0
{
    real32_t w, p, p2, p4, a, b, y, f0, f1, f00, f11, f0y, w_1;
    if (real == -R32_1_E)
    {
        return -1.0f;
    }
    else
    if (real <= -0.05f)
    {
        p = -sqrt32(2.0f*(R32_E*real + 1.0f)), p2 = p*p, p4 = p2*p2;
        w = -1.0f + p - bps32_c2*p2 + bps32_c3*p*p2 - bps32_c4*p4;
    }
    else
    {
        //* Asymptotic Aproximation
        a = logf(-real);
        w = a - logf(-a);
    }

    //* Shroder 5th order method
    y = real*expf(-w), f0 = w - y, f1 = 1.0f + y, f00 = f0*f0, f11 = f1*f1, f0y = f0*y;
    w += -4.0f*f0*(6.0f*f1*(f11 + f0y) + f00*y)/(f11*(24.0f*f11 + 36.0f*f0y) + f00*(6.0f*y*y + 8.0f*f1*y + f0y));

    //* Fritsch method
    w_1 = w + 1.0f, a = logf(real/w) - w, b = 6.0f*w_1*(w_1 + 2.0f*a);
    return w + w*a*(b - 3.0f*a)/(w_1*(b - 6.0f*a));
}
real64_t lambertwm1_64(real64_t real)              //* w<-1>(x)*e^(w<-1>(x)) = x; -0.3678794411714423 <= x < 0
{
    real64_t w, p, p2, p4, p8, a, a2, a4, b, b2, b4, y, f0, f1, f00, f11, f0y, w_1;
    if (real == -R64_1_E)
    {
        return -1.0;
    }
    else
    if (real <= -0.072994300060009)
    {
        p = -sqrt(2.0*(R64_E*real + 1.0)), p2 = p*p, p4 = p2*p2, p8 = p4*p4;
        w = -1.0 + p - bps64_c2*p2 + bps64_c3*p*p2 - bps64_c4*p4 + bps64_c5*p*p4 - bps64_c6*p2*p4 + bps64_c7*p*p2*p4 - bps64_c8*p8 + bps64_c9*p*p8 - bps64_c10*p2*p8;
    }
    else
    {
        //* Asymptotic Aproximation
        a = log(-real), b = log(-a);
        a2 = a*a, a4 = a2*a2, b2 = b*b, b4 = b2*b2;
        w = a - b + b/a + (-2.0*b + b2)/(2.0*a2) + (6.0*b - 9.0*b2 + 2.0*b*b2)/(6.0*a2*a);
        w += (-12.0*b + 36.0*b2 - 22.0*b*b2 + 3.0*b4)/(12.0*a4);
    }

    //* Shroder 5th order method
    y = real*exp(-w), f0 = w - y, f1 = 1.0 + y, f00 = f0*f0, f11 = f1*f1, f0y = f0*y;
    w += -4.0*f0*(6.0*f1*(f11 + f0y) + f00*y)/(f11*(24.0*f11 + 36.0*f0y) + f00*(6.0*y*y + 8.0*f1*y + f0y));

    //* Fritsch method
    w_1 = w + 1.0, a = log(real/w) - w, b = 6.0*w_1*(w_1 + 2.0*a);
    return w + w*a*(b - 3.0*a)/(w_1*(b - 6.0*a));
}

real32_t gamma32(real32_t real);                      //* gamma(x) = facto(x); (real32)
real64_t gamma64(real64_t real);                      //* gamma(x) = facto(x); (real64)

//****************************************************************************************************************************************************************
//* Complex Functions

//****************************************************************************************************************************************************************
//* Algorithms
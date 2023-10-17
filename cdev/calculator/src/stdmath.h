#ifndef   STDMATH_H_INCLUDED
#define   STDMATH_H_INCLUDED

#include <stdmoh.h>
#include <stderr.h>
#include "bignum.h"


//****************************************************************************************************************************************************************
//* Number Conversion

//****************************************************************************************************************************************************************
//* Integer Functions

bigint_t  biabs(bigint_t bigint);
bigint_t  bisign(bigint_t bigint);
biguint_t bifacto(biguint_t bigint);                        //* Factorial
biguint_t bigcd(biguint_t bigint0, biguint_t bigint1);      //* Greatest Common Divador (PGCD); bigint0 >= bigint1
biguint_t bilcm(biguint_t bigint0, biguint_t bigint1);      //* Lowest Common Multiplier (PPCM); bigint0 >= bigint1
bool_t    biisprime(biguint_t bigint);
biguint_t bifgp(biguint_t bigint);                          //* Find Greatest Prime; bigint >= 2
biguint_t binpk(biguint_t n, biguint_t k);                  //* n Permutation k
biguint_t binck(biguint_t n, biguint_t k);                  //* n Combination k
//? factor //to primes
//? ilog, ipow

//****************************************************************************************************************************************************************
//* Real Functions

bigreal_t babs(bigreal_t bigreal);
bigreal_t bsign(bigreal_t bigreal);
bigreal_t bfloor(bigreal_t bigreal);
bigreal_t bceil(bigreal_t bigreal);
bigreal_t bfrac(bigreal_t bigreal);                         //* Fraction Part of Real;
bigreal_t bround(bigreal_t bigreal);
bigreal_t bmod(bigreal_t bigreal, bigreal_t mod);
bigreal_t bmmod(bigreal_t bigreal, bigreal_t mod);          //* x = k*m - mod, mmod = -mod;
bigreal_t bsqrt(bigreal_t bigreal);
bigreal_t brsqrt(bigreal_t bigreal);                        //* Reciprocal Square Root;
bigreal_t bexp(bigreal_t bigreal);
bigreal_t bln(bigreal_t bigreal);
bigreal_t bpow(bigreal_t base, bigreal_t exp);
//? pow2, pow10, log2, log10, floor, ceil, round, integer, frac
bigreal_t blog(bigreal_t base, bigreal_t bigreal);
bigreal_t bsin(bigreal_t bigreal);
bigreal_t bcos(bigreal_t bigreal);
bigreal_t btan(bigreal_t bigreal);
bigreal_t bsec(bigreal_t bigreal);
bigreal_t bcsc(bigreal_t bigreal);
bigreal_t bcot(bigreal_t bigreal);
bigreal_t bcosh(bigreal_t bigreal);
bigreal_t bsinh(bigreal_t bigreal);
bigreal_t btanh(bigreal_t bigreal);
bigreal_t bsech(bigreal_t bigreal);
bigreal_t bcsch(bigreal_t bigreal);
bigreal_t bcoth(bigreal_t bigreal);
bigreal_t basin(bigreal_t bigreal);
bigreal_t bacos(bigreal_t bigreal);
bigreal_t batan(bigreal_t bigreal);
bigreal_t basec(bigreal_t bigreal);
bigreal_t bacsc(bigreal_t bigreal);
bigreal_t bacot(bigreal_t bigreal);
bigreal_t bacosh(bigreal_t bigreal);
bigreal_t basinh(bigreal_t bigreal);
bigreal_t batanh(bigreal_t bigreal);
bigreal_t basech(bigreal_t bigreal);
bigreal_t bacsch(bigreal_t bigreal);
bigreal_t bacoth(bigreal_t bigreal);
bigreal_t blambertw0_(bigreal_t bigreal);               //* lambertw0(x)*e^(lambertw0(x)) = x,   -0.3678794411714423 <= x < inf;
bigreal_t blambertwm1_(bigreal_t bigreal);              //* lambertwm1(x)*e^(lambertwm1(x))
bigreal_t bgamma(bigreal_t bigreal);                    //* gamma(x) = Factorial(x);

//****************************************************************************************************************************************************************
//* Complex Functions
// ln(z, k);            //! ln(-x) = ln(x) + i*pi { x > 0; x € R }, ln(z) = ln(r*e^(i*teta)) = ln(r) + i*teta { z = a + i*b; r = |z| = sqrt(a^2 + b^2); teta = arg(z)}
//                      //* ln(-x, k) = ln(x) + i*(pi + 2*k*pi) { x > 0; x € R }, ln(z) = ln(r*e^(i*teta)) = ln(r) + i*(teta + 2*k*pi) { z = a + i*b; r = |z| = sqrt(a^2 + b^2); teta = arg(z)}
// lambert_w(z, k);     //* lambert_w(z, k)*exp(lambert_w(z, k)) = z; k = branch

//****************************************************************************************************************************************************************
//* Quaternions Functions

//! ****************************************************************************************************************************************************************
//! * Vectors Functions

//! ****************************************************************************************************************************************************************
//! * Matrices Functions


#endif // STDMATH_H_INCLUDED
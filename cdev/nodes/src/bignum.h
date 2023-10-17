#ifndef   BIGNUM_H_INCLUDED
#define   BIGNUM_H_INCLUDED

#include "stdmath.h"

//****************************************
//* Bignum
#define BIGUINT_ZEROINIT    { 0L, 0L, 0L, 0L, 0L, 0L }
// #define BIGREAL_ZEROINIT    //!{ 0L, 0L, 0L, 0L, 0L, 0L }

typedef uint64_t biguint_t[6];
typedef uint64_t bigint_t[6];
typedef uint64_t bigreal_t[6];
typedef struct bigcomplex_t
{
    bigreal_t real;
    bigreal_t imag;
} bigcomplex_t;

//****************************************
//* VBignum     (Variable Big Numbers)
// typedef uint64_t* vbiguint_t;
// typedef uint64_t* vbigint_t;
// typedef uint64_t* vbigreal_t;
// typedef struct vbigcomplex_t
// {
//     vbigreal_t real;
//     vbigreal_t imag;
// } vbigcomplex_t;

// ****************************************************************************************************************************************************************
// * BigUInt Functions

void biguint_zeroinit(biguint_t big);
void biguint_maxinit(biguint_t big);
void biguint_set(biguint_t dest, biguint_t src);
//**********
void biguint_not(biguint_t not, biguint_t big);
void biguint_bar(biguint_t bar, biguint_t big);
void biguint_or(biguint_t or, biguint_t big1, biguint_t big2);
void biguint_and(biguint_t and, biguint_t big1, biguint_t big2);
void biguint_xor(biguint_t xor, biguint_t big1, biguint_t big2);
void biguint_rshift(biguint_t rshift, int64_t length, biguint_t big);
void biguint_lshift(biguint_t lshift, int64_t length, biguint_t big);
void biguint_rrol(biguint_t rrol, int64_t length, biguint_t big);       //!
void biguint_lrol(biguint_t lrol, int64_t length, biguint_t big);       //!
//**********
bool_t biguint_eq(biguint_t big1, biguint_t big2);
bool_t biguint_neq(biguint_t big1, biguint_t big2);
bool_t biguint_gt(biguint_t big1, biguint_t big2);
bool_t biguint_gteq(biguint_t big1, biguint_t big2);
bool_t biguint_lt(biguint_t big1, biguint_t big2);
bool_t biguint_lteq(biguint_t big1, biguint_t big2);
//**********
void biguint_inc(biguint_t big);
void biguint_dec(biguint_t big);
void biguint_add(biguint_t sum, biguint_t big1, biguint_t big2);
void biguint_sub(biguint_t dif, biguint_t big1, biguint_t big2);
void biguint_mul(biguint_t prod, biguint_t big1, biguint_t big2);
void biguint_div(biguint_t quot, biguint_t big1, biguint_t big2);
void biguint_mod(biguint_t rem, biguint_t big1, biguint_t big2);
//**********
void biguint_puthex(biguint_t big);
void biguint_putdec(biguint_t big);

// ****************************************************************************************************************************************************************
// * BigInt Functions

// ****************************************************************************************************************************************************************
// * BigReal Functions

// ****************************************************************************************************************************************************************
// * BigComplex Functions

//****************************************************************************************************************************************************************
//*  BigQuaternions Functions

// ****************************************************************************************************************************************************************
// * VBigUInt Functions

// ****************************************************************************************************************************************************************
// * VBigInt Functions

// ****************************************************************************************************************************************************************
// * VBigReal Functions

// ****************************************************************************************************************************************************************
// * VBigComplex Functions

//****************************************************************************************************************************************************************
//*  VBigQuaternions Functions

#endif // BIGNUM_H_INCLUDED
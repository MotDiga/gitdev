#ifndef   BIGNUM_H_INCLUDED
#define   BIGNUM_H_INCLUDED

#include <stdmoh.h>
#include <stderr.h>


typedef union biguint64_t
{
    struct
    {
        uint32_t ui0, ui1;
    };
    uint32_t ui32[2];
    uint64_t ui;
} biguint64_t;

typedef union biguint384_t
{
    struct
    {
        uint64_t ui0, ui1, ui2, ui3, ui4, ui5;
    };
    uint64_t ui64[6];
    struct
    {
        uint32_t ui00, ui01, ui10, ui11, ui20, ui21;
        uint32_t ui30, ui31, ui40, ui41, ui50, ui51;
    };
    uint32_t ui32[12];
} biguint_t;
typedef union bigint384_t
{
    struct
    {
        uint64_t ui0, ui1, ui2, ui3, ui4, ui5;
    };
    uint64_t ui64[6];
} bigint_t;
typedef union bigreal384_t
{
    struct
    {
        uint64_t ui0, ui1, ui2, ui3, ui4, ui5;
    };
    uint64_t ui64[6];
} bigreal_t;
typedef union bigcomplex384_t
{
    struct
    {
        bigreal_t real;
        bigreal_t imag;
    };
    struct
    {
        bigreal_t r;
        bigreal_t i;
    };
} bigcomplex_t;
typedef union bigquaternion384_t
{
    struct
    {
        bigreal_t hamr;
        bigreal_t hami;
        bigreal_t hamj;
        bigreal_t hamk;
    };
    struct
    {
        bigreal_t r;
        bigreal_t i;
        bigreal_t j;
        bigreal_t k;
    };
} bigquaternion_t;

#define UINT_MAX            0xFFFFFFFFFFFFFFFFUL
#define INT_MAX             0x7FFFFFFFFFFFFFFFUL
#define INT_MIN             0x8000000000000000UL

#define BIGUINT_INIT(ui0, ui1, ui2, ui3, ui4, ui5)  { { ui0, ui1, ui2, ui3, ui4, ui5 } }
#define BIGUINT_ZEROINIT               { { 0UL, 0UL, 0UL, 0UL, 0UL, 0UL } }

#define BIGUINT_MAXINIT                { { UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX } }
#define BIGUINT_ZERO        (biguint_t){ { 0UL, 0UL, 0UL, 0UL, 0UL, 0UL } }
#define BIGUINT_MAX         (biguint_t){ { UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX } }
#define BIGUINT_SET(ui0, ui1, ui2, ui3, ui4, ui5)   (biguint_t){ { ui0, ui1, ui2, ui3, ui4, ui5 } }

#define BIGINT_MAXINIT                { { INT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX } }
#define BIGINT_MININIT                { { INT_MIN, 0UL, 0UL, 0UL, 0UL, 0UL } }
#define BIGINT_ZERO         (bigint_t){ { 0UL, 0UL, 0UL, 0UL, 0UL, 0UL } }
#define BIGINT_MAX          (bigint_t){ { INT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX } }
#define BIGINT_MIN          (bigint_t){ { INT_MIN, 0UL, 0UL, 0UL, 0UL, 0UL } }
#define BIGINT_SET(ui0, ui1, ui2, ui3, ui4, ui5)    (bigint_t){ { ui0, ui1, ui2, ui3, ui4, ui5 } }

#define BIGREAL_INIT(ui0, ui1, ui2, ui3, ui4, ui5)  { { ui0, ui1, ui2, ui3, ui4, ui5 } }
//! #define BIGREAL_ZEROINIT                            (bigreal_t){ { ?, ?, ?, ?, ?, ? } }
//! #define BIGREAL_ZERO                                (bigreal_t){ { ?, ?, ?, ?, ?, ? } }
//! #define BIGREAL_MAX                                 (bigreal_t){ { ?, ?, ?, ?, ?, ? } }
//! #define BIGREAL_MIN                                 (bigreal_t){ { ?, ?, ?, ?, ?, ? } }
#define BIGREAL_SET(ui0, ui1, ui2, ui3, ui4, ui5)   (bigreal_t){ { ui0, ui1, ui2, ui3, ui4, ui5 } }

#define BIGCOMPLEX_INIT(biguint0, biguint1)     { { biguint0, biguint1 } }
#define BIGCOMPLEX_ZEROINIT()                   { { BIGREAL_ZEROINIT, BIGREAL_ZEROINIT } }
#define BIGCOMPLEX_ZERO                         (bigcomplex_t){ BIGREAL_ZEROINIT, BIGREAL_ZEROINIT }
#define BIGCOMPLEX_SET(biguint0, biguint1)      (bigcomplex_t){ { biguint0, biguint1 } }
//? #define BIGCOMPLEX_MIN,MAX ?

#define BIGQUATERNION_ZERO  (bigquaternion_t){ BIGREAL_ZEROINIT, BIGREAL_ZEROINIT, BIGREAL_ZEROINIT, BIGREAL_ZEROINIT }
//? #define BIGQUATERNION_MIN,MAX ?


//TODO: Add const to big numbers
//TODO: Add restrict to respective pionters
//****************************************************************************************************************************************************************
//* BigUInt Functions
biguint_t* biguint_set(biguint_t *dest, biguint_t *src);
//**********
biguint_t* biguint_not(biguint_t *not, biguint_t *big);
biguint_t* biguint_bar(biguint_t *bar, biguint_t *big);
biguint_t* biguint_neg(biguint_t *neg, biguint_t *big);
biguint_t* biguint_or(biguint_t *or, biguint_t *big1, biguint_t *big2);
biguint_t* biguint_and(biguint_t *and, biguint_t *big1, biguint_t *big2);
biguint_t* biguint_xor(biguint_t *xor, biguint_t *big1, biguint_t *big2);
biguint_t* biguint_rsh(biguint_t *rsh, int64_t length, biguint_t *big);
biguint_t* biguint_lsh(biguint_t *lsh, int64_t length, biguint_t *big);
biguint_t* biguint_rrot(biguint_t *rrot, int64_t length, biguint_t *big);
biguint_t* biguint_lrot(biguint_t *lrot, int64_t length, biguint_t *big);
biguint_t* biguint_rev(biguint_t *rev, biguint_t *big);
biguint_t* biguint_setnot(biguint_t *big);
biguint_t* biguint_setbar(biguint_t *big);
biguint_t* biguint_setneg(biguint_t *big);
biguint_t* biguint_setor(biguint_t *big1, biguint_t *big2);
biguint_t* biguint_setand(biguint_t *big1, biguint_t *big2);
biguint_t* biguint_setxor(biguint_t *big1, biguint_t *big2);
biguint_t* biguint_setrsh(biguint_t *big, int64_t length);
biguint_t* biguint_setlsh(biguint_t *big, int64_t length);
biguint_t* biguint_setrrot(biguint_t *big, int64_t length);
biguint_t* biguint_setlrot(biguint_t *big, int64_t length);
biguint_t* biguint_setrev(biguint_t *big);
//**********
bool_t biguint_eq(biguint_t *big1, biguint_t *big2);
bool_t biguint_neq(biguint_t *big1, biguint_t *big2);
bool_t biguint_gt(biguint_t *big1, biguint_t *big2);
bool_t biguint_gteq(biguint_t *big1, biguint_t *big2);
bool_t biguint_lt(biguint_t *big1, biguint_t *big2);
bool_t biguint_lteq(biguint_t *big1, biguint_t *big2);
//**********
biguint_t* biguint_inc(biguint_t *big);
biguint_t* biguint_add(biguint_t *sum, biguint_t *big1, biguint_t *big2);
biguint_t* biguint_dec(biguint_t *big);
biguint_t* biguint_sub(biguint_t *dif, biguint_t *big1, biguint_t *big2);
biguint_t* biguint_mul(biguint_t *prod, biguint_t *big1, biguint_t *big2);
biguint_t* biguint_div(biguint_t *quot, biguint_t *big1, biguint_t *big2);
biguint_t* biguint_mod(biguint_t *rem, biguint_t *big1, biguint_t *big2);
//**********
void biguint_puthex(biguint_t *big);
void biguint_putsephex64(biguint_t *big);
void biguint_putdec(biguint_t *big);


//****************************************************************************************************************************************************************
//* BigInt Functions

//****************************************************************************************************************************************************************
//* BigReal Functions

//****************************************************************************************************************************************************************
//* BigComplex Functions

//****************************************************************************************************************************************************************
//* BigQuaternion Functions


#endif // BIGNUM_H_INCLUDED
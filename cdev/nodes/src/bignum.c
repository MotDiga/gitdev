#include "bignum.h"

void biguint_zeroinit(biguint_t big)
{
    big[0] = big[1] = big[2] = big[3] = big[4] = big[5] = 0UL;
}
void biguint_maxinit(biguint_t big)
{
    big[0] = big[1] = big[2] = big[3] = big[4] = big[5] = 0xFFFFFFFFFFFFFFFFUL;
}
void biguint_set(biguint_t dest, biguint_t src)
{
    dest[0] = src[0],
    dest[1] = src[1],
    dest[2] = src[2],
    dest[3] = src[3],
    dest[4] = src[4],
    dest[5] = src[5];
}

//**********
void biguint_not(biguint_t not, biguint_t big)
{
    not[0] = ~big[0],
    not[1] = ~big[1],
    not[2] = ~big[2],
    not[3] = ~big[3],
    not[4] = ~big[4],
    not[5] = ~big[5];
}
void biguint_bar(biguint_t bar, biguint_t big)
{
    bar[0] = bar[1] = bar[2] = bar[3] = bar[4] = 0UL;
    bar[5] = !big[0] & !big[1] & !big[2] & !big[3] & !big[4] & !big[5];
}
void biguint_or(biguint_t or, biguint_t big1, biguint_t big2)
{
    or[0] = big1[0] | big2[0],
    or[1] = big1[1] | big2[1],
    or[2] = big1[2] | big2[2],
    or[3] = big1[3] | big2[3],
    or[4] = big1[4] | big2[4],
    or[5] = big1[5] | big2[5];
}
void biguint_and(biguint_t and, biguint_t big1, biguint_t big2)
{
    and[0] = big1[0] & big2[0],
    and[1] = big1[1] & big2[1],
    and[2] = big1[2] & big2[2],
    and[3] = big1[3] & big2[3],
    and[4] = big1[4] & big2[4],
    and[5] = big1[5] & big2[5];
}
void biguint_xor(biguint_t xor, biguint_t big1, biguint_t big2)
{
    xor[0] = big1[0] ^ big2[0],
    xor[1] = big1[1] ^ big2[1],
    xor[2] = big1[2] ^ big2[2],
    xor[3] = big1[3] ^ big2[3],
    xor[4] = big1[4] ^ big2[4],
    xor[5] = big1[5] ^ big2[5];
}
// #define BIGUINT_UINT64RSHIFT(bigi, length, bits) (!!((length >= bits) && (length < (bits+64L)))*(bigi >> (length-bits)) + !!((length > (bits-64L)) && (length < bits))*(bigi << (bits-length)))
#define BIGUINT_UINT64RSHIFT(bigi, length, bits) (!((length < bits) || (length >= (bits+64L)))*(bigi >> (length-bits)) + !((length <= (bits-64L)) || (length >= bits))*(bigi << (bits-length)))
#define BIGRSHIFT(big, len, bits)                BIGUINT_UINT64RSHIFT(big, len, bits)
void biguint_rshift(biguint_t rshift, int64_t length, biguint_t big)
{
    rshift[0] = BIGRSHIFT(big[0], length, 0L);
    rshift[1] = BIGRSHIFT(big[1], length, 0L) | BIGRSHIFT(big[0], length, 64L);
    rshift[2] = BIGRSHIFT(big[2], length, 0L) | BIGRSHIFT(big[1], length, 64L) | BIGRSHIFT(big[0], length, 128L);
    rshift[3] = BIGRSHIFT(big[3], length, 0L) | BIGRSHIFT(big[2], length, 64L) | BIGRSHIFT(big[1], length, 128L) | BIGRSHIFT(big[0], length, 192L);
    rshift[4] = BIGRSHIFT(big[4], length, 0L) | BIGRSHIFT(big[3], length, 64L) | BIGRSHIFT(big[2], length, 128L) | BIGRSHIFT(big[1], length, 192L) | BIGRSHIFT(big[0], length, 256L);
    rshift[5] = BIGRSHIFT(big[5], length, 0L) | BIGRSHIFT(big[4], length, 64L) | BIGRSHIFT(big[3], length, 128L) | BIGRSHIFT(big[2], length, 192L) | BIGRSHIFT(big[1], length, 256L)
        | BIGRSHIFT(big[0], length, 320L);
}
// #define BIGUINT_UINT64LSHIFT(bigi, length, bits) (!!((length >= bits) && (length < (bits+64L)))*(bigi << (length-bits)) + !!((length > (bits-64L)) && (length < bits))*(bigi >> (bits-length)))
#define BIGUINT_UINT64LSHIFT(bigi, length, bits) (!((length < bits) || (length >= (bits+64L)))*(bigi << (length-bits)) + !((length <= (bits-64L)) || (length >= bits))*(bigi >> (bits-length)))
#define BIGLSHIFT(big, len, bits)                BIGUINT_UINT64LSHIFT(big, len, bits)
void biguint_lshift(biguint_t lshift, int64_t length, biguint_t big)
{
    lshift[5] = BIGLSHIFT(big[5], length, 0L);
    lshift[4] = BIGLSHIFT(big[4], length, 0L) | BIGLSHIFT(big[5], length, 64L);
    lshift[3] = BIGLSHIFT(big[3], length, 0L) | BIGLSHIFT(big[4], length, 64L) | BIGLSHIFT(big[5], length, 128L);
    lshift[2] = BIGLSHIFT(big[2], length, 0L) | BIGLSHIFT(big[3], length, 64L) | BIGLSHIFT(big[4], length, 128L) | BIGLSHIFT(big[5], length, 192L);
    lshift[1] = BIGLSHIFT(big[1], length, 0L) | BIGLSHIFT(big[2], length, 64L) | BIGLSHIFT(big[3], length, 128L) | BIGLSHIFT(big[4], length, 192L) | BIGLSHIFT(big[5], length, 256L);
    lshift[0] = BIGLSHIFT(big[0], length, 0L) | BIGLSHIFT(big[1], length, 64L) | BIGLSHIFT(big[2], length, 128L) | BIGLSHIFT(big[3], length, 192L) | BIGLSHIFT(big[4], length, 256L)
        | BIGLSHIFT(big[5], length, 320L);
}
void biguint_rrol(biguint_t rrol, int64_t length, biguint_t big);       //!
void biguint_lrol(biguint_t lrol, int64_t length, biguint_t big);       //!

//**********
inline bool_t biguint_eq(biguint_t big1, biguint_t big2)
{
    return (big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] == big2[2]) && (big1[3] == big2[3]) && (big1[4] == big2[4]) && (big1[5] == big2[5]);
}
inline bool_t biguint_neq(biguint_t big1, biguint_t big2)
{
    return (big1[0] != big2[0]) || (big1[1] != big2[1]) || (big1[2] != big2[2]) || (big1[3] != big2[3]) || (big1[4] != big2[4]) || (big1[5] != big2[5]);
}
bool_t biguint_gt(biguint_t big1, biguint_t big2)
{
    return (big1[0] > big2[0]) ||
           ((big1[0] == big2[0]) && (big1[1] > big2[1])) ||
           ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] > big2[2])) ||
           ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] == big2[2]) && (big1[3] > big2[3])) ||
           ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] == big2[2]) && (big1[3] == big2[3]) && (big1[4] > big2[4])) ||
           ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] == big2[2]) && (big1[3] == big2[3]) && (big1[4] == big2[4]) && (big1[5] > big2[5]));
}
bool_t biguint_gteq(biguint_t big1, biguint_t big2)
{
    return (big1[0] > big2[0]) ||
          ((big1[0] == big2[0]) && (big1[1] > big2[1])) ||
          ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] > big2[2])) ||
          ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] == big2[2]) && (big1[3] > big2[3])) ||
          ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] == big2[2]) && (big1[3] == big2[3]) && (big1[4] > big2[4])) ||
          ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] == big2[2]) && (big1[3] == big2[3]) && (big1[4] == big2[4]) && (big1[5] > big2[5])) ||
          ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] == big2[2]) && (big1[3] == big2[3]) && (big1[4] == big2[4]) && (big1[5] == big2[5]));
}
bool_t biguint_lt(biguint_t big1, biguint_t big2)
{
    return (big1[0] < big2[0]) ||
          ((big1[0] == big2[0]) && (big1[1] < big2[1])) ||
          ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] < big2[2])) ||
          ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] == big2[2]) && (big1[3] < big2[3])) ||
          ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] == big2[2]) && (big1[3] == big2[3]) && (big1[4] < big2[4])) ||
          ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] == big2[2]) && (big1[3] == big2[3]) && (big1[4] == big2[4]) && (big1[5] < big2[5]));
}
bool_t biguint_lteq(biguint_t big1, biguint_t big2)
{
    return (big1[0] < big2[0]) ||
          ((big1[0] == big2[0]) && (big1[1] < big2[1])) ||
          ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] < big2[2])) ||
          ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] == big2[2]) && (big1[3] < big2[3])) ||
          ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] == big2[2]) && (big1[3] == big2[3]) && (big1[4] < big2[4])) ||
          ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] == big2[2]) && (big1[3] == big2[3]) && (big1[4] == big2[4]) && (big1[5] < big2[5])) ||
          ((big1[0] == big2[0]) && (big1[1] == big2[1]) && (big1[2] == big2[2]) && (big1[3] == big2[3]) && (big1[4] == big2[4]) && (big1[5] == big2[5]));
}

//**********
void biguint_inc(biguint_t big)
{
    big[0]++;
    big[1] += !big[0];
    big[2] += !big[0] & !big[1];
    big[3] += !big[0] & !big[1] & !big[2];
    big[4] += !big[0] & !big[1] & !big[2] & !big[3];
    big[5] += !big[0] & !big[1] & !big[2] & !big[3] & !big[4];
}
void biguint_dec(biguint_t big)
{
    big[0]--;
    big[1] -= !(~big[0]);
    big[2] -= !(~big[0]) & !(~big[1]);
    big[3] -= !(~big[0]) & !(~big[1]) & !(~big[2]);
    big[4] -= !(~big[0]) & !(~big[1]) & !(~big[2]) & !(~big[3]);
    big[5] -= !(~big[0]) & !(~big[1]) & !(~big[2]) & !(~big[3]) & !(~big[4]);
}
void biguint_add(biguint_t sum, biguint_t big1, biguint_t big2) //!
{
    bool_t carry;
    sum[5] = big1[5] + big2[5];
    carry = !!(sum[5] < big1[5]);
    sum[4] = big1[4] + big2[4] + carry;
    carry = (!!(sum[4] <= big1[4])&carry) || ((!!(sum[4] < big1[4]))&(~carry));
    sum[3] = big1[3] + big2[3] + carry;
    carry = (!!(sum[3] <= big1[3])&carry) || ((!!(sum[3] < big1[3]))&(~carry));
    sum[2] = big1[2] + big2[2] + carry;
    carry = (!!(sum[2] <= big1[2])&carry) || ((!!(sum[2] < big1[2]))&(~carry));
    sum[1] = big1[1] + big2[1] + carry;
    carry = (!!(sum[1] <= big1[1])&carry) || ((!!(sum[1] < big1[1]))&(~carry));
    sum[0] = big1[0] + big2[0] + carry;
}
void biguint_sub(biguint_t dif, biguint_t big1, biguint_t big2)
{
    // bool_t carry;
    // sum[5] = big1[5] - big2[5];
    // carry = !!(sum[5] < big1[5]);
    // sum[4] = big1[4] - big2[4] - carry;
    // carry = (!!(sum[4] <= big1[4])&carry) || ((!!(sum[4] < big1[4]))&(~carry));
    // sum[3] = big1[3] - big2[3] - carry;
    // carry = (!!(sum[3] <= big1[3])&carry) || ((!!(sum[3] < big1[3]))&(~carry));
    // sum[2] = big1[2] - big2[2] - carry;
    // carry = (!!(sum[2] <= big1[2])&carry) || ((!!(sum[2] < big1[2]))&(~carry));
    // sum[1] = big1[1] - big2[1] - carry;
    // carry = (!!(sum[1] <= big1[1])&carry) || ((!!(sum[1] < big1[1]))&(~carry));
    // sum[0] = big1[0] - big2[0] - carry;
}
void biguint_mul(biguint_t prod, biguint_t big1, biguint_t big2);
void biguint_div(biguint_t quot, biguint_t big1, biguint_t big2);
void biguint_mod(biguint_t rem, biguint_t big1, biguint_t big2);

//**********
void biguint_puthex(biguint_t big)
{
    printf("Ox%016lX%016lX%016lX%016lX%016lX%016lX\n", big[0], big[1], big[2], big[3], big[4], big[5]);   //! replace printf
}
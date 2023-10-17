#include "bignum.h"


biguint_t* biguint_set(biguint_t *dest, biguint_t *src)
{
    dest->ui0 = src->ui0,
    dest->ui1 = src->ui1,
    dest->ui2 = src->ui2,
    dest->ui3 = src->ui3,
    dest->ui4 = src->ui4,
    dest->ui5 = src->ui5;

    return dest;
}

//**********
biguint_t* biguint_not(biguint_t *not, biguint_t *big)
{
    not->ui0 = ~big->ui0,
    not->ui1 = ~big->ui1,
    not->ui2 = ~big->ui2,
    not->ui3 = ~big->ui3,
    not->ui4 = ~big->ui4,
    not->ui5 = ~big->ui5;

    return not;
}
biguint_t* biguint_bar(biguint_t *bar, biguint_t *big)
{
    bar->ui5 = !big->ui0 & !big->ui1 & !big->ui2 & !big->ui3 & !big->ui4 & !big->ui5;
    bar->ui0 = bar->ui1 = bar->ui2 = bar->ui3 = bar->ui4 = 0UL;

    return bar;
}
biguint_t* biguint_neg(biguint_t *neg, biguint_t *big)
{
    //* return biguint_inc(biguint_not(neg, big));      //*2-Complement

    neg->ui0 = ~big->ui0,
    neg->ui1 = ~big->ui1,
    neg->ui2 = ~big->ui2,
    neg->ui3 = ~big->ui3,
    neg->ui4 = ~big->ui4,
    neg->ui5 = ~big->ui5;

    neg->ui5++;
    neg->ui4 += !neg->ui5;
    neg->ui3 += !neg->ui5 & !neg->ui4;
    neg->ui2 += !neg->ui5 & !neg->ui4 & !neg->ui3;
    neg->ui1 += !neg->ui5 & !neg->ui4 & !neg->ui3 & !neg->ui2;
    neg->ui0 += !neg->ui5 & !neg->ui4 & !neg->ui3 & !neg->ui2 & !neg->ui1;

    return neg;
}
biguint_t* biguint_or(biguint_t *or, biguint_t *big1, biguint_t *big2)
{
    or->ui0 = big1->ui0 | big2->ui0,
    or->ui1 = big1->ui1 | big2->ui1,
    or->ui2 = big1->ui2 | big2->ui2,
    or->ui3 = big1->ui3 | big2->ui3,
    or->ui4 = big1->ui4 | big2->ui4,
    or->ui5 = big1->ui5 | big2->ui5;

    return or;
}
biguint_t* biguint_and(biguint_t *and, biguint_t *big1, biguint_t *big2)
{
    and->ui0 = big1->ui0 & big2->ui0,
    and->ui1 = big1->ui1 & big2->ui1,
    and->ui2 = big1->ui2 & big2->ui2,
    and->ui3 = big1->ui3 & big2->ui3,
    and->ui4 = big1->ui4 & big2->ui4,
    and->ui5 = big1->ui5 & big2->ui5;

    return and;
}
biguint_t* biguint_xor(biguint_t *xor, biguint_t *big1, biguint_t *big2)
{
    xor->ui0 = big1->ui0 ^ big2->ui0,
    xor->ui1 = big1->ui1 ^ big2->ui1,
    xor->ui2 = big1->ui2 ^ big2->ui2,
    xor->ui3 = big1->ui3 ^ big2->ui3,
    xor->ui4 = big1->ui4 ^ big2->ui4,
    xor->ui5 = big1->ui5 ^ big2->ui5;

    return xor;
}

// #define BIGUINT_UINT64RSH(bigi, len, bits) \
    (( !(((len) < (bits)) || ((len) >= (bits+64L))) ) ? ((bigi) >> (len-bits)) : ( ( !(((len) <= (bits-64L) ) || ((len) >= (bits))) ) ? ((bigi) << (bits-len)) : 0UL))
#define BIGUINT_UINT64RSH(bigi, len, bits) \
    (!(((len) < (bits)) || ((len) >= (bits+64L)))*((bigi) >> (len-bits)) + !(((len) <= (bits-64L)) || ((len) >= (bits)))*((bigi) << (bits-len))) //? fastest

#define BIGUINT_UI0RSH(big, ui, len)    BIGUINT_UINT64RSH((big)->ui64[ui], len, 0L)
#define BIGUINT_UI1RSH(big, ui, len)    BIGUINT_UI0RSH(big, (ui)+1, len) | BIGUINT_UINT64RSH((big)->ui64[ui], len,  64L)
#define BIGUINT_UI2RSH(big, ui, len)    BIGUINT_UI1RSH(big, (ui)+1, len) | BIGUINT_UINT64RSH((big)->ui64[ui], len, 128L)
#define BIGUINT_UI3RSH(big, ui, len)    BIGUINT_UI2RSH(big, (ui)+1, len) | BIGUINT_UINT64RSH((big)->ui64[ui], len, 192L)
#define BIGUINT_UI4RSH(big, ui, len)    BIGUINT_UI3RSH(big, (ui)+1, len) | BIGUINT_UINT64RSH((big)->ui64[ui], len, 256L)
#define BIGUINT_UI5RSH(big, len)        BIGUINT_UI4RSH(big,      1, len) | BIGUINT_UINT64RSH((big)->ui0,      len, 320L)

#define BIGUINT_RSH(rsh, len, big)      (rsh)->ui0 = BIGUINT_UI0RSH(big, 0, len);       \
                                        (rsh)->ui1 = BIGUINT_UI1RSH(big, 0, len);       \
                                        (rsh)->ui2 = BIGUINT_UI2RSH(big, 0, len);       \
                                        (rsh)->ui3 = BIGUINT_UI3RSH(big, 0, len);       \
                                        (rsh)->ui4 = BIGUINT_UI4RSH(big, 0, len);       \
                                        (rsh)->ui5 = BIGUINT_UI5RSH(big, len);

// #define BIGUINT_UINT64LSH(bigi, len, bits) \
    ((((len) >= (bits)) && ((len) < (bits+64L))) ? ((bigi) << (len-bits)) : ( (((len) > (bits-64L) ) && ((len) < (bits))) ? ((bigi) >> (bits-len)) : 0UL))
#define BIGUINT_UINT64LSH(bigi, len, bits) \
    (!(((len) < (bits)) || ((len) >= (bits+64L)))*(bigi << (len-bits)) + !(((len) <= (bits-64L)) || ((len) >= (bits)))*(bigi >> (bits-len))) //? fastest

#define BIGUINT_UI5LSH(big, ui, len)    BIGUINT_UINT64LSH((big)->ui64[ui], len, 0L)
#define BIGUINT_UI4LSH(big, ui, len)    BIGUINT_UI5LSH(big, (ui)-1, len) | BIGUINT_UINT64LSH((big)->ui64[ui], len,  64L)
#define BIGUINT_UI3LSH(big, ui, len)    BIGUINT_UI4LSH(big, (ui)-1, len) | BIGUINT_UINT64LSH((big)->ui64[ui], len, 128L)
#define BIGUINT_UI2LSH(big, ui, len)    BIGUINT_UI3LSH(big, (ui)-1, len) | BIGUINT_UINT64LSH((big)->ui64[ui], len, 192L)
#define BIGUINT_UI1LSH(big, ui, len)    BIGUINT_UI2LSH(big, (ui)-1, len) | BIGUINT_UINT64LSH((big)->ui64[ui], len, 256L)
#define BIGUINT_UI0LSH(big, len)        BIGUINT_UI1LSH(big,      4, len) | BIGUINT_UINT64LSH((big)->ui5,      len, 320L)

#define BIGUINT_LSH(lsh, len, big)      (lsh)->ui5 = BIGUINT_UI5LSH(big, 5, len);       \
                                        (lsh)->ui4 = BIGUINT_UI4LSH(big, 5, len);       \
                                        (lsh)->ui3 = BIGUINT_UI3LSH(big, 5, len);       \
                                        (lsh)->ui2 = BIGUINT_UI2LSH(big, 5, len);       \
                                        (lsh)->ui1 = BIGUINT_UI1LSH(big, 5, len);       \
                                        (lsh)->ui0 = BIGUINT_UI0LSH(big, len);

biguint_t* biguint_rsh(biguint_t *rsh, int64_t length, biguint_t *big)
{
    if (length < 0L)
    {
        length = -length;
        BIGUINT_LSH(rsh, length, big);
    }
    else
    {
        BIGUINT_RSH(rsh, length, big);
    }

    return rsh;
}
biguint_t* biguint_lsh(biguint_t *lsh, int64_t length, biguint_t *big)
{
    if (length < 0L)
    {
        length = -length;
        BIGUINT_RSH(lsh, length, big);
    }
    else
    {
        BIGUINT_LSH(lsh, length, big);
    }

    return lsh;
}

biguint_t* biguint_rrot(biguint_t *rrot, int64_t length, biguint_t *big)
{
    length = (length % 384L) + 384L*(!(length >= 0L));
    
    biguint_t rsh, lsh;

    //* return biguint_or(rrot, biguint_rsh(&rsh, length, big), biguint_lsh(&lsh, 384L-length, big));

    if (length < 0L)
    {
        length = -length;
        BIGUINT_LSH(&lsh, length, big);
        length = 384L-length;
        BIGUINT_RSH(&rsh, length, big);
    }
    else
    {
        BIGUINT_RSH(&rsh, length, big);
        length = 384L-length;
        BIGUINT_LSH(&lsh, length, big);
    }

    rrot->ui0 = rsh.ui0 | lsh.ui0,
    rrot->ui1 = rsh.ui1 | lsh.ui1,
    rrot->ui2 = rsh.ui2 | lsh.ui2,
    rrot->ui3 = rsh.ui3 | lsh.ui3,
    rrot->ui4 = rsh.ui4 | lsh.ui4,
    rrot->ui5 = rsh.ui5 | lsh.ui5;

    return rrot;
}
biguint_t* biguint_lrot(biguint_t *lrot, int64_t length, biguint_t *big)
{
    length = (length % 384L) + 384L*(!(length >= 0L));
    
    biguint_t rsh, lsh;

    //* return biguint_or(lrot, biguint_lsh(&lsh, length, big), biguint_rsh(&rsh, 384L-length, big));

    if (length < 0L)
    {
        length = -length;
        BIGUINT_RSH(&rsh, length, big);
        length = 384L-length;
        BIGUINT_LSH(&lsh, length, big);
    }
    else
    {
        BIGUINT_LSH(&lsh, length, big);
        length = 384L-length;
        BIGUINT_RSH(&rsh, length, big);
    }

    lrot->ui0 = rsh.ui0 | lsh.ui0,
    lrot->ui1 = rsh.ui1 | lsh.ui1,
    lrot->ui2 = rsh.ui2 | lsh.ui2,
    lrot->ui3 = rsh.ui3 | lsh.ui3,
    lrot->ui4 = rsh.ui4 | lsh.ui4,
    lrot->ui5 = rsh.ui5 | lsh.ui5;

    return lrot;
}

#define BIGUINT_UINT64REV(revi, bigi)                                                               \
    revi = ((bigi) >> 32UL) | ((bigi) << 32UL);                                                     \
    revi = (((revi) & 0xFFFF0000FFFF0000UL) >> 16UL) | (((revi) & 0x0000FFFF0000FFFFUL) << 16UL);   \
    revi = (((revi) & 0xFF00FF00FF00FF00UL) >>  8UL) | (((revi) & 0x00FF00FF00FF00FFUL) <<  8UL);   \
    revi = (((revi) & 0xF0F0F0F0F0F0F0F0UL) >>  4UL) | (((revi) & 0x0F0F0F0F0F0F0F0FUL) <<  4UL);   \
    revi = (((revi) & 0xCCCCCCCCCCCCCCCCUL) >>  2UL) | (((revi) & 0x3333333333333333UL) <<  2UL);   \
    revi = (((revi) & 0xAAAAAAAAAAAAAAAAUL) >>  1UL) | (((revi) & 0x5555555555555555UL) <<  1UL);

biguint_t* biguint_rev(biguint_t *rev, biguint_t *big)
{
    BIGUINT_UINT64REV(rev->ui0, big->ui5);
    BIGUINT_UINT64REV(rev->ui1, big->ui4);
    BIGUINT_UINT64REV(rev->ui2, big->ui3);
    BIGUINT_UINT64REV(rev->ui3, big->ui2);
    BIGUINT_UINT64REV(rev->ui4, big->ui1);
    BIGUINT_UINT64REV(rev->ui5, big->ui0);

    return rev;
}

biguint_t* biguint_setnot(biguint_t *big)   //!
{
    big->ui0 = ~big->ui0,
    big->ui1 = ~big->ui1,
    big->ui2 = ~big->ui2,
    big->ui3 = ~big->ui3,
    big->ui4 = ~big->ui4,
    big->ui5 = ~big->ui5;

    return big;
}
biguint_t* biguint_setbar(biguint_t *big)   //!
{
    big->ui5 = !big->ui0 & !big->ui1 & !big->ui2 & !big->ui3 & !big->ui4 & !big->ui5;
    big->ui0 = big->ui1 = big->ui2 = big->ui3 = big->ui4 = 0UL;

    return big;
}
biguint_t* biguint_setneg(biguint_t *big)   //!
{
    //* return biguint_inc(biguint_setnot(big));        //*2-Complement

    big->ui0 = ~big->ui0,
    big->ui1 = ~big->ui1,
    big->ui2 = ~big->ui2,
    big->ui3 = ~big->ui3,
    big->ui4 = ~big->ui4,
    big->ui5 = ~big->ui5;

    big->ui5++;
    big->ui4 += !big->ui5;
    big->ui3 += !big->ui5 & !big->ui4;
    big->ui2 += !big->ui5 & !big->ui4 & !big->ui3;
    big->ui1 += !big->ui5 & !big->ui4 & !big->ui3 & !big->ui2;
    big->ui0 += !big->ui5 & !big->ui4 & !big->ui3 & !big->ui2 & !big->ui1;

    return big;
}
biguint_t* biguint_setor(biguint_t *big1, biguint_t *big2)  //!
{
    big1->ui0 |= big2->ui0;
    big1->ui1 |= big2->ui1;
    big1->ui2 |= big2->ui2;
    big1->ui3 |= big2->ui3;
    big1->ui4 |= big2->ui4;
    big1->ui5 |= big2->ui5;

    return big1;
}
biguint_t* biguint_setand(biguint_t *big1, biguint_t *big2) //!
{
    big1->ui0 &= big2->ui0;
    big1->ui1 &= big2->ui1;
    big1->ui2 &= big2->ui2;
    big1->ui3 &= big2->ui3;
    big1->ui4 &= big2->ui4;
    big1->ui5 &= big2->ui5;

    return big1;
}
biguint_t* biguint_setxor(biguint_t *big1, biguint_t *big2) //!
{
    big1->ui0 ^= big2->ui0;
    big1->ui1 ^= big2->ui1;
    big1->ui2 ^= big2->ui2;
    big1->ui3 ^= big2->ui3;
    big1->ui4 ^= big2->ui4;
    big1->ui5 ^= big2->ui5;

    return big1;
}
biguint_t* biguint_setrsh(biguint_t *big, int64_t length)   //!
{
    if (length < 0L)
    {
        length = -length;
        BIGUINT_LSH(rsh, length, big);
    }
    else
    {
        BIGUINT_RSH(rsh, length, big);
    }

    return rsh;
}
biguint_t* biguint_setlsh(biguint_t *big, int64_t length)   //!
{
    return big;
}
biguint_t* biguint_setrrot(biguint_t *big, int64_t length)  //!
{
    return big;
}
biguint_t* biguint_setlrot(biguint_t *big, int64_t length)  //!
{
    return big;
}
biguint_t* biguint_setrev(biguint_t *big)   //!
{
    return big;
}

//**********
inline bool_t biguint_eq(biguint_t *big1, biguint_t *big2)
{
    return (big1->ui0 == big2->ui0) && (big1->ui1 == big2->ui1) && (big1->ui2 == big2->ui2)
            && (big1->ui3 == big2->ui3) && (big1->ui4 == big2->ui4) && (big1->ui5 == big2->ui5);
}
inline bool_t biguint_neq(biguint_t *big1, biguint_t *big2)
{
    return (big1->ui0 != big2->ui0) || (big1->ui1 != big2->ui1) || (big1->ui2 != big2->ui2)
            || (big1->ui3 != big2->ui3) || (big1->ui4 != big2->ui4) || (big1->ui5 != big2->ui5);
}

inline bool_t biguint_gt(biguint_t *big1, biguint_t *big2)
{
    return (big1->ui0 >  big2->ui0) ||
           ((big1->ui0 == big2->ui0)&&((big1->ui1 >  big2->ui1)||
                                      ((big1->ui1 == big2->ui1)&&((big1->ui2 >  big2->ui2)||
                                                                 ((big1->ui2 == big2->ui2)&&((big1->ui3 >  big2->ui3)||
                                                                                            ((big1->ui3 == big2->ui3)&&((big1->ui4 >  big2->ui4)||
                                                                                                                       ((big1->ui4 == big2->ui4)&&(big1->ui5 > big2->ui5))))))))));
}
inline bool_t biguint_gteq(biguint_t *big1, biguint_t *big2)
{
    return (big1->ui0 >  big2->ui0) ||
           ((big1->ui0 == big2->ui0)&&((big1->ui1 >  big2->ui1)||
                                      ((big1->ui1 == big2->ui1)&&((big1->ui2 >  big2->ui2)||
                                                                 ((big1->ui2 == big2->ui2)&&((big1->ui3 >  big2->ui3)||
                                                                                            ((big1->ui3 == big2->ui3)&&((big1->ui4 >  big2->ui4)||
                                                                                                                       ((big1->ui4 == big2->ui4)&&((big1->ui5 > big2->ui5) ||
                                                                                                                                                   (big1->ui5 == big2->ui5)))))))))));
}

inline bool_t biguint_lt(biguint_t *big1, biguint_t *big2)
{
    return (big1->ui0 <  big2->ui0) ||
           ((big1->ui0 == big2->ui0)&&((big1->ui1 <  big2->ui1)||
                                      ((big1->ui1 == big2->ui1)&&((big1->ui2 <  big2->ui2)||
                                                                 ((big1->ui2 == big2->ui2)&&((big1->ui3 <  big2->ui3)||
                                                                                            ((big1->ui3 == big2->ui3)&&((big1->ui4 <  big2->ui4)||
                                                                                                                       ((big1->ui4 == big2->ui4)&&(big1->ui5 < big2->ui5))))))))));
}
inline bool_t biguint_lteq(biguint_t *big1, biguint_t *big2)
{
    return (big1->ui0 <  big2->ui0) ||
           ((big1->ui0 == big2->ui0)&&((big1->ui1 <  big2->ui1)||
                                      ((big1->ui1 == big2->ui1)&&((big1->ui2 <  big2->ui2)||
                                                                 ((big1->ui2 == big2->ui2)&&((big1->ui3 <  big2->ui3)||
                                                                                            ((big1->ui3 == big2->ui3)&&((big1->ui4 <  big2->ui4)||
                                                                                                                       ((big1->ui4 == big2->ui4)&&((big1->ui5 < big2->ui5) ||
                                                                                                                                                   (big1->ui5 == big2->ui5)))))))))));
}

//**********
biguint_t* biguint_inc(biguint_t *big)
{
    big->ui5++;
    big->ui4 += !big->ui5;
    big->ui3 += !big->ui5 & !big->ui4;
    big->ui2 += !big->ui5 & !big->ui4 & !big->ui3;
    big->ui1 += !big->ui5 & !big->ui4 & !big->ui3 & !big->ui2;
    big->ui0 += !big->ui5 & !big->ui4 & !big->ui3 & !big->ui2 & !big->ui1;

    return big;
}
biguint_t* biguint_add(biguint_t *sum, biguint_t *big1, biguint_t *big2) //!
{
    bool_t carry;

    sum->ui5 = big1->ui5 + big2->ui5;
    // carry = !!(sum->ui5 < big1->ui5);
    carry = !(sum->ui5 >= big1->ui5);
    sum->ui4 = big1->ui4 + big2->ui4 + carry;
    // carry = (!!(sum->ui4 <= big1->ui4)&carry) | ((!!(sum->ui4 < big1->ui4))&(~carry));
    carry = ((!(sum->ui4 > big1->ui4))&carry) | ((!(sum->ui4 >= big1->ui4))&(~carry));
    sum->ui3 = big1->ui3 + big2->ui3 + carry;
    // carry = (!!(sum->ui3 <= big1->ui3)&carry) | ((!!(sum->ui3 < big1->ui3))&(~carry));
    carry = ((!(sum->ui3 > big1->ui3))&carry) | ((!(sum->ui3 >= big1->ui3))&(~carry));
    sum->ui2 = big1->ui2 + big2->ui2 + carry;
    // carry = (!!(sum->ui2 <= big1->ui2)&carry) | ((!!(sum->ui2 < big1->ui2))&(~carry));
    carry = ((!(sum->ui2 > big1->ui2))&carry) | ((!(sum->ui2 >= big1->ui2))&(~carry));
    sum->ui1 = big1->ui1 + big2->ui1 + carry;
    // carry = (!!(sum->ui1 <= big1->ui1)&carry) | ((!!(sum->ui1 < big1->ui1))&(~carry));
    carry = ((!(sum->ui1 > big1->ui1))&carry) | ((!(sum->ui1 >= big1->ui1))&(~carry));
    sum->ui0 = big1->ui0 + big2->ui0 + carry;

    return sum;
}

biguint_t* biguint_dec(biguint_t *big)
{
    big->ui5--;
    big->ui4 -= !(~big->ui5);
    big->ui3 -= !(~big->ui5) & !(~big->ui4);
    big->ui2 -= !(~big->ui5) & !(~big->ui4) & !(~big->ui3);
    big->ui1 -= !(~big->ui5) & !(~big->ui4) & !(~big->ui3) & !(~big->ui2);
    big->ui0 -= !(~big->ui5) & !(~big->ui4) & !(~big->ui3) & !(~big->ui2) & !(~big->ui1);

    return big;
}
biguint_t* biguint_sub(biguint_t *dif, biguint_t *big1, biguint_t *big2)
{
    //* return biguint_add(dif, big1, biguint_neg(dif, big2));

    bool_t carry;

    dif->ui0 = ~big2->ui0,
    dif->ui1 = ~big2->ui1,
    dif->ui2 = ~big2->ui2,
    dif->ui3 = ~big2->ui3,
    dif->ui4 = ~big2->ui4,
    dif->ui5 = ~big2->ui5;

    dif->ui5++;
    dif->ui4 += !dif->ui5;
    dif->ui3 += !dif->ui5 & !dif->ui4;
    dif->ui2 += !dif->ui5 & !dif->ui4 & !dif->ui3;
    dif->ui1 += !dif->ui5 & !dif->ui4 & !dif->ui3 & !dif->ui2;
    dif->ui0 += !dif->ui5 & !dif->ui4 & !dif->ui3 & !dif->ui2 & !dif->ui1;

    dif->ui5 = big1->ui5 + dif->ui5;
    carry = !(dif->ui5 >= big1->ui5);
    dif->ui4 = big1->ui4 + dif->ui4 + carry;
    carry = ((!(dif->ui4 > big1->ui4))&carry) | ((!(dif->ui4 >= big1->ui4))&(~carry));
    dif->ui3 = big1->ui3 + dif->ui3 + carry;
    carry = ((!(dif->ui3 > big1->ui3))&carry) | ((!(dif->ui3 >= big1->ui3))&(~carry));
    dif->ui2 = big1->ui2 + dif->ui2 + carry;
    carry = ((!(dif->ui2 > big1->ui2))&carry) | ((!(dif->ui2 >= big1->ui2))&(~carry));
    dif->ui1 = big1->ui1 + dif->ui1 + carry;
    carry = ((!(dif->ui1 > big1->ui1))&carry) | ((!(dif->ui1 >= big1->ui1))&(~carry));
    dif->ui0 = big1->ui0 + dif->ui0 + carry;

    return dif;
}

biguint_t* biguint_mul(biguint_t *prod, biguint_t *big1, biguint_t *big2)
{
    biguint_t tmp;

    tmp.ui0 = big1->ui00 * big2->ui00;
    prod->ui00 = tmp.ui00;
    tmp.ui1 = big1->ui00 * big2->ui01;
    tmp.ui2 = big1->ui01 * big2->ui00;
    prod->ui01 = (uint64_t)tmp.ui1 + (uint64_t)tmp.ui0 + (uint64_t)tmp.ui0;

    return prod;
}

biguint_t* biguint_div(biguint_t *quot, biguint_t *big1, biguint_t *big2);
biguint_t* biguint_mod(biguint_t *rem, biguint_t *big1, biguint_t *big2);

//**********
void biguint_puthex(biguint_t *big)
{
    printf("0x%016lX%016lX%016lX%016lX%016lX%016lX\n", big->ui0, big->ui1, big->ui2, big->ui3, big->ui4, big->ui5);   //! replace printf
}
void biguint_putsephex64(biguint_t *big)
{
    printf("0x%016lX %016lX %016lX %016lX %016lX %016lX\n", big->ui0, big->ui1, big->ui2, big->ui3, big->ui4, big->ui5);   //! replace printf
}
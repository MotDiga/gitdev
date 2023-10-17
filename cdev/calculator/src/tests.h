#ifndef   TESTS_H_INCLUDED
#define   TESTS_H_INCLUDED

#include <stdmoh.h>
#include <stderr.h>
#include "parser.h"
#include "stdlog.h"


//****************************************************************************************************************************************************************
//* Functions Declaration

//* BigUInt
void bar_test();
void neg_test();
void rsh_test();
void lsh_test();
void rrot_test();
void lrot_test();
void rev_test();
//
void condition_test();
//
void inc_test();
void add_test();
void dec_test();
void sub_test();
void mul_test();
void div_test();
void mod_test();

//****************************************************************************************************************************************************************
//* Functions Defenetion

void bar_test()
{
    //!
}

void neg_test()
{
    //!
}

void rsh_test()
{
    biguint_t biguint, biguint1 = BIGUINT_INIT(0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL);
    struct_time before, after;
    int64_t i;

    log_colorcyan("\nTesting BigUInt RSHIFT Of:\n");
    biguint_puthex(&biguint1);

    log_colorcyan("\nFrom -388 => 388 (4bits by step):\n");
    updatetime(&before);
    for (i = -388L; i <= 388L; i+=4L)
    {
        biguint_rsh(&biguint, i, &biguint1);
        biguint_puthex(&biguint);
    }
    updatetime(&after);
    log_colorgreen("Completed in: %.9lf\n", deltatime(after, before));

    log_colorcyan("\nFrom -388 => 388 (1bits by step):\n");
    updatetime(&before);
    for (i = -388L; i <= 388L; i++)
    {
        biguint_rsh(&biguint, i, &biguint1);
        biguint_puthex(&biguint);
    }
    updatetime(&after);
    log_colorgreen("Completed in: %.9lf\n", deltatime(after, before));
}
void lsh_test()
{
    biguint_t biguint, biguint1 = BIGUINT_INIT(0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL);
    struct_time before, after;
    int64_t i;

    log_colorcyan("\nTesting BigUInt LSHIFT Of:\n");
    biguint_puthex(&biguint1);

    log_colorcyan("\nFrom -388 => 388 (4bits by step):\n");
    updatetime(&before);
    for (i = -388L; i <= 388L; i+=4L)
    {
        biguint_lsh(&biguint, i, &biguint1);
        biguint_puthex(&biguint);
    }
    updatetime(&after);
    log_colorgreen("Completed in: %.9lf\n", deltatime(after, before));

    log_colorcyan("\nFrom -388 => 388 (1bits by step):\n");
    updatetime(&before);
    for (i = -388L; i <= 388L; i++)
    {
        biguint_lsh(&biguint, i, &biguint1);
        biguint_puthex(&biguint);
    }
    updatetime(&after);
    log_colorgreen("Completed in: %.9lf\n", deltatime(after, before));
}

void rrot_test()
{
    biguint_t biguint, biguint1 = BIGUINT_INIT(0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL);
    struct_time before, after;
    int64_t i;

    log_colorcyan("\nTesting BigUInt RROTATE Of:\n");
    biguint_puthex(&biguint1);

    log_colorcyan("\nFrom -388 => 388 (4bits by step):\n");
    updatetime(&before);
    for (i = -388L; i <= 388L; i+=4L)
    {
        biguint_rrot(&biguint, i, &biguint1);
        biguint_puthex(&biguint);
    }
    updatetime(&after);
    log_colorgreen("Completed in: %.9lf\n", deltatime(after, before));

    log_colorcyan("\nFrom -388 => 388 (1bits by step):\n");
    updatetime(&before);
    for (i = -388L; i <= 388L; i++)
    {
        biguint_rrot(&biguint, i, &biguint1);
        biguint_puthex(&biguint);
    }
    updatetime(&after);
    log_colorgreen("Completed in: %.9lf\n", deltatime(after, before));
}
void lrot_test()
{
    biguint_t biguint, biguint1 = BIGUINT_INIT(0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL);
    struct_time before, after;
    int64_t i;

    log_colorcyan("\nTesting BigUInt LROTATE Of:\n");
    biguint_puthex(&biguint1);

    log_colorcyan("\nFrom -388 => 388 (4bits by step):\n");
    updatetime(&before);
    for (i = -388L; i <= 388L; i+=4L)
    {
        biguint_lrot(&biguint, i, &biguint1);
        biguint_puthex(&biguint);
    }
    updatetime(&after);
    log_colorgreen("Completed in: %.9lf\n", deltatime(after, before));

    log_colorcyan("\nFrom -388 => 388 (1bits by step):\n");
    updatetime(&before);
    for (i = -388L; i <= 388L; i++)
    {
        biguint_lrot(&biguint, i, &biguint1);
        biguint_puthex(&biguint);
    }
    updatetime(&after);
    log_colorgreen("Completed in: %.9lf\n", deltatime(after, before));
}

void rev_test()
{
    biguint_t biguint, biguint1 = BIGUINT_INIT(0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL);

    log_colorcyan("\nTesting BigUInt REVERSE Of:\n");
    biguint_puthex(&biguint1);
    log_colorcyan("Is:\n");
    biguint_rev(&biguint, &biguint1);
    biguint_puthex(&biguint);

    log_colorcyan("\nTesting BigUInt REVERSE Of:\n");
    biguint1 = BIGUINT_SET(0x1111111122222222UL, 0x3333333344444444UL, 0x5555555566666666UL, 0x7777777788888888UL, 0x99999999AAAAAAAAUL, 0xBBBBBBBBCCCCCCCCUL);
    biguint_putsephex64(&biguint1);
    log_colorcyan("Is:\n");
    biguint_rev(&biguint, &biguint1);
    biguint_putsephex64(&biguint);

    log_colorcyan("\nTesting BigUInt REVERSE Of:\n");
    biguint1 = BIGUINT_SET(0x1111222233334444UL, 0x5555666677778888UL, 0x9999AAAABBBBCCCCUL, 0xDDDDEEEEFFFF0000UL, 0x123456789ABCDEF0UL, 0x123456789ABCDEF0UL);
    biguint_putsephex64(&biguint1);
    log_colorcyan("Is:\n");
    biguint_rev(&biguint, &biguint1);
    biguint_putsephex64(&biguint);

    log_colorcyan("\nTesting BigUInt REVERSE Of:\n");
    biguint1 = BIGUINT_SET(0x1122334455667788UL, 0x99AABBCCDDEEFF00UL, 0x1122334455667788UL, 0x99AABBCCDDEEFF00UL, 0x1122334455667788UL, 0x99AABBCCDDEEFF00UL);
    biguint_putsephex64(&biguint1);
    log_colorcyan("Is:\n");
    biguint_rev(&biguint, &biguint1);
    biguint_putsephex64(&biguint);

    log_colorcyan("\nTesting BigUInt REVERSE Of:\n");
    biguint1 = BIGUINT_SET(0x123456789ABCDEF0UL, 0x123456789ABCDEF0UL, 0x123456789ABCDEF0UL, 0x123456789ABCDEF0UL, 0x123456789ABCDEF0UL, 0x123456789ABCDEF0UL);
    biguint_putsephex64(&biguint1);
    log_colorcyan("Is:\n");
    biguint_rev(&biguint, &biguint1);
    biguint_putsephex64(&biguint);
}

void condition_test()
{
    biguint_t biguint1, biguint2;

    log_colorcyan("\nTesting BigUInt Conditions:\n");

    log_colorcyan("BigUInt Equal:\n");
    biguint2 = biguint1 = BIGUINT_ZERO;
    log_colorcyan("Test1: ");
    log_condition((biguint_eq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test2: ");
    log_condition((biguint_eq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 1UL, 0UL);
    log_colorcyan("Test3: ");
    log_condition((biguint_eq(&biguint1, &biguint2) == false));
    //
    biguint2 = biguint1 = BIGUINT_MAX;
    log_colorcyan("Test4: ");
    log_condition((biguint_eq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test5: ");
    log_condition((biguint_eq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 1UL, 0UL, 0UL, 0UL);
    log_colorcyan("Test6: ");
    log_condition((biguint_eq(&biguint1, &biguint2) == false));
    //
    biguint2 = biguint1 = BIGUINT_SET(1UL, 0UL, 1UL, 0UL, 1UL, 0UL);
    log_colorcyan("Test7: ");
    log_condition((biguint_eq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test8: ");
    log_condition((biguint_eq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test9: ");
    log_condition((biguint_eq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 1UL, 0UL, 1UL, 0UL, 1UL);
    log_colorcyan("Test10: ");
    log_condition((biguint_eq(&biguint1, &biguint2) == false));

    log_colorcyan("BigUInt NotEqual:\n");
    biguint2 = biguint1 = BIGUINT_ZERO;
    log_colorcyan("Test1: ");
    log_condition((biguint_neq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test2: ");
    log_condition((biguint_neq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 1UL, 0UL);
    log_colorcyan("Test3: ");
    log_condition((biguint_neq(&biguint1, &biguint2) == true));
    //
    biguint2 = biguint1 = BIGUINT_MAX;
    log_colorcyan("Test4: ");
    log_condition((biguint_neq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test5: ");
    log_condition((biguint_neq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 1UL, 0UL, 0UL, 0UL);
    log_colorcyan("Test6: ");
    log_condition((biguint_neq(&biguint1, &biguint2) == true));
    //
    biguint2 = biguint1 = BIGUINT_SET(1UL, 0UL, 1UL, 0UL, 1UL, 0UL);
    log_colorcyan("Test7: ");
    log_condition((biguint_neq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test8: ");
    log_condition((biguint_neq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test9: ");
    log_condition((biguint_neq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 1UL, 0UL, 1UL, 0UL, 1UL);
    log_colorcyan("Test10: ");
    log_condition((biguint_neq(&biguint1, &biguint2) == true));

    log_colorcyan("BigUInt GreaterThan:\n");
    biguint2 = biguint1 = BIGUINT_ZERO;
    log_colorcyan("Test1: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test2: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test3: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test4: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == false));
    //
    biguint1 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, 1UL), biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test5: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, 1UL);
    log_colorcyan("Test6: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test7: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test8: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test9: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == false));
    //
    biguint1 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX), biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test10: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test11: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test12: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test13: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == false));
    //
    biguint1 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL), biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test14: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test15: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test16: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test17: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == false));
    //
    biguint1 = BIGUINT_MAX, biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test18: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test19: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test20: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test21: ");
    log_condition((biguint_gt(&biguint1, &biguint2) == false));

    log_colorcyan("BigUInt GreaterThanEqual:\n");
    biguint2 = biguint1 = BIGUINT_ZERO;
    log_colorcyan("Test1: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test2: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test3: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test4: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == false));
    //
    biguint1 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, 1UL), biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test5: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, 1UL);
    log_colorcyan("Test6: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test7: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test8: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test9: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == false));
    //
    biguint1 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX), biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test10: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test11: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test12: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test13: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == false));
    //
    biguint1 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL), biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test14: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test15: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test16: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test17: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == false));
    //
    biguint1 = BIGUINT_MAX, biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test18: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test19: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test20: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test21: ");
    log_condition((biguint_gteq(&biguint1, &biguint2) == true));

    log_colorcyan("BigUInt LowerThan:\n");
    biguint2 = biguint1 = BIGUINT_ZERO;
    log_colorcyan("Test1: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test2: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test3: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test4: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == true));
    //
    biguint1 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, 1UL), biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test5: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, 1UL);
    log_colorcyan("Test6: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test7: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test8: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test9: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == true));
    //
    biguint1 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX), biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test10: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test11: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test12: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test13: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == true));
    //
    biguint1 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL), biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test14: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test15: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test16: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test17: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == true));
    //
    biguint1 = BIGUINT_MAX, biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test18: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test19: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test20: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test21: ");
    log_condition((biguint_lt(&biguint1, &biguint2) == false));

    log_colorcyan("BigUInt LowerThanEqual:\n");
    biguint2 = biguint1 = BIGUINT_ZERO;
    log_colorcyan("Test1: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test2: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test3: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test4: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == true));
    //
    biguint1 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, 1UL), biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test5: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, 1UL);
    log_colorcyan("Test6: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test7: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test8: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test9: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == true));
    //
    biguint1 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX), biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test10: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test11: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test12: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test13: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == true));
    //
    biguint1 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL), biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test14: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test15: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test16: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == true));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test17: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == true));
    //
    biguint1 = BIGUINT_MAX, biguint2 = BIGUINT_ZERO;
    log_colorcyan("Test18: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX);
    log_colorcyan("Test19: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, UINT_MAX, 0UL);
    log_colorcyan("Test20: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == false));
    biguint2 = BIGUINT_MAX;
    log_colorcyan("Test21: ");
    log_condition((biguint_lteq(&biguint1, &biguint2) == true));
}

void inc_test()
{
    biguint_t *results = (biguint_t*)malloc(sizeof(biguint_t) * 100000000UL);
    results[0] = BIGUINT_ZERO;
    struct_time before, after;
    uint64_t i;

    log_colorcyan("\nTesting BigUInt Inc:\n");

    log_colorcyan("\nFrom 0 => %lu:\n", 100000000UL);
    updatetime(&before);
    for (i = 1UL; i <= 100000000UL; i++)
    {
        results[i] = results[i-1UL];
        biguint_inc(results + i);
    }
    updatetime(&after);
    for (i = 0UL; i <= 100000000UL; i+=1024UL)
    {
        biguint_puthex(results + i);
    }
    log_colorgreen("Completed in: %.9lf\n", deltatime(after, before));
}
void add_test()
{
    biguint_t biguint, biguint1 = BIGUINT_INIT(0UL, 0UL, 0UL, 0UL, 0UL, UINT_MAX), biguint2 = BIGUINT_INIT(0UL, 0UL, 0UL, 0UL, 0UL, 1UL);

    log_colorcyan("\nTesting BigUInt Add:\n");

    biguint_putsephex64(&biguint1);
    log_colorcyan("+\n");
    biguint_putsephex64(&biguint2);
    log_colorcyan("=\n");
    biguint_add(&biguint, &biguint1, &biguint2);
    biguint_putsephex64(&biguint);
    //
    puts("");
    biguint1 = BIGUINT_MAX;
    biguint_putsephex64(&biguint1);
    log_colorcyan("+\n");
    biguint_putsephex64(&biguint2);
    log_colorcyan("=\n");
    biguint_add(&biguint, &biguint1, &biguint2);
    biguint_putsephex64(&biguint);
    //
    puts("");
    biguint2 = BIGUINT_MAX;
    biguint_putsephex64(&biguint1);
    log_colorcyan("+\n");
    biguint_putsephex64(&biguint2);
    log_colorcyan("=\n");
    biguint_add(&biguint, &biguint1, &biguint2);
    biguint_putsephex64(&biguint);
    //
    puts("");
    biguint1 = (biguint_t){ .ui41=2U };
    biguint_putsephex64(&biguint1);
    log_colorcyan("+\n");
    biguint_putsephex64(&biguint2);
    log_colorcyan("=\n");
    biguint_add(&biguint, &biguint1, &biguint2);
    biguint_putsephex64(&biguint);
}
void dec_test()
{
    //!
}
void sub_test()
{
    biguint_t biguint, biguint1 = BIGUINT_INIT(0UL, 0UL, 0UL, 0UL, 16UL, 0UL), biguint2 = BIGUINT_INIT(0UL, 0UL, 0UL, 0UL, 0UL, 1UL);

    log_colorcyan("\nTesting BigUInt Sub:\n");

    biguint_putsephex64(&biguint1);
    log_colorcyan("-\n");
    biguint_putsephex64(&biguint2);
    log_colorcyan("=\n");
    biguint_sub(&biguint, &biguint1, &biguint2);
    biguint_putsephex64(&biguint);
    //
    puts("");
    biguint1 = BIGUINT_SET(0UL, 0UL, 0UL, 0UL, 1UL, 0UL);
    biguint_putsephex64(&biguint1);
    log_colorcyan("-\n");
    biguint_putsephex64(&biguint2);
    log_colorcyan("=\n");
    biguint_sub(&biguint, &biguint1, &biguint2);
    biguint_putsephex64(&biguint);
    //
    puts("");
    biguint1 = BIGUINT_MAX;
    biguint_putsephex64(&biguint1);
    log_colorcyan("-\n");
    biguint_putsephex64(&biguint2);
    log_colorcyan("=\n");
    biguint_sub(&biguint, &biguint1, &biguint2);
    biguint_putsephex64(&biguint);
    //
    puts("");
    biguint1 = BIGUINT_ZERO;
    biguint_putsephex64(&biguint1);
    log_colorcyan("-\n");
    biguint_putsephex64(&biguint2);
    log_colorcyan("=\n");
    biguint_sub(&biguint, &biguint1, &biguint2);
    biguint_putsephex64(&biguint);
    //
    puts("");
    biguint2 = BIGUINT_ZERO;
    biguint_putsephex64(&biguint1);
    log_colorcyan("-\n");
    biguint_putsephex64(&biguint2);
    log_colorcyan("=\n");
    biguint_sub(&biguint, &biguint1, &biguint2);
    biguint_putsephex64(&biguint);
}
void mul_test()
{
    //!
}
void div_test()
{
    //!
}
void mod_test()
{
    //!
}


#endif // TESTS_H_INCLUDED
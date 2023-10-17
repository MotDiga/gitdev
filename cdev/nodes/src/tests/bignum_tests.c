#include "tests.h"

void biguintbitwise_test()
{
    log_colorgreen("\nStarting BigNum Bit Wise Test:\n\n");
    
    log_colorblue("Starting BigUInt Test:\n");
    biguint_t biguint, biguint1 = BIGUINT_ZEROINIT, biguint2 = BIGUINT_ZEROINIT;

    log_colorcyan("NOT:\n");
    biguint_set(biguint1, (biguint_t){ 0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL });
    biguint_not(biguint, biguint1);
    biguint_puthex(biguint);

    log_colorcyan("OR:\n");
    biguint_set(biguint1, (biguint_t){ 0x2020202020202020UL, 0x4040404040404040UL, 0x6060606060606060UL, 0x8080808080808080UL, 0xA0A0A0A0A0A0A0A0UL, 0xC0C0C0C0C0C0C0C0UL });
    biguint_set(biguint2, (biguint_t){ 0x0303030303030303UL, 0x0505050505050505UL, 0x0707070707070707UL, 0x0909090909090909UL, 0x0B0B0B0B0B0B0B0BUL, 0x0D0D0D0D0D0D0D0DUL });
    biguint_or(biguint, biguint1, biguint2);
    biguint_puthex(biguint);

    log_colorcyan("AND:\n");

    log_colorcyan("XOR:\n");

    log_colorcyan("RSHIFT:\n");
    biguint_set(biguint1, (biguint_t){ 0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL });
    biguint_rshift(biguint, 32UL, biguint1);
    biguint_puthex(biguint);
    biguint_set(biguint1, (biguint_t){ 0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL });
    biguint_rshift(biguint, 64UL, biguint1);
    biguint_puthex(biguint);
    biguint_set(biguint1, (biguint_t){ 0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL });
    biguint_rshift(biguint, 96UL, biguint1);
    biguint_puthex(biguint);
    biguint_set(biguint1, (biguint_t){ 0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL });
    biguint_rshift(biguint, 152UL, biguint1);
    biguint_puthex(biguint);
    biguint_set(biguint1, (biguint_t){ 0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL });
    biguint_rshift(biguint, 392UL, biguint1);
    biguint_puthex(biguint);

    log_colorcyan("LSHIFT:\n");
    biguint_set(biguint1, (biguint_t){ 0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL });
    biguint_lshift(biguint, 32UL, biguint1);
    biguint_puthex(biguint);
    biguint_set(biguint1, (biguint_t){ 0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL });
    biguint_lshift(biguint, 64UL, biguint1);
    biguint_puthex(biguint);
    biguint_set(biguint1, (biguint_t){ 0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL });
    biguint_lshift(biguint, 96UL, biguint1);
    biguint_puthex(biguint);
    biguint_set(biguint1, (biguint_t){ 0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL });
    biguint_lshift(biguint, 152UL, biguint1);
    biguint_puthex(biguint);
    biguint_set(biguint1, (biguint_t){ 0x2222222222222222UL, 0x4444444444444444UL, 0x6666666666666666UL, 0x8888888888888888UL, 0xAAAAAAAAAAAAAAAAUL, 0xCCCCCCCCCCCCCCCCUL });
    biguint_lshift(biguint, 392UL, biguint1);
    biguint_puthex(biguint);
}
void biguintcomparison_test()
{
    log_colorgreen("\nStarting BigNum Comparison Test:\n\n");
    
    log_colorblue("Starting BigUInt Test:\n");
    biguint_t biguint, biguint1 = BIGUINT_ZEROINIT, biguint2 = BIGUINT_ZEROINIT;
}
void biguintarethmetic_test()
{
    log_colorgreen("\nStarting BigNum Arethmetic Test:\n\n");
    
    log_colorblue("Starting BigUInt Test:\n");
    biguint_t biguint, biguint1 = BIGUINT_ZEROINIT, biguint2 = BIGUINT_ZEROINIT;
}
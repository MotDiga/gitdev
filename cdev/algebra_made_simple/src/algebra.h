#ifndef   ALGEBRA_H
#define   ALGEBRA_H

#include <stdmoh.h>
#include <stderr.h>


typedef struct ratio_t
{
    uint64_t num, denum;
} ratio_t;
typedef struct algebra_element_t
{
    char_t word[256];
    real64_t val;
    ratio_t ratio;
    //? struct algebra_element_t *exp;
    bool_t sign;
} algebra_element_t;
typedef algebra_element_t const_t;
typedef algebra_element_t var_t;

void simpl_algebra(string_t const express, string_t simpl_express);

//!!! automatic_differanciation()


#endif // ALGEBRA_H
#ifndef   SORTING_H_INCLUDED
#define   SORTING_H_INCLUDED

#include "stdmath.h"

#define SORTING_DEC 0x0
#define SORTING_INC 0x1

void bubblesort_head(int64_t array[], const int64_t size, const uint8_t order);
void bubblesort_tail(int64_t array[], const int64_t size, const uint8_t order);
void bubblesort_headonecheck(int64_t array[], const int64_t size, const uint8_t order);
void bubblesort_tailonecheck(int64_t array[], const int64_t size, const uint8_t order);
void insertsort(int64_t array[], const int64_t size, const uint8_t order);
void insertsort_slow(int64_t array[], const int64_t size, const uint8_t order);
void mergesort(int64_t array[], const int64_t size, const uint8_t order);

#endif // SORTING_H_INCLUDED
#include "sorting.h"

static inline bool_t incsort(const int64_t a, const int64_t b)
{
    return a < b;
}
static inline bool_t decsort(const int64_t a, const int64_t b)
{
    return a > b;
}

void bubblesort_head(int64_t array[], const int64_t size, const uint8_t order)
{
    bool_t (*sort)() = (order == SORTING_INC) ? incsort : decsort, sorted;
    for (int64_t i = 0L; i < size; i++)
    {
        sorted = true;
        for (int64_t j = 0L, tmp, end = size-i-1L; j < end; j++)
        {
            if (sort(array[j+1L], array[j]))
            {
                sorted = false;
                tmp = array[j+1L];
                array[j+1L] = array[j];
                array[j] = tmp;
            }
        }
        if (sorted)
        {
            break;
        }
    }
}
void bubblesort_tail(int64_t array[], const int64_t size, const uint8_t order)
{
    bool_t (*sort)() = (order == SORTING_INC) ? incsort : decsort, sorted;
    for (int64_t i = 0L; i < size; i++)
    {
        sorted = true;
        for (int64_t j = size-1L, tmp, end = i; j > end; j--)
        {
            if (sort(array[j], array[j-1L]))
            {
                sorted = false;
                tmp = array[j];
                array[j] = array[j-1L];
                array[j-1L] = tmp;
            }
        }
        if (sorted)
        {
            break;
        }
    }
}
void bubblesort_headonecheck(int64_t array[], const int64_t size, const uint8_t order)
{
    bool_t (*sort)() = (order == SORTING_INC) ? incsort : decsort;
    for (int64_t i = 0L, tmp, end = size-1L; i < end; i++)
    {
        if (sort(array[i+1L], array[i]))
        {
            tmp = array[i+1L];
            array[i+1L] = array[i];
            array[i] = tmp;
        }
    }
}
void bubblesort_tailonecheck(int64_t array[], const int64_t size, const uint8_t order)
{
    bool_t (*sort)() = (order == SORTING_INC) ? incsort : decsort;
    for (int64_t i = size-1L, tmp, end = 0L; i > end; i--)
    {
        if (sort(array[i], array[i-1L]))
        {
            tmp = array[i];
            array[i] = array[i-1L];
            array[i-1L] = tmp;
        }
    }
}

void insertsort(int64_t array[], const int64_t size, const uint8_t order)
{
    bool_t (*sort)() = (order == SORTING_INC) ? incsort : decsort;
    const int64_t init_max_min = (order == SORTING_INC) ? 0x7FFFFFFFFFFFFFFF : 0x8000000000000000;
    for (int64_t i = 0L, max_min, *p = NULL, tmp; i < size; i++)
    {
        max_min = init_max_min;
        for (int64_t j = i; j < size; j++)
        {
            if (sort(array[j], max_min))
            {
                max_min = array[j];
                p = array + j;
            }
        }
        tmp = array[i];
        array[i] = *p;
        *p = tmp;
    }
}
void insertsort_slow(int64_t array[], const int64_t size, const uint8_t order)
{
    bool_t (*sort)() = (order == SORTING_INC) ? incsort : decsort;
    for (int64_t i = 0L; i < size; i++)
    {
        for (int64_t j = i + 1L, tmp; j < size; j++)
        {
            if (sort(array[j], array[i]))
            {
                tmp = array[i];
                array[i] = array[j];
                array[j] = tmp;
            }
        }
    }
}

static void merge()
{
    //!
}
void mergesort(int64_t array[], const int64_t size, const uint8_t order)
{
    //!
}
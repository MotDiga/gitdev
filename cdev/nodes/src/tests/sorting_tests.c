#include "tests.h"

void bubblesort_test()  //!
{
    log_colorgreen("\nStarting Bubble Sort Test:\n");

    srand(mtime_64seed());
    mtime_t time0 = MTIME_ZERO_INIT, time1 = MTIME_ZERO_INIT, dtime = MTIME_ZERO_INIT;
    int64_t err = -1, arr0[] = { 9, 6, 7, 8, 2, 3, 0, 4, 1, 5, -10 },
            arr1[1024], arr2[32768];

    for (int64_t i = 0; i < 1024; i++)
    {
        arr1[i] = rand() % 1024;
    }
    for (int64_t i = 0; i < 32768; i++)
    {
        arr2[i] = rand() % 32768;
    }

    log_colorblue("\nHead: IncSort Test:\n");

    log_colorcyan("\narray of size 10 Test:\n");
    mtime_update(&time0);
    bubblesort_head(arr0, 10, SORTING_INC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    //? log_coloryellow("Array of size 10 : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
    printf("[ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9]);

    log_colorcyan("\narray of size 1024 Test:\n");
    mtime_update(&time0);
    bubblesort_head(arr1, 1024, SORTING_INC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr1[0], arr1[1], arr1[2], arr1[1021], arr1[1022], arr1[1023]);

    log_colorcyan("\narray of size 32768 Test:\n");
    mtime_update(&time0);
    bubblesort_head(arr2, 32768, SORTING_INC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr2[0], arr2[1], arr2[2], arr2[32765], arr2[32766], arr2[32767]);

    log_colorblue("\nHead: DecSort Test:\n");

    log_colorcyan("\narray of size 10 Test:\n");
    mtime_update(&time0);
    bubblesort_head(arr0, 10, SORTING_DEC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9]);

    log_colorcyan("\narray of size 1024 Test:\n");
    mtime_update(&time0);
    bubblesort_head(arr1, 1024, SORTING_DEC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr1[0], arr1[1], arr1[2], arr1[1021], arr1[1022], arr1[1023]);

    log_colorcyan("\narray of size 32768 Test:\n");
    mtime_update(&time0);
    bubblesort_head(arr2, 32768, SORTING_DEC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr2[0], arr2[1], arr2[2], arr2[32765], arr2[32766], arr2[32767]);

    log_colorblue("\nTail: IncSort Test:\n");

    log_colorcyan("\narray of size 10 Test:\n");
    mtime_update(&time0);
    bubblesort_tail(arr0, 10, SORTING_INC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9]);

    log_colorcyan("\narray of size 1024 Test:\n");
    mtime_update(&time0);
    bubblesort_tail(arr1, 1024, SORTING_INC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr1[0], arr1[1], arr1[2], arr1[1021], arr1[1022], arr1[1023]);

    log_colorcyan("\narray of size 32768 Test:\n");
    mtime_update(&time0);
    bubblesort_tail(arr2, 32768, SORTING_INC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr2[0], arr2[1], arr2[2], arr2[32765], arr2[32766], arr2[32767]);

    log_colorblue("\nTail: DecSort Test:\n");

    log_colorcyan("\narray of size 10 Test:\n");
    mtime_update(&time0);
    bubblesort_tail(arr0, 10, SORTING_DEC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9]);

    log_colorcyan("\narray of size 1024 Test:\n");
    mtime_update(&time0);
    bubblesort_tail(arr1, 1024, SORTING_DEC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr1[0], arr1[1], arr1[2], arr1[1021], arr1[1022], arr1[1023]);

    log_colorcyan("\narray of size 32768 Test:\n");
    mtime_update(&time0);
    bubblesort_tail(arr2, 32768, SORTING_DEC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr2[0], arr2[1], arr2[2], arr2[32765], arr2[32766], arr2[32767]);

    log_colorblue("\nTailOneCheck: IncSort Test:\n");
    bubblesort_tail(arr0, 10, SORTING_INC);
    arr0[10] = 0;
    printf("   [ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9], arr0[10]);
    bubblesort_tailonecheck(arr0, 11, SORTING_INC);
    printf("=> [ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9], arr0[10]);

    log_colorblue("\nTailOneCheck: DecSort Test:\n");
    bubblesort_tail(arr0, 11, SORTING_DEC);
    arr0[10] = 6;
    printf("   [ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9], arr0[10]);
    bubblesort_tailonecheck(arr0, 11, SORTING_DEC);
    printf("=> [ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9], arr0[10]);

    log_colorblue("\nHeadOneCheck: IncSort Test:\n");
    bubblesort_head(arr0, 11, SORTING_INC);
    arr0[0] = 9;
    printf("   [ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9], arr0[10]);
    bubblesort_headonecheck(arr0, 11, SORTING_INC);
    printf("=> [ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9], arr0[10]);

    log_colorblue("\nHeadOneCheck: DecSort Test:\n");
    bubblesort_head(arr0, 11, SORTING_DEC);
    arr0[0] = 3;
    printf("   [ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9], arr0[10]);
    bubblesort_headonecheck(arr0, 11, SORTING_DEC);
    printf("=> [ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9], arr0[10]);
}

void insertionsort_test()   //!!!
{
    log_colorgreen("\nStarting Insertion Sort Test:\n");

    srand(mtime_64seed());
    mtime_t time0 = MTIME_ZERO_INIT, time1 = MTIME_ZERO_INIT, dtime = MTIME_ZERO_INIT;
    int64_t arr0[] = { 9, 6, 7, 8, 2, 3, 0, 4, 1, 5 },
            arr1[1024], arr2[32768];

    for (int64_t i = 0; i < 1024; i++)
    {
        arr1[i] = rand() % 1024;
    }
    for (int64_t i = 0; i < 32768; i++)
    {
        arr2[i] = rand() % 32768;
    }

    log_colorblue("\nIncSort Test:\n");

    log_colorcyan("\narray of size 10 Test:\n");
    mtime_update(&time0);
    insertsort(arr0, 10, SORTING_INC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9]);

    log_colorcyan("\narray of size 1024 Test:\n");
    mtime_update(&time0);
    insertsort(arr1, 1024, SORTING_INC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr1[0], arr1[1], arr1[2], arr1[1021], arr1[1022], arr1[1023]);

    log_colorcyan("\narray of size 32768 Test:\n");
    mtime_update(&time0);
    insertsort(arr2, 32768, SORTING_INC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr2[0], arr2[1], arr2[2], arr2[32765], arr2[32766], arr2[32767]);

    log_colorblue("\nDecSort Test:\n");

    log_colorcyan("\narray of size 10 Test:\n");
    mtime_update(&time0);
    insertsort(arr0, 10, SORTING_DEC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9]);

    log_colorcyan("\narray of size 1024 Test:\n");
    mtime_update(&time0);
    insertsort(arr1, 1024, SORTING_DEC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr1[0], arr1[1], arr1[2], arr1[1021], arr1[1022], arr1[1023]);

    log_colorcyan("\narray of size 32768 Test:\n");
    mtime_update(&time0);
    insertsort(arr2, 32768, SORTING_DEC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr2[0], arr2[1], arr2[2], arr2[32765], arr2[32766], arr2[32767]);

    log_colorgreen("\nStarting Insertion Sort (Slow) Test:\n");

    log_colorblue("\nIncSort Test:\n");

    log_colorcyan("\narray of size 10 Test:\n");
    mtime_update(&time0);
    insertsort_slow(arr0, 10, SORTING_INC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9]);

    log_colorcyan("\narray of size 1024 Test:\n");
    mtime_update(&time0);
    insertsort_slow(arr1, 1024, SORTING_INC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr1[0], arr1[1], arr1[2], arr1[1021], arr1[1022], arr1[1023]);

    log_colorcyan("\narray of size 32768 Test:\n");
    mtime_update(&time0);
    insertsort_slow(arr2, 32768, SORTING_INC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr2[0], arr2[1], arr2[2], arr2[32765], arr2[32766], arr2[32767]);

    log_colorblue("\nDecSort Test:\n\n");

    log_colorcyan("array of size 10 Test:\n");
    mtime_update(&time0);
    insertsort_slow(arr0, 10, SORTING_DEC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld ]\n", arr0[0], arr0[1], arr0[2], arr0[3], arr0[4], arr0[5], arr0[6], arr0[7], arr0[8], arr0[9]);

    log_colorcyan("\narray of size 1024 Test:\n");
    mtime_update(&time0);
    insertsort_slow(arr1, 1024, SORTING_DEC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr1[0], arr1[1], arr1[2], arr1[1021], arr1[1022], arr1[1023]);

    log_colorcyan("\narray of size 32768 Test:\n");
    mtime_update(&time0);
    insertsort_slow(arr2, 32768, SORTING_DEC);
    mtime_update(&time1);
    dtime = mtime_deltamtime(time0, time1);
    mtime_printtime(dtime);
    printf("[ %ld %ld %ld ... %ld %ld %ld ]\n", arr2[0], arr2[1], arr2[2], arr2[32765], arr2[32766], arr2[32767]);
}

void mergesort_test()
{
    //!
}
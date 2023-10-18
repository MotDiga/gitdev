#include "benchmarks.h"

void benchmark(uint64_t arrsize)
{
    log_colorgreen("\nStarting Benchmark:\n");

    srand(time(NULL));
    mtime_t mtime0, mtime1, mdtime, mavrgtime;

    #define ARR_SIZE 1024
    real64_t *arr64[ARR_SIZE];
    real32_t *arr32[ARR_SIZE];

    //* real64_t ************************************************************************************************************************************************************************************

    for (size_t i = 0; i < ARR_SIZE; i++)
    {
        arr64[i] = (real64_t*)malloc(arrsize * sizeof(real64_t));
        if (arr64[i] == NULL)
        {
            LOG_FATAL(1, "unable to allocate memory for arr[%lu] == %p", i, arr64[i])
        }
    }

    //* qrsqrt64
    mtime_updatemtime(&mtime0);
    for (size_t i = 0; i < ARR_SIZE; i++)
    {
    	for (size_t j = 0; j < arrsize; j++)
    	{
    		arr64[i][j] = qrsqrt64((real64_t)rand());
    	}
    }
    mtime_updatemtime(&mtime1);
    mdtime = mtime_deltamtime(mtime0, mtime1);
    mavrgtime = mtime_avrgmtime(mdtime, ARR_SIZE * arrsize);

    fprintf(stdout, "\nqrsqrt64 finished in %12.9fs\neach operation tacks on avrg %.0fns\n\n",
        mdtime.secs, mavrgtime.secs * 1e+9);
    for (size_t i = 0; i < ARR_SIZE; i+=128)
    {
    	fprintf(stdout, "arr[%lu] = %e\n", i, arr64[rand()%ARR_SIZE][i]);
    }

    //* 1/sqrt
    mtime_updatemtime(&mtime0);
    for (size_t i = 0; i < ARR_SIZE; i++)
    {
    	for (size_t j = 0; j < arrsize; j++)
    	{
    		arr64[i][j] = 1/sqrt((real32_t)rand());
    	}
    }
    mtime_updatemtime(&mtime1);
    mdtime = mtime_deltamtime(mtime0, mtime1);
    mavrgtime = mtime_avrgmtime(mdtime, ARR_SIZE * arrsize);

    fprintf(stdout, "\n1/sqrt finished in %12.9fs\neach operation tacks on avrg %.0fns\n\n",
        mdtime.secs, mavrgtime.secs * 1e+9);
    for (size_t i = 0; i < ARR_SIZE; i+=128)
    {
    	fprintf(stdout, "arr[%lu] = %e\n", i, arr64[rand()%ARR_SIZE][i]);
    }

    //* qsqrt64
    mtime_updatemtime(&mtime0);
    for (size_t i = 0; i < ARR_SIZE; i++)
    {
        for (size_t j = 0; j < arrsize; j++)
        {
            arr64[i][j] = qsqrt64((real64_t)rand());
        }
    }
    mtime_updatemtime(&mtime1);
    mdtime = mtime_deltamtime(mtime0, mtime1);
    mavrgtime = mtime_avrgmtime(mdtime, ARR_SIZE * arrsize);

    fprintf(stdout, "\nqsqrt64 finished in %12.9fs\neach operation tacks on avrg %.0fns\n\n",
        mdtime.secs, mavrgtime.secs * 1e+9);
    for (size_t i = 0; i < ARR_SIZE; i+=128)
    {
        fprintf(stdout, "arr[%lu] = %e\n", i, arr64[rand()%ARR_SIZE][i]);
    }

    //* sqrt
    mtime_updatemtime(&mtime0);
    for (size_t i = 0; i < ARR_SIZE; i++)
    {
        for (size_t j = 0; j < arrsize; j++)
        {
            arr64[i][j] = sqrt((real64_t)rand());
        }
    }
    mtime_updatemtime(&mtime1);
    mdtime = mtime_deltamtime(mtime0, mtime1);
    mavrgtime = mtime_avrgmtime(mdtime, ARR_SIZE * arrsize);

    fprintf(stdout, "\nsqrt finished in %12.9fs\neach operation tacks on avrg %.0fns\n\n",
        mdtime.secs, mavrgtime.secs * 1e+9);
    for (size_t i = 0; i < ARR_SIZE; i+=128)
    {
        fprintf(stdout, "arr[%lu] = %e\n", i, arr64[rand()%ARR_SIZE][i]);
    }

    for (size_t i = 0; i < ARR_SIZE; i++)
    {
        free(arr64[i]);
    }

    //* real32_t ************************************************************************************************************************************************************************************

    for (size_t i = 0; i < ARR_SIZE; i++)
    {
        arr32[i] = (real32_t*)malloc(arrsize * sizeof(real32_t));
        if (arr32[i] == NULL)
        {
            LOG_FATAL(1, "unable to allocate memory for arr[%lu] == %p", i, arr32[i])
        }
    }

    //* qrsqrt32
    mtime_updatemtime(&mtime0);
    for (size_t i = 0; i < ARR_SIZE; i++)
    {
    	for (size_t j = 0; j < arrsize; j++)
    	{
    		arr32[i][j] = qrsqrt32((real32_t)rand());
    	}
    }
    mtime_updatemtime(&mtime1);
    mdtime = mtime_deltamtime(mtime0, mtime1);
    mavrgtime = mtime_avrgmtime(mdtime, ARR_SIZE * arrsize);

    fprintf(stdout, "\nqrsqrt32 finished in %12.9fs\neach operation tacks on avrg %.0fns\n\n",
        mdtime.secs, mavrgtime.secs * 1e+9);
    for (size_t i = 0; i < ARR_SIZE; i+=128)
    {
    	fprintf(stdout, "arr[%lu] = %e\n", i, arr32[rand()%ARR_SIZE][i]);
    }

    //* 1/sqrtf
    mtime_updatemtime(&mtime0);
    for (size_t i = 0; i < ARR_SIZE; i++)
    {
    	for (size_t j = 0; j < arrsize; j++)
    	{
    		arr32[i][j] = 1/sqrtf((real32_t)rand());
    	}
    }
    mtime_updatemtime(&mtime1);
    mdtime = mtime_deltamtime(mtime0, mtime1);
    mavrgtime = mtime_avrgmtime(mdtime, ARR_SIZE * arrsize);

    fprintf(stdout, "\n1/sqrtf finished in %12.9fs\neach operation tacks on avrg %.0fns\n\n",
        mdtime.secs, mavrgtime.secs * 1e+9);
    for (size_t i = 0; i < ARR_SIZE; i+=128)
    {
    	fprintf(stdout, "arr[%lu] = %e\n", i, arr32[rand()%ARR_SIZE][i]);
    }

    //* qsqrt32
    mtime_updatemtime(&mtime0);
    for (size_t i = 0; i < ARR_SIZE; i++)
    {
        for (size_t j = 0; j < arrsize; j++)
        {
            arr32[i][j] = qsqrt32((real32_t)rand());
        }
    }
    mtime_updatemtime(&mtime1);
    mdtime = mtime_deltamtime(mtime0, mtime1);
    mavrgtime = mtime_avrgmtime(mdtime, ARR_SIZE * arrsize);

    fprintf(stdout, "\nqsqrt32 finished in %12.9fs\neach operation tacks on avrg %.0fns\n\n",
        mdtime.secs, mavrgtime.secs * 1e+9);
    for (size_t i = 0; i < ARR_SIZE; i+=128)
    {
        fprintf(stdout, "arr[%lu] = %e\n", i, arr32[rand()%ARR_SIZE][i]);
    }

    //* sqrtf
    mtime_updatemtime(&mtime0);
    for (size_t i = 0; i < ARR_SIZE; i++)
    {
        for (size_t j = 0; j < arrsize; j++)
        {
            arr32[i][j] = sqrtf((real32_t)rand());
        }
    }
    mtime_updatemtime(&mtime1);
    mdtime = mtime_deltamtime(mtime0, mtime1);
    mavrgtime = mtime_avrgmtime(mdtime, ARR_SIZE * arrsize);

    fprintf(stdout, "\nsqrtf finished in %12.9fs\neach operation tacks on avrg %.0fns\n\n",
        mdtime.secs, mavrgtime.secs * 1e+9);
    for (size_t i = 0; i < ARR_SIZE; i+=128)
    {
        fprintf(stdout, "arr[%lu] = %e\n", i, arr32[rand()%ARR_SIZE][i]);
    }

    for (size_t i = 0; i < ARR_SIZE; i++)
    {
        free(arr32[i]);
    }

    fputs("\n***********************************************************************************************************************************************************************************\n",
        stdout);
}
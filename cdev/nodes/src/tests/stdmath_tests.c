#include "tests.h"


void ifacto32_test()
{
    log_colorgreen("\nStarting Factorial (32bit) Test:\n\n");

    mtime_t time0, time1 = time0 = MTIME_ZERO;
    real64_t err , tottime = 0.0;
    uint32_t i = 1U, facto_n = 1U;

    mtime_update(&time0);
    err = ifacto32(0U)/facto_n;
    mtime_update(&time1);
    tottime += mtime_delta(time0, time1);
    log_coloryellow("factorial[0] = %u\n", facto_n);
    for (; i <= 12U; i++)
    {
        facto_n *= i;
        mtime_update(&time0);
        err *= ifacto32(i)/facto_n;
        mtime_update(&time1);
        tottime += mtime_delta(time0, time1);
        log_coloryellow("factorial[%u] = %u\n", i, facto_n);
    }

    log_colorblue("facto32 %s\n", (err == 1.0) ? "Approved\n" : "Not Approved\n");
    log_colorblue("average time: %14.9lfs\n", tottime/13.0);
    log_colorblue("totale  time: %14.9lfs\n", tottime);
}
void ifacto64_test()
{
    log_colorgreen("\nStarting Factorial (64bit) Test:\n\n");

    mtime_t time0, time1 = time0 = MTIME_ZERO;
    real64_t err , tottime = 0.0;
    uint64_t i = 1UL, facto_n = 1UL;

    mtime_update(&time0);
    err = ifacto64(0UL)/facto_n;
    mtime_update(&time1);
    tottime += mtime_delta(time0, time1);
    log_coloryellow("factorial[0] = %lu\n", facto_n);
    for (; i <= 20UL; i++)
    {
        facto_n *= i;
        mtime_update(&time0);
        err *= ifacto64(i)/facto_n;
        mtime_update(&time1);
        tottime += mtime_delta(time0, time1);
        log_coloryellow("factorial[%lu] = %lu\n", i, facto_n);
    }

    log_colorblue("facto64 %s\n", (err == 1.0) ? "Approved" : "Not Approved");
    log_colorblue("average time: %14.9lfs\n", tottime/21.0);
    log_colorblue("totale  time: %14.9lfs\n", tottime);
}

void gcd32_test()
{
    log_colorgreen("\nStarting GCD (32bit) Test:\n\n");

    mtime_t time0, time1 = time0 = MTIME_ZERO;
    real64_t tottime = 0.0;
    uint32_t i = 1U, j, ii, jj, gcdij, n = 10000U;
    for (; i <= n; i++)
    {
        for (j = 1U; j <= i; j++)
        {
            mtime_update(&time0);
            gcdij = gcd32(i, j);
            mtime_update(&time1);
            tottime += mtime_delta(time0, time1);
            ii = i/gcdij, jj = j/gcdij;
            if ((ii*gcdij != i) || (jj*gcdij != j))
            {
                log_colorblue("gcd32 Not Approved\n");
                log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(i*(i-1U)/2U + j));
                log_colorblue("totale  time: %14.9lfs\n", tottime);
                return;
            }
        }
    }

    log_colorblue("gcd32 Approved\n");
    log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(n*n));
    log_colorblue("totale  time: %14.9lfs\n", tottime);
}
void gcd64_test()
{
    log_colorgreen("\nStarting GCD (64bit) Test:\n\n");

    mtime_t time0, time1 = time0 = MTIME_ZERO;
    real64_t tottime = 0.0;
    uint64_t i = 1UL, j, ii, jj, gcdij, n = 10000UL;
    for (; i <= n; i++)
    {
        for (j = 1UL; j <= i; j++)
        {
            mtime_update(&time0);
            gcdij = gcd64(i, j);
            mtime_update(&time1);
            tottime += mtime_delta(time0, time1);
            ii = i/gcdij, jj = j/gcdij;
            if ((ii*gcdij != i) || (jj*gcdij != j))
            {
                log_colorblue("gcd64 Not Approved\n");
                log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(i*(i-1UL)/2UL + j));
                log_colorblue("totale  time: %14.9lfs\n", tottime);
                return;
            }
        }
    }

    log_colorblue("gcd64 Approved\n");
    log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(n*n));
    log_colorblue("totale  time: %14.9lfs\n", tottime);
}
void lcm32_test()
{
    log_colorgreen("\nStarting LCD (64bit) Test:\n\n");

    mtime_t time0, time1 = time0 = MTIME_ZERO;
    real64_t tottime = 0.0;
    uint32_t i = 1UL, j, lcmij, n = 10000UL;
    for (; i <= n; i++)
    {
        for (j = 1UL; j <= i; j++)
        {
            mtime_update(&time0);
            lcmij = lcm32(i, j);
            mtime_update(&time1);
            tottime += mtime_delta(time0, time1);
            if (gcd32(lcmij/i, lcmij/j) != 1UL)
            {
                log_colorblue("lcm32 Not Approved\n");
                log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(i*(i-1UL)/2UL + j));
                log_colorblue("totale  time: %14.9lfs\n", tottime);
                return;
            }
        }
    }

    log_colorblue("lcm32 Approved\n");
    log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(n*n));
    log_colorblue("totale  time: %14.9lfs\n", tottime);
}
void lcm64_test()
{
    log_colorgreen("\nStarting LCD (64bit) Test:\n\n");

    mtime_t time0, time1 = time0 = MTIME_ZERO;
    real64_t tottime = 0.0;
    uint64_t i = 1UL, j, lcmij, n = 10000UL;
    for (; i <= n; i++)
    {
        for (j = 1UL; j <= i; j++)
        {
            mtime_update(&time0);
            lcmij = lcm64(i, j);
            mtime_update(&time1);
            tottime += mtime_delta(time0, time1);
            if (gcd64(lcmij/i, lcmij/j) != 1UL)
            {
                log_colorblue("lcm64 Not Approved\n");
                log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(i*(i-1UL)/2UL + j));
                log_colorblue("totale  time: %14.9lfs\n", tottime);
                return;
            }
        }
    }

    log_colorblue("lcm64 Approved\n");
    log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(n*n));
    log_colorblue("totale  time: %14.9lfs\n", tottime);
}

void isprime32_test()
{
    log_colorgreen("\nStarting Is Prime (32bit) Test:\n\n");
}
void isprime64_test()
{
    log_colorgreen("\nStarting Is Prime (64bit) Test:\n\n");
}
void fgp32_test()
{
    log_colorgreen("\nStarting FGP (32bit) Test:\n\n");
}
void fgp64_test()
{
    log_colorgreen("\nStarting FGP (32bit) Test:\n\n");
}

void nck32_test()
{
    log_colorgreen("\nStarting Combination (32bit) Test:\n\n");
}
void nck64_test()
{
    log_colorgreen("\nStarting Combination (64bit) Test:\n\n");
}
void npk32_test()
{
    log_colorgreen("\nStarting Permutation (32bit) Test:\n\n");
}
void npk64_test()
{
    log_colorgreen("\nStarting Permutation (64bit) Test:\n\n");
}

void iabs32_test()
{
    log_colorgreen("\nStarting IntAbs (32bit) Test:\n\n");

    mtime_t time0, time1 = time0 = MTIME_ZERO;
    real64_t tottime = 0.0;
    int32_t i, iabsi = 1.0, n = 10000000;
    for (i = -n; i <= n; i++)
    {
        mtime_update(&time0);
        iabsi = iabs32(i);
        mtime_update(&time1);
        tottime += mtime_delta(time0, time1);
        if (iabsi < 0)
        {
            log_colorblue("iabs32 Not Approved\n");
            log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(i + n + 1));
            log_colorblue("totale  time: %14.9lfs\n", tottime);
            return;
        }
    }

    log_colorblue("iabs32 Approved\n");
    log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(2*n + 1));
    log_colorblue("totale  time: %14.9lfs\n", tottime);
}
void iabs64_test()
{
    log_colorgreen("\nStarting IntAbs (64bit) Test:\n\n");

    mtime_t time0, time1 = time0 = MTIME_ZERO;
    real64_t tottime = 0.0;
    int64_t i, iabsi = 1.0, n = 10000000L;
    for (i = -n; i <= n; i++)
    {
        mtime_update(&time0);
        iabsi = iabs64(i);
        mtime_update(&time1);
        tottime += mtime_delta(time0, time1);
        if (iabsi < 0L)
        {
            log_colorblue("iabs64 Not Approved\n");
            log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(i + n + 1L));
            log_colorblue("totale  time: %14.9lfs\n", tottime);
            return;
        }
    }

    log_colorblue("iabs64 Approved\n");
    log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(2L*n + 1L));
    log_colorblue("totale  time: %14.9lfs\n", tottime);
}

void isign32_test()
{
    log_colorgreen("\nStarting IntSign (32bit) Test:\n\n");

    mtime_t time0, time1 = time0 = MTIME_ZERO;
    real64_t tottime = 0.0;
    int32_t i, isigni = 1.0, n = 10000000;
    for (i = -n; i <= n; i++)
    {
        mtime_update(&time0);
        isigni = isign32(i);
        mtime_update(&time1);
        tottime += mtime_delta(time0, time1);
        if (isigni*isigni != 1)
        {
            log_colorblue("isign32 Not Approved\n");
            log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(i + n + 1));
            log_colorblue("totale  time: %14.9lfs\n", tottime);
            return;
        }
    }

    log_colorblue("isign32 Approved\n");
    log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(2*n + 1));
    log_colorblue("totale  time: %14.9lfs\n", tottime);
}
void isign64_test()
{
    log_colorgreen("\nStarting IntSign (64bit) Test:\n\n");

    mtime_t time0, time1 = time0 = MTIME_ZERO;
    real64_t tottime = 0.0;
    int64_t i, isigni = 1.0, n = 10000000L;
    for (i = -n; i <= n; i++)
    {
        mtime_update(&time0);
        isigni *= isign64(i);
        mtime_update(&time1);
        tottime += mtime_delta(time0, time1);
        if (isigni*isigni != 1L)
        {
            log_colorblue("isign64 Not Approved\n");
            log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(i + n + 1L));
            log_colorblue("totale  time: %14.9lfs\n", tottime);
            return;
        }
    }

    log_colorblue("isign64 Approved\n");
    log_colorblue("average time: %14.9lfs\n", tottime/(real64_t)(2L*n + 1L));
    log_colorblue("totale  time: %14.9lfs\n", tottime);
}

//********************

static real64_t _fun32test_fornotzero(loading, beg, end, dx, err_x, maxerr_x, toterr_x, maxmaxerr_x, cn, N, cp100, d100_p100, _fun, _funm1)
const string_t loading; real32_t beg, end, dx, *err_x, *maxerr_x, *toterr_x, *maxmaxerr_x, (*_fun)(real32_t), (*_funm1)(real32_t); uint64_t *cn, N, *cp100, d100_p100;
{
    mtime_t time0, time1 = time0 = MTIME_ZERO;
    real64_t totaletime = 0.0;
    real32_t x, fun_x, cerr_x;
    uint64_t lp100;         //* last %
    *err_x = 0.0f, *maxerr_x = -1.0f;

    for (x = beg; x < end; x+=dx)
    {
        mtime_update(&time0);
        fun_x = _fun(x);
        mtime_update(&time1);
        totaletime += mtime_delta(time0, time1);
        if ((cerr_x = floorf(fabsf(_funm1(fun_x) - x)/fabsf(x)*1E+6f)*1E-6f) > *maxerr_x)
        {
            *maxerr_x = cerr_x;
        }   *err_x += cerr_x;
        lp100 = *cp100, (*cn)++, *cp100 = ((*cn)*d100_p100)/N;
        if (*cp100 != lp100)
        {
            log_real32test_loading(loading, *cn, N, log_colorblue);
        }
    }
    if (*maxerr_x > *maxmaxerr_x)
    {
        *maxmaxerr_x = *maxerr_x;
    }   *toterr_x += *err_x;

    return totaletime;
}
static real64_t _fun32test_zero(err_x, maxerr_x, toterr_x, maxmaxerr_x, cn, _fun, _funm1)
real32_t *err_x, *maxerr_x, *toterr_x, *maxmaxerr_x, (*_fun)(real32_t), (*_funm1)(real32_t); uint64_t *cn;
{
    mtime_t time0, time1 = time0 = MTIME_ZERO;
    real32_t fun_x, cerr_x;

    mtime_update(&time0);
    fun_x = _fun(0.0f);
    mtime_update(&time1);
    if ((cerr_x = floorf(fabsf(_funm1(fun_x))*1E+6f)*1E-6f) > *maxerr_x)
    {
        *maxerr_x = cerr_x;
    }   *err_x += cerr_x, *toterr_x += cerr_x;
    if (*maxerr_x > *maxmaxerr_x)
    {
        *maxmaxerr_x = *maxerr_x;
    }   (*cn)++;

    return mtime_delta(time0, time1);
}
static uint64_t _fun32test_calculate_n(real32_t beg, real32_t end, real32_t dx)
{
    uint64_t n;
    for (n = 0L; beg < end; beg+=dx, n++);
    return n;
}
static real64_t _fun64test_fornotzero(const string_t loading, real64_t beg, real64_t end, real64_t dx, real64_t *err_x, real64_t *maxerr_x,
    real64_t *toterr_x, real64_t *maxmaxerr_x, uint64_t *cn, uint64_t N, uint64_t *cp100, uint64_t d100_p100, real64_t (*_fun)(real64_t), real64_t (*_funm1)(real64_t))
{
    mtime_t time0, time1 = time0 = MTIME_ZERO;
    real64_t totaletime = 0.0;
    real64_t x, fun_x, cerr_x;
    uint64_t lp100;         //* last %
    *err_x = 0.0, *maxerr_x = -1.0;

    for (x = beg; x < end; x+=dx)
    {
        mtime_update(&time0);
        fun_x = _fun(x);
        mtime_update(&time1);
        totaletime += mtime_delta(time0, time1);
        if ((cerr_x = floor(fabs(_funm1(fun_x) - x)/fabs(x)*1E+15)*1E-15) > *maxerr_x)
        {
            *maxerr_x = cerr_x;
        }   *err_x += cerr_x;
        lp100 = *cp100, (*cn)++, *cp100 = ((*cn)*d100_p100)/N;
        if (*cp100 != lp100)
        {
            log_real64test_loading(loading, *cn, N, log_colorblue);
        }
    }
    if (*maxerr_x > *maxmaxerr_x)
    {
        *maxmaxerr_x = *maxerr_x;
    }   *toterr_x += *err_x;

    return totaletime;
}
static real64_t _fun64test_zero(real64_t *err_x, real64_t *maxerr_x, real64_t *toterr_x, real64_t *maxmaxerr_x, uint64_t *cn, real64_t (*_fun)(real64_t), real64_t (*_funm1)(real64_t))
{
    mtime_t time0, time1 = time0 = MTIME_ZERO;
    real64_t fun_x, cerr_x;

    mtime_update(&time0);
    fun_x = _fun(0.0);
    mtime_update(&time1);
    if ((cerr_x = floor(fabs(_funm1(fun_x))*1E+15)*1E-15) > *maxerr_x)
    {
        *maxerr_x = cerr_x;
    }   *err_x += cerr_x, *toterr_x += cerr_x;
    if (*maxerr_x > *maxmaxerr_x)
    {
        *maxmaxerr_x = *maxerr_x;
    }   (*cn)++;

    return mtime_delta(time0, time1);
}
static uint64_t _fun64test_calculate_n(real64_t beg, real64_t end, real64_t dx)    //! REMOVE
{
    uint64_t n;
    for (n = 0L; beg < end; beg+=dx, n++);
    return n;
}
//********************
static inline real32_t xsqr32(real32_t x)
{
    return x*x;
}
static inline real64_t xsqr64(real64_t x)
{
    return x*x;
}
static real64_t _sqrt32test(loading, dx, end, dx2, toterr_x, maxmaxerr_x, dp100, N, _sqrt32)
const string_t loading; real64_t dp100; real32_t dx, end, dx2, *toterr_x, *maxmaxerr_x, (*_sqrt32)(real32_t); uint64_t *N;
{
    real64_t totaletime = 0.0;
    real32_t err_x, maxerr_x;
    uint64_t cn = 0L,           //* current n
    cp100 = 0L,                 //* current %
    d100_p100 = 100.0/dp100,    //* 100/(delta %)
    n01 = 0L, n2 = 0L;
    n01 = _fun32test_calculate_n( 0.0f,    1.0f, dx),
    n2  = _fun32test_calculate_n( 1.0f, end+dx2, dx2);
    *N = n01 + n2;
    *toterr_x = 0.0f, *maxmaxerr_x = -1.0f;

    totaletime += _fun32test_fornotzero(loading, dx, 1.0f, dx, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _sqrt32, xsqr32);
    log_real32test_progress(loading, maxerr_x, err_x, 1L, cn, *N, log_colorblue);
    totaletime += _fun32test_zero(&err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, _sqrt32, xsqr32);
    log_real32test_progress(loading, maxerr_x, err_x, 0L, cn, *N, log_colorblue);

    totaletime += _fun32test_fornotzero(loading, 1.0f, end+dx2, dx2, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _sqrt32, xsqr32);
    log_real32test_progress(loading, maxerr_x, err_x, 2L, cn, *N, log_colorblue);
    puts("");

    return totaletime;
}
void sqrt32_test()
{
    log_colorwhite("\nStarting Sqrt (32bit) Test:\n\n");

    real32_t dx = 2E-7f, end = 1.0f/dx, dx2 = 1.0f, toterr_x, maxmaxerr_x;
    real64_t dp100 = 0.123;
    real64_t totaletime, cmptime;
    uint64_t N;

    log_colorblue("Calculating sqrtf:\n");
    cmptime    = _sqrt32test("Progress: ", dx, end, dx2, &toterr_x, &maxmaxerr_x, dp100, &N, sqrtf);
    log_real32test_conclusion(maxmaxerr_x, toterr_x, cmptime, cmptime, N);
    log_colorblue("\n\nCalculating sqrt32:\n");
    totaletime = _sqrt32test("Progress: ", dx, end, dx2, &toterr_x, &maxmaxerr_x, dp100, &N, sqrt32);
    log_real32test_conclusion(maxmaxerr_x, toterr_x, totaletime, cmptime, N);
}
static real64_t _sqrt64test(loading, dx, end, dx2, toterr_x, maxmaxerr_x, dp100, N, _sqrt64)
const string_t loading; real64_t dx, end, dx2, *toterr_x, *maxmaxerr_x, dp100, (*_sqrt64)(real64_t); uint64_t *N;
{
    real64_t totaletime = 0.0;
    real64_t err_x, maxerr_x;
    uint64_t cn = 0L,           //* current n
    cp100 = 0L,                 //* current %
    d100_p100 = 100.0/dp100,    //* 100/(delta %)
    n01 = 0L, n2 = 0L;
    n01 = _fun64test_calculate_n( 0.0,     1.0, dx),
    n2  = _fun64test_calculate_n( 1.0, end+dx2, dx2);
    *N = n01 + n2;
    *toterr_x = 0.0, *maxmaxerr_x = -1.0;

    totaletime += _fun64test_fornotzero(loading, dx, 1.0, dx, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _sqrt64, xsqr64);
    log_real64test_progress(loading, maxerr_x, err_x, 1L, cn, *N, log_colorblue);
    totaletime += _fun64test_zero(&err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, _sqrt64, xsqr64);
    log_real64test_progress(loading, maxerr_x, err_x, 0L, cn, *N, log_colorblue);

    totaletime += _fun64test_fornotzero(loading, 1.0, end+dx2, dx2, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _sqrt64, xsqr64);
    log_real64test_progress(loading, maxerr_x, err_x, 2L, cn, *N, log_colorblue);
    puts("");

    return totaletime;
}
void sqrt64_test()
{
    log_colorwhite("\nStarting Sqrt (64bit) Test:\n\n");

    real64_t dx = 2E-7, end = 1.0/dx, dx2 = 1.0, toterr_x, maxmaxerr_x, dp100 = 0.123;
    real64_t totaletime, cmptime;
    uint64_t N;

    log_colorblue("Calculating sqrt:\n");
    cmptime    = _sqrt64test("Progress: ", dx, end, dx2, &toterr_x, &maxmaxerr_x, dp100, &N, sqrt);
    log_real64test_conclusion(maxmaxerr_x, toterr_x, cmptime, cmptime, N);
    log_colorblue("\n\nCalculating sqrt64:\n");
    totaletime = _sqrt64test("Progress: ", dx, end, dx2, &toterr_x, &maxmaxerr_x, dp100, &N, sqrt64);
    log_real64test_conclusion(maxmaxerr_x, toterr_x, totaletime, cmptime, N);
}
static real64_t _exp32test(loading, dx, end, dx2, toterr_x, maxmaxerr_x, dp100, N, _exp32)
const string_t loading; real64_t dp100; real32_t dx, end, dx2, *toterr_x, *maxmaxerr_x, (*_exp32)(real32_t); uint64_t *N;
{
    real64_t totaletime = 0.0;
    real32_t err_x, maxerr_x;
    uint64_t cn = 0L,           //* current n
    cp100 = 0L,                 //* current %
    d100_p100 = 100.0/dp100,    //* 100/(delta %)
    n0 = 0L, n1 = 0L, n2 = 0L, n3 = 0L;
    n0 = _fun32test_calculate_n( -end,  -10.0, dx2),
    n1 = _fun32test_calculate_n(-10.0,    0.0, dx) + 1L,
    n2 = _fun32test_calculate_n(  0.0,   10.0, dx),
    n3 = _fun32test_calculate_n( 10.0, end+dx, dx2);
    *N = n0 + n1 + n2 + n3;
    *toterr_x = 0.0f, *maxmaxerr_x = -1.0f;

    totaletime += _fun32test_fornotzero(loading, -end, -10.0f, dx2, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _exp32, logf);
    log_real32test_progress(loading, maxerr_x, err_x, 0L, cn, *N, log_colorblue);

    totaletime += _fun32test_fornotzero(loading, -10.0f, 0.0f, dx, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _exp32, logf);
    totaletime += _fun32test_zero(&err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, _exp32, logf);
    log_real32test_progress(loading, maxerr_x, err_x, 1L, cn, *N, log_colorblue);

    totaletime += _fun32test_fornotzero(loading, dx, 10.0f, dx, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _exp32, logf);
    log_real32test_progress(loading, maxerr_x, err_x, 2L, cn, *N, log_colorblue);

    totaletime += _fun32test_fornotzero(loading, 10.0f, end+dx2, dx2, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _exp32, logf);
    log_real32test_progress(loading, maxerr_x, err_x, 3L, cn, *N, log_colorblue);
    puts("");

    return totaletime;
}
void exp32_test()
{
    log_colorwhite("\nStarting Exp (32bit) Test:\n\n");

    real32_t dx = 5E-7f, end = 88.0f, dx2 = dx*(end - 10.0f)/10.0f, toterr_x, maxmaxerr_x;
    real64_t dp100 = 0.123;
    real64_t totaletime, cmptime;
    uint64_t N;

    log_colorblue("Calculating expf:\n");
    cmptime    = _exp32test("Progress: ", dx, end, dx2, &toterr_x, &maxmaxerr_x, dp100, &N, expf);
    log_real32test_conclusion(maxmaxerr_x, toterr_x, cmptime, cmptime, N);
    log_colorblue("\n\nCalculating exp32:\n");
    totaletime = _exp32test("Progress: ", dx, end, dx2, &toterr_x, &maxmaxerr_x, dp100, &N, exp32);
    log_real32test_conclusion(maxmaxerr_x, toterr_x, totaletime, cmptime, N);
}
static real64_t _exp64test(loading, dx, end, dx2, toterr_x, maxmaxerr_x, dp100, N, _exp64)
const string_t loading; real64_t dx, end, dx2, *toterr_x, *maxmaxerr_x, dp100, (*_exp64)(real64_t); uint64_t *N;
{
    real64_t totaletime = 0.0;
    real64_t err_x, maxerr_x;
    uint64_t cn = 0L,           //* current n
    cp100 = 0L,                 //* current %
    d100_p100 = 100.0/dp100,    //* 100/(delta %)
    n0 = 0L, n1 = 0L, n2 = 0L, n3 = 0L;
    n0 = _fun64test_calculate_n( -end,  -10.0, dx2),
    n1 = _fun64test_calculate_n(-10.0,    0.0, dx) + 1L,
    n2 = _fun64test_calculate_n(  0.0,   10.0, dx),
    n3 = _fun64test_calculate_n( 10.0, end+dx, dx2);
    *N = n0 + n1 + n2 + n3;
    *toterr_x = 0.0, *maxmaxerr_x = -1.0;

    totaletime += _fun64test_fornotzero(loading, -end, -10.0, dx2, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _exp64, log);
    log_real64test_progress(loading, maxerr_x, err_x, 0L, cn, *N, log_colorblue);

    totaletime += _fun64test_fornotzero(loading, -10.0, 0.0, dx, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _exp64, log);
    totaletime += _fun64test_zero(&err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, _exp64, log);
    log_real64test_progress(loading, maxerr_x, err_x, 1L, cn, *N, log_colorblue);

    totaletime += _fun64test_fornotzero(loading, dx, 10.0, dx, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _exp64, log);
    log_real64test_progress(loading, maxerr_x, err_x, 2L, cn, *N, log_colorblue);

    totaletime += _fun64test_fornotzero(loading, 10.0, end+dx2, dx2, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _exp64, log);
    log_real64test_progress(loading, maxerr_x, err_x, 3L, cn, *N, log_colorblue);
    puts("");

    return totaletime;
}
void exp64_test()
{
    log_colorwhite("\nStarting Exp (64bit) Test:\n\n");

    real64_t dx = 5E-7, end = 709.0, dx2 = dx*(end - 10.0)/10.0, toterr_x, maxmaxerr_x, dp100 = 0.123;
    real64_t totaletime, cmptime;
    uint64_t N;

    log_colorblue("Calculating exp:\n");
    cmptime    = _exp64test("Progress: ", dx, end, dx2, &toterr_x, &maxmaxerr_x, dp100, &N, exp);
    log_real64test_conclusion(maxmaxerr_x, toterr_x, cmptime, cmptime, N);
    log_colorblue("\n\nCalculating exp64:\n");
    totaletime = _exp64test("Progress: ", dx, end, dx2, &toterr_x, &maxmaxerr_x, dp100, &N, exp64);
    log_real64test_conclusion(maxmaxerr_x, toterr_x, totaletime, cmptime, N);
}
static real64_t _ln32test(loading, dx, end, dx2, toterr_x, maxmaxerr_x, dp100, N, _ln32)
const string_t loading; real64_t dp100; real32_t dx, end, dx2, *toterr_x, *maxmaxerr_x, (*_ln32)(real32_t); uint64_t *N;
{
    real64_t totaletime = 0.0;
    real32_t err_x, maxerr_x;
    uint64_t cn = 0L,           //* current n
    cp100 = 0L,                 //* current %
    d100_p100 = 100.0/dp100,    //* 100/(delta %)
    n0 = 0L, n1 = 0L;
    n0 = _fun32test_calculate_n(   dx,   R32_E, dx),
    n1 = _fun32test_calculate_n(R32_E, end+dx2, dx2);
    *N = n0 + n1;
    *toterr_x = 0.0f, *maxmaxerr_x = -1.0f;

    totaletime += _fun32test_fornotzero(loading, dx, R32_E, dx, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _ln32, expf);
    log_real32test_progress(loading, maxerr_x, err_x, 0L, cn, *N, log_colorblue);

    totaletime += _fun32test_fornotzero(loading, R32_E, end+dx2, dx2, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _ln32, expf);
    log_real32test_progress(loading, maxerr_x, err_x, 1L, cn, *N, log_colorblue);
    puts("");

    return totaletime;
}
void ln32_test()
{
    log_colorwhite("\nStarting Ln (32bit) Test:\n\n");

    real32_t dx = 5E-7f, end = 1.0f/dx, dx2 = 1.0f, toterr_x, maxmaxerr_x;
    real64_t dp100 = 0.123;
    real64_t totaletime, cmptime;
    uint64_t N;

    log_colorblue("Calculating logf:\n");
    cmptime    = _ln32test("Progress: ", dx, end, dx2, &toterr_x, &maxmaxerr_x, dp100, &N, logf);
    log_real32test_conclusion(maxmaxerr_x, toterr_x, cmptime, cmptime, N);
    log_colorblue("\n\nCalculating ln32:\n");
    totaletime = _ln32test("Progress: ", dx, end, dx2, &toterr_x, &maxmaxerr_x, dp100, &N, ln32);
    log_real32test_conclusion(maxmaxerr_x, toterr_x, totaletime, cmptime, N);
}
static real64_t _ln64test(loading, dx, end, dx2, toterr_x, maxmaxerr_x, dp100, N, _ln64)
const string_t loading; real64_t dx, end, dx2, *toterr_x, *maxmaxerr_x, dp100, (*_ln64)(real64_t); uint64_t *N;
{
    real64_t totaletime = 0.0;
    real64_t err_x, maxerr_x;
    uint64_t cn = 0L,           //* current n
    cp100 = 0L,                 //* current %
    d100_p100 = 100.0/dp100,    //* 100/(delta %)
    n0 = 0L, n1 = 0L;
    n0 = _fun64test_calculate_n(   dx,   R64_E, dx),
    n1 = _fun64test_calculate_n(R64_E, end+dx2, dx2);
    *N = n0 + n1;
    *toterr_x = 0.0, *maxmaxerr_x = -1.0;

    totaletime += _fun64test_fornotzero(loading, dx, R64_E, dx, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _ln64, exp);
    log_real64test_progress(loading, maxerr_x, err_x, 0L, cn, *N, log_colorblue);

    totaletime += _fun64test_fornotzero(loading, R64_E, end+dx2, dx2, &err_x, &maxerr_x, toterr_x, maxmaxerr_x, &cn, *N, &cp100, d100_p100, _ln64, exp);
    log_real64test_progress(loading, maxerr_x, err_x, 1L, cn, *N, log_colorblue);
    puts("");

    return totaletime;
}
void ln64_test()
{
    log_colorwhite("\nStarting Ln (64bit) Test:\n\n");

    real64_t dx = 1E-7, end = 1.0/dx, dx2 = 1.0, toterr_x, maxmaxerr_x, dp100 = 0.123;
    real64_t totaletime, cmptime;
    uint64_t N;

    log_colorblue("Calculating log:\n");
    cmptime    = _ln64test("Progress: ", dx, end, dx2, &toterr_x, &maxmaxerr_x, dp100, &N, log);
    log_real64test_conclusion(maxmaxerr_x, toterr_x, cmptime, cmptime, N);
    log_colorblue("\n\nCalculating ln64:\n");
    totaletime = _ln64test("Progress: ", dx, end, dx2, &toterr_x, &maxmaxerr_x, dp100, &N, ln64);
    log_real64test_conclusion(maxmaxerr_x, toterr_x, totaletime, cmptime, N);
}
//*
static real32_t _xexp32_x(real32_t x)
{
    return x*expf(x);
}
static real64_t _xexp64_x(real64_t x)
{
    return x*exp(x);
}
void lambertw0_32_test()
{
    log_colorwhite("\nStarting Lambert W<0> (32bit) Test:\n\n");

    auto real64_t _lambertw0test(real32_t (*_lambertw0_32)(real32_t));

    real32_t dx = 5E-7, end = 1.0/dx, dx2 = 1.0, end2 = end/dx, toterr_x, maxmaxerr_x;
    real64_t dp100 = 0.123;
    real64_t totaletime, cmptime;
    uint64_t N;

    log_colorblue("Calculating lambertw0_32:\n");
    cmptime    = _lambertw0test(lambertw0_32);
    log_real32test_conclusion(maxmaxerr_x, toterr_x, cmptime, cmptime, N);
    
    real64_t _lambertw0test(real32_t (*_lambertw0_32)(real32_t))
    {
        real64_t totaletime = 0.0;
        real32_t err_x, maxerr_x;
        uint64_t cn = 0L, cp100 = 0L, d100_p100 = 100.0/dp100,
        n0 = 0L, n1 = 0L, n2 = 0L;
        n0 = _fun32test_calculate_n(-R32_1_E,     dx, dx),
        n1 = _fun32test_calculate_n(      dx,   10.0f, dx),
        n2 = _fun32test_calculate_n(    10.0f, end+dx, dx2);
        N = n0 + n1 + n2;
        toterr_x = 0.0f, maxmaxerr_x = -1.0f;

        totaletime += _fun32test_fornotzero("Loading: ", -R32_1_E, 0.0f, dx, &err_x, &maxerr_x, &toterr_x, &maxmaxerr_x, &cn, N, &cp100, d100_p100, _lambertw0_32, _xexp32_x);
        totaletime += _fun32test_zero(&err_x, &maxerr_x, &toterr_x, &maxmaxerr_x, &cn, _lambertw0_32, _xexp32_x);
        log_real32test_progress("Loading: ", maxerr_x, err_x, 0L, cn, N, log_colorblue);

        totaletime += _fun32test_fornotzero("Loading: ", dx, 10.0f, dx, &err_x, &maxerr_x, &toterr_x, &maxmaxerr_x, &cn, N, &cp100, d100_p100, _lambertw0_32, _xexp32_x);
        log_real32test_progress("Loading: ", maxerr_x, err_x, 1L, cn, N, log_colorblue);

        totaletime += _fun32test_fornotzero("Loading: ", 10.0f+dx, end+dx2, dx2, &err_x, &maxerr_x, &toterr_x, &maxmaxerr_x, &cn, N, &cp100, d100_p100, _lambertw0_32, _xexp32_x);
        log_real32test_progress("Loading: ", maxerr_x, err_x, 2L, cn, N, log_colorblue);
        log_colorblue("\x1b[100DComplete: 100.000%%\n");
    //!    for (i = 1.0, end2 = 1.0/(dx*dx); x <= end2; i+=dx2)
    //!    {
    //!        x = end + i*i;
    //!        mtime_update(&time0);
    //!        w = lambertw0_32(x);
    //!        mtime_update(&time1);
    //!        wexp_w = w*exp(w);
    //!        tottime += mtime_delta(time0, time1);
    //!        tmp = floor(fabs(wexp_w - x)/fabs(x)*1E+15)*1E-15;
    //!        if (tmp > maxdelta_x)
    //!        {
    //!            maxdelta_x = tmp;
    //!        }
    //!        delta_x += tmp;
    //!    }
    //!    n += sqrt(1.0/dx);

        return totaletime;
    }
}
void lambertw0_64_test()
{
    log_colorwhite("\nStarting Lambert W<0> (64bit) Test:\n\n");

    auto real64_t _lambertw0test(real64_t (*_lambertw0_64)(real64_t));

    real64_t dx = 3E-7, end = 1.0/dx, dx2 = 1.0, end2 = end/dx, toterr_x, maxmaxerr_x, dp100 = 0.123;
    real64_t totaletime, cmptime;
    uint64_t N;

    log_colorblue("Calculating lambertw0_64:\n");
    cmptime    = _lambertw0test(lambertw0_64);
    log_real64test_conclusion(maxmaxerr_x, toterr_x, cmptime, cmptime, N);

    real64_t _lambertw0test(real64_t (*_lambertw0_64)(real64_t))
    {
        real64_t _totaletime = 0.0;
        real64_t err_x, maxerr_x;
        uint64_t cn = 0L, cp100 = 0L, d100_p100 = 100.0/dp100,
        n0 = 0L, n1 = 0L, n2 = 0L;
        n0 = R64_1_E/dx + 2.0,
        n1 = 10.0/dx + 1.0,
        n2 = (end - 10.0) + 1.0;
        N = n0 + n1 + n2;
        toterr_x = 0.0, maxmaxerr_x = -1.0;

        _totaletime += _fun64test_fornotzero("Loading: ", -R64_1_E, 0.0, dx, &err_x, &maxerr_x, &toterr_x, &maxmaxerr_x, &cn, N, &cp100, d100_p100, _lambertw0_64, _xexp64_x);
        _totaletime += _fun64test_zero(&err_x, &maxerr_x, &toterr_x, &maxmaxerr_x, &cn, _lambertw0_64, _xexp64_x);
        log_real64test_progress("Loading: ", maxerr_x, err_x, 0L, cn, N, log_colorblue);

        _totaletime += _fun64test_fornotzero("Loading: ", dx, 10.0, dx, &err_x, &maxerr_x, &toterr_x, &maxmaxerr_x, &cn, N, &cp100, d100_p100, _lambertw0_64, _xexp64_x);
        log_real64test_progress("Loading: ", maxerr_x, err_x, 1L, cn, N, log_colorblue);

        _totaletime += _fun64test_fornotzero("Loading: ", 10.0+dx, end+dx2, dx2, &err_x, &maxerr_x, &toterr_x, &maxmaxerr_x, &cn, N, &cp100, d100_p100, _lambertw0_64, _xexp64_x);
        log_real64test_progress("Loading: ", maxerr_x, err_x, 2L, cn, N, log_colorblue);
        log_colorblue("\x1b[100DComplete: 100.000%%\n");
    //!    for (i = 1.0, end2 = 1.0/(dx*dx); x <= end2; i+=dx2)
    //!    {
    //!        x = end + i*i;
    //!        mtime_update(&time0);
    //!        w = lambertw0_64(x);
    //!        mtime_update(&time1);
    //!        wexp_w = w*exp(w);
    //!        tottime += mtime_delta(time0, time1);
    //!        tmp = floor(fabs(wexp_w - x)/fabs(x)*1E+15)*1E-15;
    //!        if (tmp > maxdelta_x)
    //!        {
    //!            maxdelta_x = tmp;
    //!        }
    //!        delta_x += tmp;
    //!    }
    //!    n += sqrt(1.0/dx);

        return _totaletime;
    }
}
void lambertwm1_32_test()
{
    log_colorwhite("\nStarting Lambert W<-1> (32bit) Test:\n\n");

    auto real64_t _lambertwm1test(real32_t (*_lambertwm1_32)(real32_t));

    real32_t dx = 5E-7, toterr_x, maxmaxerr_x;
    real64_t dp100 = 0.123;
    real64_t totaletime, cmptime;
    uint64_t N;

    log_colorblue("Calculating lambertwm1_32:\n");
    cmptime    = _lambertwm1test(lambertwm1_32);
    log_real32test_conclusion(maxmaxerr_x, toterr_x, cmptime, cmptime, N);

    real64_t _lambertwm1test(real32_t (*_lambertwm1_32)(real32_t))
    {
        real64_t _totaletime = 0.0;
        real32_t err_x, maxerr_x;
        uint64_t cn = 0L, cp100 = 0L, d100_p100 = 100.0/dp100;
        N = _fun32test_calculate_n(-R32_1_E, dx, dx);
        toterr_x = 0.0f, maxmaxerr_x = -1.0f;

        _totaletime = _fun32test_fornotzero("Loading: ", -R32_1_E, 0.0f, dx, &err_x, &maxerr_x, &toterr_x, &maxmaxerr_x, &cn, N, &cp100, d100_p100, _lambertwm1_32, _xexp32_x);
        log_real32test_progress("Loading: ", maxerr_x, err_x, 0L, cn, N, log_colorblue);
        log_colorblue("\x1b[100DComplete: 100.000%%\n");

        return _totaletime;
    }
}
void lambertwm1_64_test()
{
    log_colorwhite("\nStarting Lambert W<-1> (64bit) Test:\n\n");

    auto real64_t _lambertwm1test(real64_t (*_lambertwm1_64)(real64_t));

    real64_t dx = 1E-8, toterr_x, maxmaxerr_x, dp100 = 0.123;
    real64_t totaletime, cmptime;
    uint64_t N;

    log_colorblue("Calculating lambertwm1_64:\n");
    cmptime    = _lambertwm1test(lambertwm1_64);
    log_real64test_conclusion(maxmaxerr_x, toterr_x, cmptime, cmptime, N);

    real64_t _lambertwm1test(real64_t (*_lambertwm1_64)(real64_t))
    {
        real64_t _totaletime = 0.0;
        real64_t err_x, maxerr_x;
        uint64_t cn = 0L, cp100 = 0L, d100_p100 = 100.0/dp100;
        N = _fun64test_calculate_n(-R64_1_E, dx, dx);
        toterr_x = 0.0, maxmaxerr_x = -1.0;

        _totaletime = _fun64test_fornotzero("Loading: ", -R64_1_E, 0.0, dx, &err_x, &maxerr_x, &toterr_x, &maxmaxerr_x, &cn, N, &cp100, d100_p100, _lambertwm1_64, _xexp64_x);
        log_real64test_progress("Loading: ", maxerr_x, err_x, 0L, cn, N, log_colorblue);
        log_colorblue("\x1b[100DComplete: 100.000%%\n");

        return _totaletime;
    }
}
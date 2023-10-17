#include "stdlog.h"


static char_t _log_configuration[1024] = {0};
void log_config(const string_t logconfiguration, ...)   //! remove args
{
    va_list args;
    va_start(args, logconfiguration);
    vsprintf(_log_configuration, logconfiguration, args);
    va_end(args);
}
void log_trace(const string_t format, ...)
{
    va_list args;
    va_start(args, format);
    vfprintf(stdout, format, args);
    va_end(args);
}
void log_info(const string_t format, ...)
{
    fprintf(stdout, "\x1b[32mInfo :");

    va_list args;
    va_start(args, format);
    vfprintf(stdout, format, args);
    va_end(args);

    fprintf(stdout, "\x1b[0m");
}
void log_suposition(const string_t format, ...)
{
    fprintf(stdout, "\x1b[34mSuposition: ");

    va_list args;
    va_start(args, format);
    vfprintf(stdout, format, args);
    va_end(args);

    fprintf(stdout, "\x1b[0m");
}
void log_warning(const string_t format, ...)
{
    fprintf(stderr, "\x1b[33mWarning: ");

    va_list args;
    va_start(args, format);
    vfprintf(stderr, format, args);
    va_end(args);

    fprintf(stderr, "\x1b[0m");
}
void log_error(const string_t format, ...)
{
    fprintf(stderr, "\x1b[35mError: ");

    va_list args;
    va_start(args, format);
    vfprintf(stderr, format, args);
    va_end(args);

    fprintf(stderr, "\x1b[0m\n");
}
void log_fatal(const int32_t exitstatus, const string_t format, ...)
{
    fprintf(stderr, "\x1b[1;7;41mFatal Error: ");

    va_list args;
    va_start(args, format);
    vfprintf(stderr, format, args);
    va_end(args);

    fprintf(stderr, " \x1b[0m\n");

    exit(exitstatus);
}
//*
void log_colorblack(const string_t format, ...)
{
    fprintf(stdout, "\x1b[30m");

    va_list args;
    va_start(args, format);
    vfprintf(stdout, format, args);
    va_end(args);

    fprintf(stdout, "\x1b[0m");
}
void log_colorred(const string_t format, ...)
{
    fprintf(stdout, "\x1b[31m");

    va_list args;
    va_start(args, format);
    vfprintf(stdout, format, args);
    va_end(args);

    fprintf(stdout, "\x1b[0m");
}
void log_colorgreen(const string_t format, ...)
{
    fprintf(stdout, "\x1b[32m");

    va_list args;
    va_start(args, format);
    vfprintf(stdout, format, args);
    va_end(args);

    fprintf(stdout, "\x1b[0m");
}
void log_coloryellow(const string_t format, ...)
{
    fprintf(stdout, "\x1b[33m");

    va_list args;
    va_start(args, format);
    vfprintf(stdout, format, args);
    va_end(args);

    fprintf(stdout, "\x1b[0m");
}
void log_colorblue(const string_t format, ...)
{
    fprintf(stdout, "\x1b[34m");
 
    va_list args;
    va_start(args, format);
    vfprintf(stdout, format, args);
    va_end(args);

    fprintf(stdout, "\x1b[0m");
}
void log_colormagenta(const string_t format, ...)
{
    fprintf(stdout, "\x1b[35m");

    va_list args;
    va_start(args, format);
    vfprintf(stdout, format, args);
    va_end(args);

    fprintf(stdout, "\x1b[0m");
}
void log_colorcyan(const string_t format, ...)
{
    fprintf(stdout, "\x1b[36m");

    va_list args;
    va_start(args, format);
    vfprintf(stdout, format, args);
    va_end(args);

    fprintf(stdout, "\x1b[0m");
}
void log_colorwhite(const string_t format, ...)
{
    fprintf(stdout, "\x1b[37m");

    va_list args;
    va_start(args, format);
    vfprintf(stdout, format, args);
    va_end(args);

    fprintf(stdout, "\x1b[0m");
}
//*
void log_progress(const string_t loading, uint64_t progress)
{
    printf("\x1b[1000D%s%lu%%", loading, progress);
    fflush(stdout);
}
// void log_progressbar(const string_t loading, const char_t character, uint64_t progress)
// {
//     fflush(stdout);
//     printf("\x1b[1000D%s%lu%%", loading, progress);
// }
//*
void log_real32test_loading(string_t loading, real64_t n, real64_t N, void (*log_logcolor)(const string_t, ...))
{
    log_logcolor("\x1b[1000D%s%.3lf%%", loading, n/N*100.0);
    fflush(stdout);
}
void log_real32test_currentresults(real32_t maxerr_x, real32_t err_x, int64_t i, real64_t n)
{
    void (*log_logcolor)(const string, ...);
    if ((maxerr_x == 0.0f) && (err_x == 0.0f))
    {
        log_logcolor = log_colorgreen;
    }
    else if ((maxerr_x <= 1E-5f) || ((maxerr_x <= 1E-3f) && (err_x <= 1E-5*n)))
    {
        log_logcolor = log_colorcyan;
    }
    else if ((maxerr_x <= 1E-1f) && (err_x <= 1E-3*n))
    {
        log_logcolor = log_coloryellow;
    }
    else
    {
        log_logcolor = log_colorred;
    }

    log_logcolor("max error<x%02lu> = %.6f, average error<x%02lu> = %.6f, totale error<x%02lu> = %.6f\n", i, maxerr_x, i, err_x/n, i, err_x);
}
void log_real32test_progress(string_t loading, real32_t maxerr_x, real32_t err_x, int64_t i, real64_t n, real64_t N, void (*log_logcolor)(const string_t, ...))
{
    printf("\x1b[1000D");
    log_real32test_currentresults(maxerr_x, err_x, i, n);
    log_logcolor("%s%.3lf%%", loading, n/N*100.0);
    fflush(stdout);
}
void log_real32test_conclusion(real32_t maxmaxerr_x, real32_t taterr_x, real64_t totaletime, real64_t cmptime, real64_t N)
{
    void (*log_logcolor)(const string, ...);
    if ((maxmaxerr_x == 0.0f) && (taterr_x == 0.0f))
    {
        log_logcolor = log_colorgreen;
    }
    else if ((maxmaxerr_x <= 1E-5f) || ((maxmaxerr_x <= 1E-3f) && (taterr_x <= 1E-5*N)))
    {
        log_logcolor = log_colorcyan;
    }
    else if ((maxmaxerr_x <= 1E-1f) && (taterr_x <= 1E-3*N))
    {
        log_logcolor = log_coloryellow;
    }
    else
    {
        log_logcolor = log_colorred;
    }

    log_logcolor("max error<x>   = %.6f, average error<x>   = %.6f, totale error<x>   = %.6f\n", maxmaxerr_x, taterr_x/N, taterr_x);

    if (totaletime <= cmptime)
    {
        log_logcolor = log_colorgreen;
    }
    else if (totaletime < cmptime*2.0)
    {
        log_logcolor = log_colorcyan;
    }
    else if (totaletime < cmptime*10.0)
    {
        log_logcolor = log_coloryellow;
    }
    else
    {
        log_logcolor = log_colorred;
    }
    log_logcolor("average time: %14.9lfs\n", totaletime/N);
    log_logcolor("totale  time: %14.9lfs\n", totaletime);
}
void log_real64test_loading(string_t loading, real64_t n, real64_t N, void (*log_logcolor)(const string_t, ...))
{
    log_logcolor("\x1b[1000D%s%.3lf%%", loading, n/N*100.0);
    fflush(stdout);
}
void log_real64test_currentresults(real64_t maxerr_x, real64_t err_x, int64_t i, real64_t n)
{
    void (*log_logcolor)(const string, ...);
    real64_t avrgerr = err_x/n;
    if ((maxerr_x == 0.0) && (avrgerr == 0.0))
    {
        log_logcolor = log_colorgreen;
    }
    else if ((maxerr_x <= 1E-14) || ((maxerr_x <= 1E-10) && (avrgerr <= 1E-14)))
    {
        log_logcolor = log_colorcyan;
    }
    else if ((maxerr_x <= 1E-6) && (avrgerr <= 1E-10))
    {
        log_logcolor = log_coloryellow;
    }
    else
    {
        log_logcolor = log_colorred;
    }

    log_logcolor("max error<x%02lu> = %.15lf, average error<x%02lu> = %.15lf, totale error<x%02lu> = %.15lf\n", i, maxerr_x, i, avrgerr, i, err_x);
}
void log_real64test_progress(string_t loading, real64_t maxerr_x, real64_t err_x, int64_t i, real64_t n, real64_t N, void (*log_logcolor)(const string_t, ...))
{
    printf("\x1b[1000D");
    log_real64test_currentresults(maxerr_x, err_x, i, n);
    log_logcolor("%s%.3lf%%", loading, n/N*100.0);
    fflush(stdout);
}
void log_real64test_conclusion(real64_t maxmaxerr_x, real64_t toterr_x, real64_t totaletime, real64_t cmptime, real64_t N)
{
    void (*log_logcolor)(const string, ...);
    real64_t avrgerr = toterr_x/N;
    if ((maxmaxerr_x == 0.0) && (avrgerr == 0.0))
    {
        log_logcolor = log_colorgreen;
    }
    else if ((maxmaxerr_x <= 1E-14) || ((maxmaxerr_x <= 1E-10) && (avrgerr <= 1E-14)))
    {
        log_logcolor = log_colorcyan;
    }
    else if ((maxmaxerr_x <= 1E-6) && (avrgerr <= 1E-10))
    {
        log_logcolor = log_coloryellow;
    }
    else
    {
        log_logcolor = log_colorred;
    }

    log_logcolor("max error<x>   = %.15lf, average error<x>   = %.15lf, totale error<x>   = %.15lf\n", maxmaxerr_x, avrgerr, toterr_x);

    if (totaletime <= cmptime)
    {
        log_logcolor = log_colorgreen;
    }
    else if (totaletime < cmptime*2.0)
    {
        log_logcolor = log_colorcyan;
    }
    else if (totaletime < cmptime*10.0)
    {
        log_logcolor = log_coloryellow;
    }
    else
    {
        log_logcolor = log_colorred;
    }
    log_logcolor("average time: %14.9lfs\n", totaletime/N);
    log_logcolor("totale  time: %14.9lfs\n", totaletime);
}

//****************************************************************************************************************************************************************
//*

void _log_stdout(const string_t format, ...)
{
    va_list args;
    va_start(args, format);
    vfprintf(stdout, format, args);
    va_end(args);
}
void _log_stderr(const string_t format, ...)
{
    va_list args;
    va_start(args, format);
    vfprintf(stderr, format, args);
    va_end(args);

    fprintf(stderr, "\x1b[0m\n");
}
void _log_fatal(const int32_t exitstatus, const string_t format, ...)
{
    va_list args;
    va_start(args, format);
    vfprintf(stderr, format, args);
    va_end(args);

    fprintf(stderr, " \x1b[0m\n");

    exit(exitstatus);
}
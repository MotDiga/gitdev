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
    fflush(stdout);
    printf("\x1b[1000D%s%lu%%", loading, progress);
}
// void log_progressbar(const string_t loading, const char_t character, uint64_t progress)
// {
//     fflush(stdout);
//     printf("\x1b[1000D%s%lu%%", loading, progress);
// }

//****************************************************************************************************************************************************************
//*

void _log_trace(const string_t format, ...)
{
    va_list args;
    va_start(args, format);
    vfprintf(stdout, format, args);
    va_end(args);
}
void _log_info(const string_t format, ...)
{
    va_list args;
    va_start(args, format);
    vfprintf(stdout, format, args);
    va_end(args);

    fprintf(stdout, "\x1b[0m");
}
void _log_suposition(const string_t format, ...)
{
    va_list args;
    va_start(args, format);
    vfprintf(stdout, format, args);
    va_end(args);

    fprintf(stdout, "\x1b[0m");
}
void _log_warning(const string_t format, ...)
{
    va_list args;
    va_start(args, format);
    vfprintf(stderr, format, args);
    va_end(args);

    fprintf(stderr, "\x1b[0m");
}
void _log_error(const string_t format, ...)
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
#ifndef   STDLOG_H_INCLUDED
#define   STDLOG_H_INCLUDED

#include <stdmoh.h>
#include <stdarg.h>
#include <string.h>
// #include "stdstr.h"
#include "stdtime.h"

    // #define LOG_BRIGHTER                    1
    // #define LOG_DIMMER                      2
    // #define LOG_ITALIC                      3
    // #define LOG_UNDERLINED                  4
    // #define LOG_FLASHING                    5
    // #define LOG_REVERSED                    7
    // #define LOG_VOID                        8
    // #define LOG_BARRED                      9
    // #define LOG_BLACK                       30
    // #define LOG_RED                         31
    // #define LOG_GREEN                       32
    // #define LOG_BROWN_YELLOW                33
    // #define LOG_BLUE                        34
    // #define LOG_MAGENTA                     35
    // #define LOG_CYAN                        36
    // #define LOG_WHITE                       36
    // #define LOG_MODULAR(color)              38;5;color
    // #define LOG_BACKGROUND_BLACK            40
    // #define LOG_BACKGROUND_RED              41
    // #define LOG_BACKGROUND_GREEN            42
    // #define LOG_BACKGROUND_BROWN_YELLOW     43
    // #define LOG_BACKGROUND_BLUE             44
    // #define LOG_BACKGROUND_MAGENTA          45
    // #define LOG_BACKGROUND_CYAN             46
    // #define LOG_BACKGROUND_WHITE            47
    // #define LOG_BACKGROUND_MODULAR(color)   48;5;color
    // void _log_colors(uint32_t arg0, ...)
    // {
    //     //? malloc
    //     //!
    // }
    // inline void _log_color(const string_t log_colors, const string_t format, ...)
    // {
    //     //!
    //     //? free
    // }
    // #define LOG_COLOR(log_colors, format, args...) //!

    // #define LOG_LOADING_PROGRESSBAR(character, percentage) fflush(stdout);                               
    //                                                        printf("\x1b[1000D%s%u%%", loading, percentage);     //!

#define LOG_LOADING_PERCENTAGE(loading, percentage) fflush(stdout);                                 \
                                                    printf("\x1b[1000D%s%lu%%", loading, percentage);
void _log_trace(const string_t format, ...);
void _log_info(const string_t format, ...);
void _log_suposition(const string_t format, ...);
void _log_warning(const string_t format, ...);
void _log_error(const string_t format, ...);
void _log_fatal(const int32_t exitstatus, const string_t format, ...);

//!!!!!!!!! inline ?
void log_config(const string_t logconfiguration, ...);

void    log_trace(const string_t format, ...);
void    log_info(const string_t format, ...);
void    log_suposition(const string_t format, ...);
void    log_warning(const string_t format, ...);
void    log_error(const string_t format, ...);
void    log_fatal(const int32_t exitstatus, const string_t format, ...);
#define log_trace_plus(format, args...)             fprintf(stdout, "In %s) %s)%u: ",                          __FILE__, __FUNCTION__, __LINE__); _log_trace(format, ##args);
#define log_info_plus(format, args...)              fprintf(stdout, "\x1b[32mINFO : In %s) %s)%u: ",           __FILE__, __FUNCTION__, __LINE__); _log_info(format, ##args);
#define log_suposition_plus(format, args...)        fprintf(stdout, "\x1b[34mSUPOSITION: In %s) %s)%u: ",      __FILE__, __FUNCTION__, __LINE__); _log_suposition(format, ##args);
#define log_warning_plus(format, args...)           fprintf(stderr, "\x1b[33mWARNING: In %s) %s)%u: ",         __FILE__, __FUNCTION__, __LINE__); _log_warning(format, ##args);
#define log_error_plus(format, args...)             fprintf(stderr, "\x1b[35mERROR: In %s) %s)%u: ",           __FILE__, __FUNCTION__, __LINE__); _log_error(format, ##args);
#define log_fatal_plus(exitstatus, format, args...) fprintf(stderr, "\x1b[1;7;41mFATAL ERROR: In %s) %s)%u: ", __FILE__, __FUNCTION__, __LINE__); _log_fatal(exitstatus, format, ##args);

void log_colorblack(const string_t format, ...);
void log_colorred(const string_t format, ...);
void log_colorgreen(const string_t format, ...);
void log_coloryellow(const string_t format, ...);
void log_colorblue(const string_t format, ...);
void log_colormagenta(const string_t format, ...);
void log_colorcyan(const string_t format, ...);
void log_colorwhite(const string_t format, ...);
// void log_color(const uint8_t decoration, const uint8_t modular, const string_t colors, const string_t format, ...); //!

void log_progress(const string_t loading, uint64_t progress);
void log_progressbar(const string_t loading, const char_t character, uint64_t progress);

#endif // STDLOG_H_INCLUDED
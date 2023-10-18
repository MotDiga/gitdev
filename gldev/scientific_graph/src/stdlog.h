#ifndef   STDLOG_H_INCLUDED
#define   STDLOG_H_INCLUDED

#include <stdmoh.h>
#include <stderr.h>
#include "stdtime.h"


//!!! log_to_stdout, log_to_stderr, log_to_str, log_to_file
//!!! va_list_log, log_time
//!!! -DDEBUG, -DRELEASE

void log_trace(const string_t format, ...);
void log_info(const string_t format, ...);
void log_suposition(const string_t format, ...);
void log_warning(const string_t format, ...);
void log_error(const string_t format, ...);
void log_fatal(const int32_t exitstatus, const string_t format, ...);
                
void _log_stdout(const string_t format, ...);
void _log_stderr(const string_t format, ...);
void _log_fatal(const int32_t exitstatus, const string_t format, ...);
#define log_trace_plus(format, args...)             fprintf(stdout, "In %s) %s)%u: ",                          __FILE__, __FUNCTION__, __LINE__); _log_stdout(format, ##args);
#define log_info_plus(format, args...)              fprintf(stdout, "\x1b[32mINFO : In %s) %s)%u: ",           __FILE__, __FUNCTION__, __LINE__); _log_stdout(format, ##args);
#define log_suposition_plus(format, args...)        fprintf(stdout, "\x1b[34mSUPOSITION: In %s) %s)%u: ",      __FILE__, __FUNCTION__, __LINE__); _log_stdout(format, ##args);
#define log_warning_plus(format, args...)           fprintf(stderr, "\x1b[33mWARNING: In %s) %s)%u: ",         __FILE__, __FUNCTION__, __LINE__); _log_stderr(format, ##args);
#define log_error_plus(format, args...)             fprintf(stderr, "\x1b[35mERROR: In %s) %s)%u: ",           __FILE__, __FUNCTION__, __LINE__); _log_stderr(format, ##args);
#define log_fatal_plus(exitstatus, format, args...) fprintf(stderr, "\x1b[1;7;41mFATAL ERROR: In %s) %s)%u: ", __FILE__, __FUNCTION__, __LINE__); _log_fatal(exitstatus, format, ##args);

void log_colorblack(const string_t format, ...);
void log_colorred(const string_t format, ...);
void log_colorgreen(const string_t format, ...);
void log_coloryellow(const string_t format, ...);
void log_colorblue(const string_t format, ...);
void log_colormagenta(const string_t format, ...);
void log_colorcyan(const string_t format, ...);
void log_colorwhite(const string_t format, ...);

void log_condition(bool_t condition);


#endif // STDLOG_H_INCLUDED
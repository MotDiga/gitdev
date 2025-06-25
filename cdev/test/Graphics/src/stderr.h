#ifndef   STDERR_H
#define   STDERR_H

#include "stdmoh.h"



#ifdef _DEBUG

    #define DEBIF(args...) args
    #define DRIF(args...)  args

    #define LOG_TRACE(format, args...)                   SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 15);                                             \
	                                                     printf("Trace in %s: in %s() line %d: ", __FILE__, __FUNCTION__, __LINE__);	   printf(format, ##args); \
														 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);                      putchar('\n');

    #define LOG_INFO(format, args...)                    SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 10);                                             \
	                                                     printf("Info in %s: in %s() line %d: ", __FILE__, __FUNCTION__, __LINE__);        printf(format, ##args); \
														 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);                      putchar('\n');

    #define LOG_SUPOSITION(format, args...)              SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 11);                                             \
	                                                     printf("Suposition in %s: in %s() line %d: ", __FILE__, __FUNCTION__, __LINE__);  printf(format, ##args); \
														 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);                      putchar('\n');

    #define LOG_NOTE(format, args...)                    SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 14);                                             \
	                                                     printf("Note in %s: in %s() line %d: ", __FILE__, __FUNCTION__, __LINE__);        printf(format, ##args); \
														 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);                      putchar('\n');

    #define LOG_WARNING(format, args...)                 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 13);                                             \
	                                                     printf("Warning in %s: in %s() line %d: ", __FILE__, __FUNCTION__, __LINE__);     printf(format, ##args); \
														 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);                      putchar('\n');

    #define LOG_ERROR(format, args...)                   SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 12);                                             \
	                                                     printf("Error in %s: in %s() line %d: ", __FILE__, __FUNCTION__, __LINE__);       printf(format, ##args); \
														 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);                      putchar('\n');

    #define LOG_FATAL_ERROR(error_code, format, args...) SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 207);                                            \
	                                                     printf("Fatal Error in %s: in %s() line %d: ", __FILE__, __FUNCTION__, __LINE__); printf(format, ##args); \
														 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);    putchar('\n');    exit(error_code);

#elif  _RELEASE

    #define DEBIF(args...)
    #define DRIF(args...) args

    #define LOG_TRACE(format, args...)                   SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 15);     printf(format, ##args); \
														 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);      putchar('\n');

    #define LOG_INFO(format, args...)                    SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 10);     printf(format, ##args); \
														 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);      putchar('\n');

    #define LOG_SUPOSITION(format, args...)              SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 11);     printf(format, ##args); \
														 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);      putchar('\n');

    #define LOG_NOTE(format, args...)                    SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 14);     printf(format, ##args); \
														 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);      putchar('\n');

    #define LOG_WARNING(format, args...)                 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 13);     printf(format, ##args); \
														 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);      putchar('\n');

    #define LOG_ERROR(format, args...)                   SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 12);     printf(format, ##args); \
														 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);      putchar('\n');

    #define LOG_FATAL_ERROR(error_code, format, args...) SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 207);    printf(format, ##args); \
														 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);      putchar('\n');    exit(error_code);

#else

    #define DEBIF(args...)
    #define DRIF(args...)

    #define LOG_TRACE(format, args...)
    #define LOG_INFO(format, args...)
    #define LOG_SUPOSITION(format, args...)
    #define LOG_NOTE(format, args...)
    #define LOG_WARNING(format, args...)
    #define LOG_ERROR(format, args...)
    #define LOG_FATAL_ERROR(error_code, format, args...)

#endif



#endif // STDERR_H
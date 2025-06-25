#ifndef   STDERR_H
#define   STDERR_H

#include "stdmoh.h"



#ifdef _DEBUG

    #define DEBIF(args...) args
    #define DRIF(args...)  args

    #define LOG_TRACE(format, args...)                   printf("Trace: In file %s line %d: ", __FILE__, __LINE__);       printf(format, ##args); putchar('\n');
    #define LOG_INFO(format, args...)                    printf("Info: In file %s line %d: ", __FILE__, __LINE__);        printf(format, ##args); putchar('\n'); //!
    #define LOG_SUPOSITION(format, args...)              printf("Suposition: In file %s line %d: ", __FILE__, __LINE__);  printf(format, ##args); putchar('\n'); //!
    #define LOG_WARNING(format, args...)                 printf("Warning: In file %s line %d: ", __FILE__, __LINE__);     printf(format, ##args); putchar('\n'); //!
    #define LOG_ERROR(format, args...)                   printf("Error: In file %s line %d: ", __FILE__, __LINE__);       printf(format, ##args); putchar('\n'); //!
    #define LOG_FATAL_ERROR(error_code, format, args...) printf("Fatal Error: In file %s line %d: ", __FILE__, __LINE__); printf(format, ##args); putchar('\n'); exit(error_code); //!

#elif  _RELEASE

    #define DEBIF(args...)
    #define DRIF(args...)  args

    #define LOG_TRACE(format, args...)                   printf(format, ##args); putchar('\n');
    #define LOG_INFO(format, args...)                    //!
    #define LOG_SUPOSITION(format, args...)              //!
    #define LOG_WARNING(format, args...)                 //!
    #define LOG_ERROR(format, args...)                   //!
    #define LOG_FATAL_ERROR(error_code, format, args...) //!

#else

    #define DEBIF(args...)
    #define DRIF(args...)

    #define LOG_TRACE(format, args...)
    #define LOG_INFO(format, args...)
    #define LOG_SUPOSITION(format, args...)
    #define LOG_WARNING(format, args...)
    #define LOG_ERROR(format, args...)
    #define LOG_FATAL_ERROR(error_code, format, args...)

#endif



#endif // STDERR_H
#ifndef   STDMOH_H
#define   STDMOH_H

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdarg.h>
#include <windows.h>



typedef int8_t bool_t;
typedef int8_t bool;
#define true   1
#define false  0

typedef float       real32_t;
typedef double      real64_t;
typedef long double real80_t;

typedef char        char_t;
typedef int8_t      char8_t;
typedef int16_t     char16_t;
typedef int32_t     char32_t;
typedef int64_t     char64_t;

typedef char*       string;
typedef char*       str_t;
typedef int8_t*     str8_t;
typedef int16_t*    str16_t;
typedef int32_t*    str32_t;
typedef int64_t*    str64_t;



#endif // STDMOH_H

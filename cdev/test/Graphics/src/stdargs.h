#ifndef   STDARGS_H
#define   STDARGS_H

#include "stdmoh.h"
#include "stderr.h"
#include <string.h>



//********************************************************************************
//* opts are args that bigen with '-'
//* opts with 2 '-' in the bigening are short cuts of other opts
//********************************************************************************
typedef struct opt_arg_t
{
    str_t  name;
    bool_t dup;
} opt_arg_t;
typedef struct opt_t
{
    str_t   name;
    int64_t pos;
} opt_t;

extern str_t app_name;
extern opt_t opts[1024];
extern int32_t argn;

//****************************************************************************************************

//********************************************************************************
//* str_args: "arg1:1ifdup_or0-arg2:1_or0...-argN:1_or0-"
//* The parce_shortcuts function have to be defined
//********************************************************************************
void parce_args(int32_t argc, str_t argv[], const str_t str_args, void (*parce_shortcuts)(int32_t argp, str_t argv[]));

#define PARCE_SHORTCUT(chrctr, arg, dup) \
    if (argv[argp][2] == chrctr)                           \
    {                                                      \
        for (int32_t itr = 0; (itr < argn) && !dup; itr++) \
        {                                                  \
            if (!strcmp(opts[itr].name, arg))              \
            {                                              \
                return;                                    \
            }                                              \
        }                                                  \
                                                           \
        opts[argn].name = arg;                             \
        opts[argn].pos = argp;                             \
        argn++;                                            \
    }



#endif // STDARGS_H
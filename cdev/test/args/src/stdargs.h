#ifndef   STDARGS_H
#define   STDARGS_H

#include "stdmoh.h"
#include "stderr.h"



//********************************************************************************
//* ( To be placed in the args lib )
//* opts are args that bigen with '-'
//* opts with 2 '-' in the bigening are short cuts of other opts
//********************************************************************************
typedef struct opt_t
{
    str_t   name;
    int64_t pos;
} opt_t;

extern str_t app_name;
extern opt_t opts[1024];
extern int32_t argn;

//****************************************************************************************************

void parce_args(int32_t argc, str_t argv[], void (*parce_shortcuts)(int32_t argp, str_t argv[]));

#define PARCE_SHORTCUT(chrctr, arg, dup) if (argv[argp][2] == chrctr)                           \
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
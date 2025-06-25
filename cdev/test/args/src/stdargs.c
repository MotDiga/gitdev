#include "stdargs.h"



str_t app_name;
opt_t opts[1024];
int32_t argn = 0;

//****************************************************************************************************

//! Handel Duplicates !!!
void parce_args(int32_t argc, str_t argv[], void (*parce_shortcuts)(int32_t argp, str_t argv[]))
{
    app_name = argv[0];

    for (int32_t argp = 1; argp < argc; argp++)
    {
        if (argv[argp][0] == '-')
        {
            if (argv[argp][1] == '-')
            {
                parce_shortcuts(argp, argv);
                continue;
            }
            opts[argn].name = &argv[argp][1];
            opts[argn].pos = argp;
            argn++;
        }
    }
}
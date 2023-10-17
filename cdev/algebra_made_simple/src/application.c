#include <stdmoh.h>
#include <stderr.h>
#include "algebra.h"

#define MAX_STR_SIZE    1024*1024

int32_t main(int32_t argc, string_t argv[])
{
    if (argc < 2)
    {
        LOG_FATAL(1, "Usage: ./algebra \"expression\"")
    }
    
    char_t express[MAX_STR_SIZE];

    simpl_algebra(argv[1], express);

    printf("The expression:\n\"%s\"\nSimplify to:\n\"%s\"\n", argv[1], express);

    return 0;
}
#include "tests.h"


void mtime_test()   //!!!
{
    mtime_t mtime0, mtime1;

    mtime_updatemtime(&mtime0);
#define _____OPERATIONS_NUM 1024 * 1024 * 32
    for (size_t i = 0; i < _____OPERATIONS_NUM; i++)
    {
        rsqrt64(rand());
    }
    mtime_updatemtime(&mtime1);
    LOG_INFO("mdtime.secs = %012.9f", mtime_deltamtime(mtime0, mtime1).secs);

    printf("\x1b[32mmtime0:      ");
    mtime_printtime(mtime0);
    printf("mtime0:      ");
    mtime_updatemtime(&mtime0);
    mtime_printtime(mtime0);
    printf("mtime0:      ");
    mtime_updatemtime(&mtime0);
    mtime_printtime(mtime0);
    printf("mtime0:      ");
    mtime_updatemtime(&mtime0);
    mtime_printtime(mtime0);
    printf("mtime0:      ");
    mtime_updatemtime(&mtime0);
    mtime_printtime(mtime0);
    printf("mtime0:      ");
    mtime_updatemtime(&mtime0);
    mtime_printtime(mtime0);
    mtime0.sec += 86400*14;
    printf("mtime0:      ");
    mtime_arrmtime(&mtime0);
    mtime_printtime(mtime0);
    printf("sysuptime:   ");
    mtime_printtime(mtime_sysuptime());
    printf("sysboottime: ");
    mtime_printtime(mtime_sysboottime());
    printf("\x1b[0m\n");
}
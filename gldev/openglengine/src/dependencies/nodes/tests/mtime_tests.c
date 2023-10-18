#include "tests.h"

void mtime_test()   //!!!
{
    mtime_t mtime0, mtime1, mdtime;
    mtime0 = mtime1 = mdtime = MTIME_ZERO;

    mtime_updatemtime(&mtime0);
    #define OPERATIONS_NUM 1024 * 1024
    for (size_t i = 0; i < OPERATIONS_NUM; i++)
    {
        qrsqrt64(rand());
    }
    mtime_updatemtime(&mtime1);
    mdtime = mtime_deltamtime(mtime0, mtime1);

    LOG_INFO("mdtime.secs = %012.9f", mdtime.secs);
    printf("\x1b[32mmtime0:      ");
    mtime_printtime(mtime0);
    printf("mtime0:      ");
    mtime_arrmtime(&mtime0);
    mtime_printtime(mtime0);
    printf("mtime0:      ");
    mtime_arrmtime(&mtime0);
    mtime_printtime(mtime0);
    printf("mtime0:      ");
    mtime_arrmtime(&mtime0);
    mtime_printtime(mtime0);
    printf("mtime0:      ");
    mtime_arrmtime(&mtime0);
    mtime_printtime(mtime0);
    printf("mtime0:      ");
    mtime_arrmtime(&mtime0);
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
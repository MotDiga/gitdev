#include "stdtime.h"


inline real64_t updatetime(struct_time *t)
{
    return getrusage(RUSAGE_SELF, t);
}

inline real64_t deltatime(struct_time a, struct_time b)
{
        return ((((a.ru_utime.tv_sec * 1000000 + a.ru_utime.tv_usec)  -
                  (b.ru_utime.tv_sec * 1000000 + b.ru_utime.tv_usec)) +
                 ((a.ru_stime.tv_sec * 1000000 + a.ru_stime.tv_usec)  -
                  (b.ru_stime.tv_sec * 1000000 + b.ru_stime.tv_usec)))
                / 1000000.0);
}
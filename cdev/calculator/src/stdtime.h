#ifndef   STDTIME_H_INCLUDED
#define   STDTIME_H_INCLUDED

#include <stdmoh.h>
#include <stderr.h>
#include <pthread.h>
#include <sys/resource.h>
// #include <sys/time.h>


typedef struct rusage struct_time;

real64_t updatetime(struct_time *t);
real64_t deltatime(struct_time a, struct_time b);


#endif // STDTIME_H_INCLUDED
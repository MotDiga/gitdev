#ifndef   STDTIME_H_INCLUDED
#define   STDTIME_H_INCLUDED

#include "advencenode.h"
#include <time.h>
#if __has_attribute(__fallthrough__)
    #define fallthrough __attribute__((__fallthrough__))
#else
    #define fallthrough do {} while (0)  /* fallthrough */
#endif

#define MTIME_ZERO_INIT {0.0, 0, 0.0, 0, 0, 0, 0, 0, 0, 0}
#define MTIME_ZERO (mtime_t)MTIME_ZERO_INIT
#define MTIME_SECS_INIT(secs) {secs, 0, 0.0, 0, 0, 0, 0, 0, 0, 0}
#define MTIME_SECS(secs) (mtime_t)MTIME_SECS_INIT(secs)
static const string_t _dweek[7] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Satuday"};
static const string_t _mindweek[7] = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
static const string_t _month[12] = {"January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
static const string_t _minmonth[12] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
enum {_Jan, _Feb, _Mar, _Apr, _May, _Jun, _Jul, _Aug, _Sep, _Oct, _Nov, _Dec};
enum {_Jan_=31, _Feb_=28, _Mar_=31, _Apr_=30, _May_=31, _Jun_=30, _Jul_=31, _Aug_=31, _Sep_=30, _Oct_=31, _Nov_=30, _Dec_=31};
#define IS_LEAP_YEAR(year) ((((year) % 4 == 0) && ((year) % 100 != 0)) || (((year) % 100 == 0) && ((year) % 400 == 0)))

typedef struct msec_t
{ 
    uint64_t sec, nsec;
} msec_t;
typedef struct mtime_t
{
    real64_t secs;
    int64_t  days;
    real64_t sec;
    uint64_t min, hour;
    int64_t  year;
    int8_t   utc;
    uint8_t  dweek, dmth;
    uint8_t  mth;
} mtime_t;

//* MTime
//TODO: Hijri callender
//TODO: mtimetostr(with format and args), mlocaltime, cpuclock
//TODO: suport for before 1970
void     mtime_init(mtime_t *mtime, real64_t secs);
int64_t  datetoday(int64_t day, int64_t mth, int64_t year);
void     mtime_arr(mtime_t *mtime, real64_t sec, int64_t min, int64_t hour, int64_t day, int64_t mth, int64_t year);
void     mtime_arrsec(mtime_t *mtime);
void     mtime_arrmtime(mtime_t *mtime);
void     mtime_update(mtime_t *mtime);
void     mtime_updatemtime(mtime_t *mtime);
uint64_t mtime_64seed();
uint32_t mtime_32seed();
mtime_t  mtime_addmtime(mtime_t mtime0, mtime_t mtime1);
mtime_t  mtime_deltamtime(mtime_t mtime0, mtime_t mtime1);
mtime_t  mtime_mulmtime(mtime_t mtime, int64_t operations);
mtime_t  mtime_avrgmtime(mtime_t mtime, int64_t operations);
real64_t mtime_add(mtime_t mtime0, mtime_t mtime1);
real64_t mtime_delta(mtime_t mtime0, mtime_t mtime1);
real64_t mtime_mul(mtime_t mtime, int64_t operations);
real64_t mtime_avrg(mtime_t mtime, int64_t operations);
mtime_t  mtime_sysuptime();
mtime_t  mtime_sysboottime();
void     mtime_put(mtime_t mtime);
void     mtime_printtime(mtime_t mtime);
void     mtime_printtimeday(mtime_t mtime);
void     mtime_printdate(mtime_t mtime);
void     mtime_printmindate(mtime_t mtime);
void     mtime_printmtime(mtime_t mtime);
void     mtime_printmmintime(mtime_t mtime);
void     mtime_printmtimetype(mtime_t mtime);
//* ONode function declaration
ALLOCATE_ONODE_OBJECT_DECLARATION(onode_allocmtime)
POP_ONODE_OBJECT_DECLARATION(onode_popheadmtime, mtime_t, onode_pophead)
POP_ONODE_OBJECT_DECLARATION(onode_popbackmtime, mtime_t, onode_popback)
PRINT_ONODE_OBJECT_DECLARATION(onode_putmtime)
PRINT_ONODE_OBJECT_DECLARATION(onode_printtime)
PRINT_ONODE_OBJECT_DECLARATION(onode_printtimeday)
PRINT_ONODE_OBJECT_DECLARATION(onode_printdate)
PRINT_ONODE_OBJECT_DECLARATION(onode_printmindate)
PRINT_ONODE_OBJECT_DECLARATION(onode_printmtime)
PRINT_ONODE_OBJECT_DECLARATION(onode_printmmintime)
PRINT_ONODE_OBJECT_DECLARATION(onode_printmtimetype)

#endif // STDTIME_H_INCLUDED
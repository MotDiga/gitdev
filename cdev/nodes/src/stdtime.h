#ifndef   STDTIME_H_INCLUDED
#define   STDTIME_H_INCLUDED

#include "stdstr.h"
#include <time.h>

#define MTIME_ZERO_INIT       {0.0, 0, 0.0, 0, 0, 0, 0, 0, 0, 0}
#define MTIME_ZERO            (mtime_t)MTIME_ZERO_INIT
#define MTIME_SECS_INIT(secs) {secs, 0, 0.0, 0, 0, 0, 0, 0, 0, 0}
#define MTIME_SECS(secs)      (mtime_t)MTIME_SECS_INIT(secs)

static const string_t _dweek[7]     = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Satuday"};
static const string_t _mindweek[7]  = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
static const string_t _month[12]    = {"January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
static const string_t _minmonth[12] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};

enum {_Jan, _Feb, _Mar, _Apr, _May, _Jun, _Jul, _Aug, _Sep, _Oct, _Nov, _Dec};
enum {_Jan_days=31, _Feb_days=28, _Mar_days=31, _Apr_days=30, _May_days=31, _Jun_days=30, _Jul_days=31, _Aug_days=31, _Sep_days=30, _Oct_days=31, _Nov_days=30, _Dec_days=31};
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

//****************************************************************************************************************************************************************
//* MTime

//TODO: Hijri callender
//TODO: mtimetostr(with format and args), mlocaltime, cpuclock
//TODO: suport for before 1970
//? struct rusage
void     mtime_init(mtime_t *mtime, real64_t secs);
int64_t  datetoday(int64_t day, int64_t mth, int64_t year);
void     mtime_arr(mtime_t *mtime, real64_t sec, int64_t min, int64_t hour, int64_t day, int64_t mth, int64_t year);
#define  mtime_arrsec(mtime_ptr) mtime_arr((mtime_ptr), (mtime_ptr)->secs, 0, 0, 0, 0, 0)
#define  mtime_arrmtime(mtime_ptr) mtime_arr((mtime_ptr), (mtime_ptr)->sec, (mtime_ptr)->min, (mtime_ptr)->hour, (mtime_ptr)->dmth, (mtime_ptr)->mth, (mtime_ptr)->year)
void     mtime_update(mtime_t *mtime);
void     mtime_updatemtime(mtime_t *mtime);
uint64_t mtime_64seed();
uint32_t mtime_32seed();
mtime_t  mtime_addmtime(mtime_t mtime0, mtime_t mtime1);
mtime_t  mtime_deltamtime(mtime_t mtime0, mtime_t mtime1);
mtime_t  mtime_mulmtime(mtime_t mtime, int64_t operations);
mtime_t  mtime_avrgmtime(mtime_t mtime, int64_t operations);
#define  mtime_add(mtime0, mtime1)     (mtime1).secs + (mtime0).secs
real64_t mtime_delta(mtime_t mtime0, mtime_t mtime1);
#define  mtime_mul(mtime, operations)  (mtime).secs  * operations
#define  mtime_avrg(mtime, operations) (mtime).secs  / operations
mtime_t  mtime_sysuptime();
mtime_t  mtime_sysboottime();
#define  mtime_put(mtime)           printf("%.9lf\n", (mtime).secs)
#define  mtime_printtime(mtime)     printf("%02lu:%02lu:%012.9lf\n", (mtime).hour, (mtime).min, (mtime).sec)
#define  mtime_printtimeday(mtime)  printf("%ld, %02lu:%02lu:%012.9lf\n", (mtime).days, (mtime).hour, (mtime).min, (mtime).sec)
#define  mtime_printdate(mtime)     printf("%s %02u %s %ld\n", _dweek[(mtime).dweek], (mtime).dmth+1, _month[(mtime).mth], (mtime).year)
#define  mtime_printmindate(mtime)  printf("%s %02u %s %ld\n", _mindweek[(mtime).dweek], (mtime).dmth+1, _minmonth[(mtime).mth], (mtime).year)
#define  mtime_printmtime(mtime)\
    printf("%s %02u %s %ld, %02lu:%02lu:%012.9lf\n", _dweek[(mtime).dweek], (mtime).dmth+1, _month[(mtime).mth], (mtime).year, (mtime).hour, (mtime).min, (mtime).sec)
#define  mtime_printmmintime(mtime)\
    printf("%s %02u %s %ld, %02lu:%02lu:%012.9lf\n", _mindweek[(mtime).dweek], (mtime).dmth+1, _minmonth[(mtime).mth], (mtime).year, (mtime).hour, (mtime).min, (mtime).sec)
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
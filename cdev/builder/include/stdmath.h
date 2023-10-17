#ifndef   STDMATH_H_INCLUDED
#define   STDMATH_H_INCLUDED

#include "advencenode.h"
#include "stdstr.h"
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

typedef struct complex32_t
{
    real32_t real;
    real32_t imag;
} complex32_t;
typedef struct complex64_t
{
    real64_t real;
    real64_t imag;
} complex64_t;


//****************************************************************************************************************************************************************
//* Number conversion
bool_t issrtreal(string_t snum);
bool_t issrtint(string_t snum);
bool_t issrtuint(string_t snum);

int64_t strtoint(string_t snum);
uint64_t strtouint(string_t snum);
real64_t strtoreal(string_t snum);

string_t uinttobin(string_t bin, uint64_t bits, uint64_t inum);
string_t uinttobits(string_t bin, uint64_t inum);
string_t inttohexdec(string_t hexdec, int64_t inum);

// string_t inttostr(int64_t _int);
// string_t realtostr(real64_t real);
// string_t realtobin(string_t bin, uint64_t type, real64_t real);
// string_t realtohex(string_t hex, uint64_t type, real64_t real);

//****************************************************************************************************************************************************************
//* Integers
uint64_t gcd(uint64_t inum0, uint64_t inum1);   //* Greater Common Divador
bool_t   isprime(uint64_t inum);
uint64_t findgp(uint64_t inum);                 //* Find Greatest Prime
// factor //to primes

//****************************************************************************************************************************************************************
//* Real numbers
#define LOG_1_X_MU 0.0450465679168701171875
real32_t qsqrt32(real32_t rnum);
real64_t qsqrt64(real64_t rnum);
real32_t qrsqrt32(real32_t rnum);   //* Quick Reciprocal Square Root (real32)
real64_t qrsqrt64(real64_t rnum);   //* Quick Reciprocal Square Root (real64)

//****************************************************************************************************************************************************************
//* MTime
//TODO: Hijri callender
//TODO: mtimetostr(with format and args), mlocaltime, cpuclock
//TODO: suport for before 1970
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

//****************************************************************************************************************************************************************
//* Complex numbers

//****************************************************************************************************************************************************************
//* Algorithms

#endif // STDMATH_H_INCLUDED
#include "stdtime.h"


//****************************************************************************************************************************************************************
//* MTime

void mtime_init(mtime_t *mtime, real64_t secs)
{
    mtime->secs  = secs;
    mtime->days  = 0;
    mtime->sec   = 0.0;
    mtime->min   = 0;
    mtime->hour  = 0;
    mtime->utc   = 0;
    mtime->dweek = 0;
    mtime->dmth  = 0;
    mtime->mth   = 0;
    mtime->year  = 0;
}
int64_t datetoday(int64_t day, int64_t mth, int64_t year)
{
    switch (mth)
    {
    case _Dec:
        day += 30;
        fallthrough;
        
    case _Nov:
        day += 31;
        fallthrough;
        
    case _Oct:
        day += 30;
        fallthrough;

    case _Sep:
        day += 31;
        fallthrough;
        
    case _Aug:
        day += 31;
        fallthrough;
        
    case _Jul:
        day += 30;
        fallthrough;
        
    case _Jun:
        day += 31;
        fallthrough;
        
    case _May:
        day += 30;
        fallthrough;
        
    case _Apr:
        day += 31;
        fallthrough;
        
    case _Mar:
        if (IS_LEAP_YEAR(year-1))
        {
            day += 29;
        }
        else
        {
            day += 28;
        }
        fallthrough;
        
    case _Feb:
        day += 31;
        fallthrough;
        
    case _Jan:
        break;
    }
    while (year > 1970)
    {
        if (IS_LEAP_YEAR(year-1))
        {
            day += 366;
        }
        else
        {
            day += 365;
        }
        year--;
    }

    return day;
}
void mtime_arr(mtime_t *mtime, real64_t sec, int64_t min, int64_t hour, int64_t day, int64_t mth, int64_t year)
{
    day = datetoday(day, mth, year);
    mtime->secs  = sec + min*60 + hour*3600 + day*86400;
    mtime->days  = mtime->secs/86400;

    mtime->hour  = (mtime->secs - mtime->days*86400)/3600;
    mtime->min   = (mtime->secs - mtime->hour*3600 - mtime->days*86400)/60;
    mtime->sec   = mtime->secs - mtime->min*60 - mtime->hour*3600 - mtime->days*86400;

    mtime->dweek = (mtime->days + 4) % 7;
    mtime->mth   = 0;
    mtime->year  = 1970;
    int64_t days = mtime->days;

    while (days >= 366)
    {
        if (IS_LEAP_YEAR(mtime->year))
        {
            days -= 366;
        }
        else
        {
            days -= 365;
        }

        mtime->year++;
    }
    switch (true)
    {
    default:
        if (days >= _Jan_)
        {
            days -= _Jan_;
            mtime->mth++;
        }
        else
        {
            break;
        }
            
        if ((days >= _Feb_+1) && IS_LEAP_YEAR(mtime->year))
        {
            days -= _Feb_+1;
            mtime->mth++;
        }
        else if ((days >= _Feb_))
        {
            days -= _Feb_;
            mtime->mth++;
        }
        else
        {
            break;
        }

        if (days >= _Mar_)
        {
            days -= _Mar_;
            mtime->mth++;
        }
        else
        {
            break;
        }

        if (days >= _Apr_)
        {
            days -= _Apr_;
            mtime->mth++;
        }
        else
        {
            break;
        }

        if (days >= _May_)
        {
            days -= _May_;
            mtime->mth++;
        }
        else
        {
            break;
        }

        if (days >= _Jun_)
        {
            days -= _Jun_;
            mtime->mth++;
        }
        else
        {
            break;
        }

        if (days >= _Jul_)
        {
            days -= _Jul_;
            mtime->mth++;
        }
        else
        {
            break;
        }

        if (days >= _Aug_)
        {
            days -= _Aug_;
            mtime->mth++;
        }
        else
        {
            break;
        }

        if (days >= _Sep_)
        {
            days -= _Sep_;
            mtime->mth++;
        }
        else
        {
            break;
        }

        if (days >= _Oct_)
        {
            days -= _Oct_;
            mtime->mth++;
        }
        else
        {
            break;
        }

        if (days >= _Nov_)
        {
            days -= _Nov_;
            mtime->mth++;
        }
        else
        {
            break;
        }

        if (days >= _Dec_)
        {
            days -= _Dec_;
            mtime->mth++;
        }
        else
        {
            break;
        }

        mtime->year++;
    }
    mtime->dmth = days;
}
void mtime_arrsec(mtime_t *mtime)
{
    mtime_arr(mtime, mtime->secs, 0, 0, 0, 0, 0);
}
void mtime_arrmtime(mtime_t *mtime)
{
    mtime_arr(mtime, mtime->sec, mtime->min, mtime->hour, mtime->dmth, mtime->mth, mtime->year);
}
void mtime_update(mtime_t *mtime)
{
    msec_t msec;
    timespec_get((struct timespec*)&msec, TIME_UTC);
	mtime_init(mtime, (real64_t)msec.sec + (real64_t)msec.nsec*1e-9);
}
void mtime_updatemtime(mtime_t *mtime)
{
    msec_t msec;
    timespec_get((struct timespec*)&msec, TIME_UTC);
	mtime_init(mtime, (real64_t)msec.sec + (real64_t)msec.nsec*1e-9);
    mtime_arrsec(mtime);
}
uint64_t mtime_64seed()
{
    msec_t msec;
    timespec_get((struct timespec*)&msec, TIME_UTC);
    uint64_t seed = msec.nsec + msec.sec*1000000000L;

    return seed;
}
uint32_t mtime_32seed()
{
    msec_t msec;
    timespec_get((struct timespec*)&msec, TIME_UTC);
    uint32_t seed = msec.nsec + msec.sec;

    return seed;
}
//*
mtime_t mtime_addmtime(mtime_t mtime0, mtime_t mtime1)
{
    mtime1.secs += mtime0.secs;
    mtime_arrsec(&mtime1);

    return mtime1;
}
mtime_t mtime_deltamtime(mtime_t mtime0, mtime_t mtime1)
{
    mtime1.secs -= mtime0.secs;
    mtime_arrsec(&mtime1);

    return mtime1;
}
mtime_t mtime_mulmtime(mtime_t mtime, int64_t operations)
{
    mtime.secs *= operations;
    mtime_arrsec(&mtime);

    return mtime;
}
mtime_t mtime_avrgmtime(mtime_t mtime, int64_t operations)
{
    mtime.secs /= operations;
    mtime_arrsec(&mtime);

    return mtime;
}
real64_t mtime_add(mtime_t mtime0, mtime_t mtime1)
{
    return mtime1.secs + mtime0.secs;
}
real64_t mtime_delta(mtime_t mtime0, mtime_t mtime1)
{
    return mtime1.secs - mtime0.secs;
}
real64_t mtime_mul(mtime_t mtime, int64_t operations)
{
    return mtime.secs * operations;
}
real64_t mtime_avrg(mtime_t mtime, int64_t operations)
{
    return mtime.secs / operations;
}
//* for learning
mtime_t mtime_sysuptime()
{
    mtime_t systime;
    uint32_t lo,hi;
    real64_t _rdtsc;

     __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    _rdtsc = ((uint64_t)hi << 32) | lo;
    mtime_init(&systime, _rdtsc/1.9e+9);
    mtime_arrsec(&systime);

    return systime;
}
mtime_t mtime_sysboottime()
{
    mtime_t systime, mctime, mdtime;
    uint32_t lo,hi;
    real64_t _rdtsc;

     __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    _rdtsc = ((uint64_t)hi << 32) | lo;
    mtime_init(&systime, _rdtsc/1.9e+9);
    mtime_arrsec(&systime);

    mtime_updatemtime(&mctime);
    mdtime = mtime_deltamtime(systime, mctime);

    return mdtime;
}
//*
void mtime_put(mtime_t mtime)
{
    printf("%.9lf\n", mtime.secs);
}
void mtime_printtime(mtime_t mtime)
{
    printf("%02lu:%02lu:%012.9lf\n", mtime.hour, mtime.min, mtime.sec);
}
void mtime_printtimeday(mtime_t mtime)
{
    printf("%ld, %02lu:%02lu:%012.9lf\n", mtime.days, mtime.hour, mtime.min, mtime.sec);
}
void mtime_printdate(mtime_t mtime)
{
    printf("%s %02u %s %ld\n", _dweek[mtime.dweek], mtime.dmth+1, _month[mtime.mth], mtime.year);
}
void mtime_printmindate(mtime_t mtime)
{
    printf("%s %02u %s %ld\n", _mindweek[mtime.dweek], mtime.dmth+1, _minmonth[mtime.mth], mtime.year);
}
void mtime_printmtime(mtime_t mtime)
{
    printf("%s %02u %s %ld, %02lu:%02lu:%012.9lf\n", _dweek[mtime.dweek], mtime.dmth+1, _month[mtime.mth], mtime.year, mtime.hour, mtime.min, mtime.sec);
}
void mtime_printmmintime(mtime_t mtime)
{
    printf("%s %02u %s %ld, %02lu:%02lu:%012.9lf\n", _mindweek[mtime.dweek], mtime.dmth+1, _minmonth[mtime.mth], mtime.year, mtime.hour, mtime.min, mtime.sec);
}
void mtime_printmtimetype(mtime_t mtime)
{
    printf("mtime.secs  = %.9lf\n", mtime.secs);
    printf("mtime.days  = %ld\n",   mtime.days);
    printf("mtime.sec   = %.9lf\n", mtime.sec);
    printf("mtime.min   = %lu\n",   mtime.min);
    printf("mtime.hour  = %lu\n",   mtime.hour);
    printf("mtime.utc   = %d\n",    mtime.utc);
    printf("mtime.dweek = %u\n",    mtime.dweek);
    printf("mtime.dmth  = %u\n",    mtime.dmth);
    printf("mtime.mth   = %u\n",    mtime.mth);
    printf("mtime.year  = %ld\n",   mtime.year);
}
//* ONode function argument
ALLOCATE_ONODE_OBJECT(onode_allocmtime, mtime_t)
POP_ONODE_OBJECT(onode_popheadmtime, mtime_t, onode_pophead)
POP_ONODE_OBJECT(onode_popbackmtime, mtime_t, onode_popback)

PRINT_ONODE_OBJECT (
    onode_putmtime, "%.9lf\n", (*((mtime_t*)(object))).secs
)
PRINT_ONODE_OBJECT (
    onode_printtime, "%02ld:%02ld:%012.9lf -> ", (*((mtime_t*)(object))).hour, (*((mtime_t*)(object))).min, (*((mtime_t*)(object))).sec
)
PRINT_ONODE_OBJECT (
    onode_printtimeday, "%ld, %02ld:%02ld:%012.9lf -> ",
        (*((mtime_t*)(object))).days, (*((mtime_t*)(object))).hour, (*((mtime_t*)(object))).min, (*((mtime_t*)(object))).sec
)
PRINT_ONODE_OBJECT (
    onode_printdate, "%s %02d %s %ld -> ",
        _dweek[(*((mtime_t*)(object))).dweek], (*((mtime_t*)(object))).dmth+1, _month[(*((mtime_t*)(object))).mth], (*((mtime_t*)(object))).year
)
PRINT_ONODE_OBJECT (
    onode_printmindate, "%s %02d %s %ld -> ",
        _mindweek[(*((mtime_t*)(object))).dweek], (*((mtime_t*)(object))).dmth+1, _minmonth[(*((mtime_t*)(object))).mth], (*((mtime_t*)(object))).year
)
PRINT_ONODE_OBJECT (
    onode_printmtime, "%s %02d %s %ld, %02ld:%02ld:%012.9lf -> ",
        _dweek[(*((mtime_t*)(object))).dweek], (*((mtime_t*)(object))).dmth+1, _month[(*((mtime_t*)(object))).mth], (*((mtime_t*)(object))).year,
        (*((mtime_t*)(object))).hour, (*((mtime_t*)(object))).min, (*((mtime_t*)(object))).sec
)
PRINT_ONODE_OBJECT (
    onode_printmmintime, "%s %02d %s %ld, %02ld:%02ld:%012.9lf -> ",
        _mindweek[(*((mtime_t*)(object))).dweek], (*((mtime_t*)(object))).dmth+1, _minmonth[(*((mtime_t*)(object))).mth], (*((mtime_t*)(object))).year,
        (*((mtime_t*)(object))).hour, (*((mtime_t*)(object))).min, (*((mtime_t*)(object))).sec
)
PRINT_ONODE_OBJECT (
    onode_printmtimetype,
        "\nmtime = %p\nsecs = %.9lf, days  = %ld, sec = %.9lf, min = %ld, hour = %ld, utc = %d, dweek = %u, dmth = %u, mth = %u, year = %ld\n",
        object, (*((mtime_t*)(object))).secs, (*((mtime_t*)(object))).days,
        (*((mtime_t*)(object))).sec, (*((mtime_t*)(object))).min, (*((mtime_t*)(object))).hour, (*((mtime_t*)(object))).utc,
        (*((mtime_t*)(object))).dweek, (*((mtime_t*)(object))).dmth, (*((mtime_t*)(object))).mth, (*((mtime_t*)(object))).year
)
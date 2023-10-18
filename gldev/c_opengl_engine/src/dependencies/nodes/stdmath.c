#include "stdmath.h"

//****************************************************************************************************************************************************************
//* Number conversion


bool_t issrtreal(string_t snum)
{
    uint64_t i = 0;
    while ((snum[i] == '-') || (snum[i] == '+'))
    {
        i++;
    }
    while (snum[i] != '\0')
    {
        if (!(((snum[i] >= '0') && (snum[i] <= '9')) || snum[i] == '.'))
        {
            return false;
        }
        i++;
    }

    return true;
}
bool_t issrtint(string_t snum)
{
    uint64_t i = 0;
    while ((snum[i] == '-') || (snum[i] == '+'))
    {
        i++;
    }
    while (snum[i] != '\0')
    {
        if (!((snum[i] >= '0') && (snum[i] <= '9')))
        {
            return false;
        }
        i++;
    }

    return true;
}
bool_t issrtuint(string_t snum)
{
    uint64_t i = 0;
    while (snum[i] != '\0')
    {
        if (!((snum[i] >= '0') && (snum[i] <= '9')))
        {
            return false;
        }
        i++;
    }

    return true;
}
//****************************************
int64_t strtoint(string_t snum)
{
    int64_t inum = 0;
    uint64_t i = 0;
    int64_t sign = 1;

    while ((snum[i] == '-') || (snum[i] == '+'))
    {
        if (snum[i] == '-')
        {
            sign *= -1;
        }
        i++;
    }

    inum = snum[i] - '0';
    while (snum[++i] != '\0')
    {
        inum *= 10, inum += snum[i] - '0';
    }

    return sign * inum;
}
uint64_t strtouint(string_t snum)
{
    uint64_t inum = 0, i = 0;

    inum += snum[0] - '0';
    while (snum[++i] != '\0')
    {
        inum *= 10, inum += snum[i] - '0';
    }

    return inum;
}
real64_t strtoreal(string_t snum)
{
    real64_t rnum = 0;
    int64_t inum = 0, sign = 1, i = 0, j = strl(snum);

    while ((snum[i] == '-') || (snum[i] == '+'))
    {
        if (snum[i] == '-')
        {
            sign *= -1;
        }
        i++;
    }

    inum = snum[i] - '0';
    while ((snum[++i] != '.') && (snum[i] != '\0'))
    {
        inum *= 10, inum += snum[i] - '0';
    }
    if (snum[i] == '\0')
    {
        return (sign * inum);
    }
    else if ((snum[i] == '.') && (snum[i+1] == '\0'))
    {
        return (sign * inum);
    }

    rnum = snum[--j] - '0', rnum /= 10;
    while (snum[--j] != '.')
    {
        rnum += snum[j] - '0', rnum /= 10;
    }

    return sign * ((real64_t)inum + rnum);
}
//****************************************
string_t uinttobin(string_t bin, uint64_t bits, uint64_t inum)
{
    for (uint64_t i = 0; i < bits; i++)
    {
        bin[i] = inum%2 + '0';
        inum >>= 1;
    }
    bin[bits] = '\0';

    return flipstr(bin);
}
string_t uinttobits(string_t bin, uint64_t inum)
{
    uint64_t i;
    for (i = 0; inum > 0; i++)
    {
        bin[i] = inum%2 + '0';
        inum >>= 1;
    }
    bin[i] = '\0';

    return flipstr(bin);
}
string_t inttohexdec(string_t hexdec, int64_t inum)
{
    int64_t i, hexdecnum = 0, tmpinum = ((inum < 0) ? -inum : inum);

    for (i = 0; tmpinum > 0; i++)
    {
        hexdecnum = tmpinum%16;
        if (hexdecnum >= 10)
        {
            hexdec[i] = 'a' + (hexdecnum-10);
        }
        else
        {
            hexdec[i] = '0' + hexdecnum;
        }
        tmpinum >>= 4;
    }
    hexdec[i++] = 'x';
    hexdec[i++] = '0';
    if (inum < 0)
    {
        hexdec[i++] = '-';
    }
    hexdec[i] = '\0';

    return flipstr(hexdec);
}

//****************************************************************************************************************************************************************
//* Integers

uint64_t gcd(uint64_t inum0, uint64_t inum1)
{
    uint64_t rest;
    
    while (1)
    {
        rest = inum0%inum1;
        if (rest == 0)
        {
            return inum1;
        }
        inum0 = inum1;
        inum1 = rest;
}
}
bool_t isprime(uint64_t inum)
{
    if (inum < 2)
    {
        return false;
    }

    for (uint64_t i = 2; i < inum; i++)
    {
        if (inum%i == 0)
        {
            return false;
        }
    }

    return true;
}
uint64_t findgp(uint64_t inum)
{
    for (uint64_t i = inum; i >= 2; i--)
    {
        if (isprime(i))
        {
            return i;
        }
    }

    return 2;
}

//****************************************************************************************************************************************************************
//* Real numbers

real32_t qsqrt32(real32_t real)
{
    union {real32_t y; int32_t i;} u;

    u.y = real;
    u.i = 0x1fbd1df5 + (u.i >> 1);

    u.y = 0.5f * (u.y + real/u.y);
    // u.y = 0.5f * (u.y + real/u.y);

    return u.y;
}
real64_t qsqrt64(real64_t real)
{
    union {real64_t y; int64_t i;} u;

    u.y = real;
    u.i = 0x1ff7a3bea0000000 + (u.i >> 1L);

    u.y = 0.5 * (u.y + real/u.y);
    // u.y = 0.5 * (u.y + real/u.y);

    return u.y;
}
real32_t qrsqrt32(real32_t real)
{
    union {real32_t y; int32_t i;} u;

    u.y = real;
    u.i = 0x5f3759df - (u.i >> 1);

    u.y = u.y * (1.5f - u.y*u.y*real*0.5f);
    // u.y = u.y * (1.5f - u.y*u.y*real*0.5f);

    return u.y;
}
real64_t qrsqrt64(real64_t real)
{
    union {real64_t y; int64_t i;} u;

    u.y = real;
    u.i = 0x5fe6eb3be0000000 - (u.i >> 1L);

    u.y = u.y * (1.5 - u.y*u.y*real*0.5);
    // u.y = u.y * (1.5 - u.y*u.y*real*0.5);

    return u.y;
}

//****************************************************************************************************************************************************************
//* Algorithms
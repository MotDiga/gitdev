#include "algebra.h"


static inline bool_t is_upper(char_t c)
{
    return (('A' <= c) && (c <= 'Z')) || (c == '_');
}
static inline bool_t is_dig(char_t c)
{
    return (('0' <= c) && (c <= '9')) || (c == '.');
}

static uint64_t strl(string_t string)
{
    uint64_t strsize = -1UL;
    while (string[++strsize] != '\0');

    return strsize;
}
static bool_t streq(const string_t str1, const string_t str2)
{
    uint64_t strsize1 = strl(str1), strsize2 = strl(str2);

    if (strsize1 != strsize2)
    {
        return false;
    }

    while (strsize1--)
    {
        if (str1[strsize1] != str2[strsize1])
        {
            return false;
        }
    }

    return true;
}
static string_t strcp(string_t dest, const uint64_t bufsize, const string_t source)
{
    uint64_t sourcesize = strl(source);

    if (sourcesize >= bufsize)
    {
        return NULL;
    }

    do {
        dest[sourcesize] = source[sourcesize];
    } while (sourcesize-- != 0UL);

    return dest;
}

static bool_t is_repeated(string_t element, algebra_element_t container[], uint64_t containersize)
{
    for (uint64_t ei = 0; ei < containersize; ei++)
    {
        if (streq(element, container[ei].word))
        {
            return true;
        }
    }

    return false;
}
static void get_consts(string_t const express, uint64_t *constn, const_t consts[])
{
    uint8_t wi = 0;
    char_t word[256];
    for (uint64_t ei = 0; ; ei++)
    {
        if (express[ei] == '\0')
        {
            if (wi != 0)
            {
                if (is_repeated(word, consts, *constn))
                {
                    wi = 0; goto SKIP_0;
                }
                strcp(consts[*constn].word, 256, word), (*constn)++;
                LOG_INFO("consts[%lu].word = %s", *constn-1, consts[*constn-1].word)
            }
SKIP_0:
            break;
        }
        else if ((express[ei] == ' ') && (wi != 0))
        {
            word[wi] = '\0';
            if (is_repeated(word, consts, *constn))
            {
                wi = 0; goto SKIP_1;
            }
            strcp(consts[*constn].word, 256, word), (*constn)++, wi = 0;
            LOG_INFO("consts[%lu].word = %s", *constn-1, consts[*constn-1].word)
SKIP_1:
            continue;
        }

        if ((wi == 0) && is_upper(express[ei]))
        {
            word[wi] = express[ei], wi++;
        }
        else if ((wi != 0) && (is_upper(express[ei]) || is_dig(express[ei])))
        {
            word[wi] = express[ei], wi++;
        }
        // else if (wi != 0)
        // {
        //     consts[*constn].word[wi] = '\0', (*constn)++, wi = 0;
        //     //! while (express[ei++] == ' '); if (express[ei] = '=' && before(word) == NULL /* before == NULL: brfore(word) == k*' ' || '\n' */): ...
        // }
    }
}
// static void get_vars(string_t const express, var_t vars[]);
// static void get_coefficients(string_t const express, const_t consts[], var_t vars[]);

void simpl_algebra(string_t const express, string_t simpl_express)
{
    const_t consts[1024];
    // var_t vars[1024];
    uint64_t constn = 0;
    // uint64_t varn = 0;

    get_consts(express, &constn, consts);
    //!
    // for (uint64_t ci = 0; ci < constn; ci++)
    // {
    //     LOG_INFO("consts[%lu].word = %s", ci, consts[ci].word)
    // }
    //!
    // get_vars "lower_case"
    // get_coefficients

    // simplify !
    simpl_express[0] = '\0';    //! to remove
}
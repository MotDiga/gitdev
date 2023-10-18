#include "tests.h"

void stdstr_test()
{
    log_colorgreen("\nStarting StdStr Test:\n\n");

    char_t string[64] = "Salam Alicom, Salam salam, The Secret Password Is ********";
    char_t tmp[64], *tmp1 = tmp;

    printf("string          = \"%s\"\n", string);
    printf("lower(tmp, str) = \"%s\"\n", lowerstr(tmp, string));
    printf("upper(tmp, tmp) = \"%s\"\n", upperstr(tmp, tmp));
    printf("upper(tmp, str) = \"%s\"\n", upperstr(tmp, string));
    printf("lower(tmp, tmp) = \"%s\"\n", lowerstr(tmp, tmp));
    printf("flip(tmp)       = \"%s\"\n\n", flipstr(tmp));

    char_t salam1[13] = "Salam Alicom";
    char_t salam2[13] = "Salam alicom";
    char_t salam3[6]  = "Salam";
    strcp(tmp, 13, salam1);
    printf("tmp = \"%s\"\n", tmp);
    printf("tmp %s \"%s\"\n", streq(tmp, salam1) ? "=" : "!=", salam1);
    printf("tmp %s \"%s\"\n", streq(tmp, salam2) ? "=" : "!=", salam2);
    printf("tmp %s \"%s\"\n\n", streq(tmp, salam3) ? "=" : "!=", salam3);

    straddstr(tmp, 64, ", ");
    straddstr(tmp, 64, salam2);
    straddstr(tmp, 64, ", ");
    straddstr(tmp, 64, salam3);
    straddstr(tmp, 64, string);
    printf("tmp = \"%s\"\n\n", tmp);

    printf("fchr(tmp, S)  = \"%s\"\n", strfchr(tmp, 'S'));
    printf("lchr(tmp1, A) = \"%s\"\n", (tmp1 = strlchr(tmp1, 'A')));
    printf("fchr(tmp1, S) = \"%s\"\n", (tmp1 = strfchr(tmp1, 'S')));
    printf("lchr(tmp1, S) = \"%s\"\n", (tmp1 = strlchr(tmp1, 'S')));
    printf("fchr(tmp, G)  = \"%s\"\n", strfchr(tmp, 'G'));
    printf("lchr(tmp, j)  = \"%s\"\n\n", strlchr(tmp, 'j'));

    printf("fchrs(tmp, gsaf) = \"%s\"\n", strfchrs(tmp, "gsaf"));
    printf("lchrs(tmp, gsji) = \"%s\"\n", strlchrs(tmp, "gsji"));
    printf("fchrs(tmp, hbte) = \"%s\"\n", strfchrs(tmp, "hbte"));
    printf("lchrs(tmp, zkpd) = \"%s\"\n\n", strlchrs(tmp, "zkpd"));

    printf("strfstr(tmp, Salam)  = \"%s\"\n", strfstr(tmp, "Salam"));
    printf("strfstr(tmp, alicom) = \"%s\"\n", strfstr(tmp, "alicom"));
    printf("strfstr(tmp, salam)  = \"%s\"\n", strfstr(tmp, "salam"));
    printf("strlstr(tmp, icom)  = \"%s\"\n", strlstr(tmp, "icom"));
    printf("strlstr(tmp, , S) = \"%s\"\n", strlstr(tmp, ", S"));
    printf("strlstr(tmp, in )  = \"%s\"\n\n", strlstr(tmp, "in "));

    char_t buffer[16] = "123456789abcdef";
    printf("buffer = \"%s\"\n", buffer);

    // printf("scans = \"%s\"\n", buffer);
    // scans(buffer, 16);                      //* Salam alicom
    // printf("scans = \"%s\"\n", buffer);
    // scans(buffer, 17);                      //* Salam alicom
    // printf("scans = \"%s\"\n", buffer);
    // scans(buffer, 0);                       //* Salam alicom
    // printf("scans = \"%s\"\n", buffer);
    // scans(buffer, 6);                       //* Salam alicom
    // printf("scans = \"%s\"\n", buffer);
    // scans(buffer, 13);                      //* Salam alicom
    // printf("scans = \"%s\"\n", buffer);
    // // scans(buffer, 15);                      //* Salam alicom
    // // printf("scans = \"%s\"\n", buffer);
}
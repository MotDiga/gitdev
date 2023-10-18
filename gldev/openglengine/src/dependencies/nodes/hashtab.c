#include "hashtab.h"


//****************************************************************************************************************************************************************
//* Hash table ***************************************************************************************************************************************************

// uint64_t mothash(const string_t str, uint64_t sel)
// {
//     uint64_t hash = 0, ss = -1;
//     ustring_t _str = (ustring_t)str;

//     while (_str[++ss])
//     {
//         hash += (_str[ss] + ss) & sel;
//         hash *= (0x17 *(hash & (hash * 17))) ^ ((hash * 0x16A61) % 0xa5d);
//     }

//     return hash;
// }

// uint64_t strinhashtab(string_t tab[], uint64_t ts, const string_t str, uint64_t sel)     //* ts: tab size
// {
//     uint64_t hash = mothash(str, sel)%ts, lstr = strl(str);
//     tab[hash] = (string_t)malloc(lstr * sizeof(char));
//     strcop(tab[hash], lstr, str);

//     return hash;
// }
// string_t strfromhashtab(string_t tab[], uint64_t ts, const string_t str, uint64_t sel)  //* ts: tab size
// {
//     return tab[mothash(str, sel)%ts];
// }

// void freehashtab(string_t tab[], uint64_t ts)                                    //* ts: tab size
// {
//     while (ts--)
//         free(tab[ts]);
// }

//****************************************************************************************************************************************************************
//* Hash list ****************************************************************************************************************************************************
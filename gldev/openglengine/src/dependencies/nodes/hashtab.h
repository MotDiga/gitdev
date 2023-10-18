#ifndef   HASHTAB_H
#define   HASHTAB_H

#include "advencenode.h"
#include "stdstr.h"


//* Hash table

uint64_t mothash(const string_t, uint64_t);
uint64_t strinhashtab(string_t[], uint64_t, const string_t, uint64_t);
string_t strfromhashtab(string_t[], uint64_t, const string_t, uint64_t);
void freehashtab(string_t[], uint64_t);

//* Hash list

uint64_t strinhashlist(list_t[], uint64_t, const string_t, uint64_t);
string_t strfromhashlist(list_t[], uint64_t, const string_t, uint64_t);
void freehashlist(list_t[], uint64_t);

#endif // HASHTAB_H_INCLUDED
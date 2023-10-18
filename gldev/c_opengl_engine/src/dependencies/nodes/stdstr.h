#ifndef   STDSTR_H_INCLUDED
#define   STDSTR_H_INCLUDED

#include "advencenode.h"

//****************************************************************************************************************************************************************
//* String
void getignore();
bool_t scans(string_t , uint64_t);
// char scanac(const string_t);
// uchar scanauc(const string_t);
// short scanas(const string_t);
// ushort scanaus(const string_t);
// int scanai(const string_t);
// uint scanaui(const string_t);
// long scanal(const string_t);
// uint64_t scanaul(const string_t);
// float scanaf(const string_t);
// double scanad(const string_t);
// string_t scanstr(const string_t);
// ustring_t scanustr(const string_t);
char lowerchar(char);
char upperchar(char);
string_t lowerstr(string_t, const string_t);
string_t upperstr(string_t, const string_t);
string_t flipstr(string_t str);
uint64_t strl(string_t str);
bool_t streq(const string_t str1, const string_t str2);
// string_t strcpes(string_t dest, const string_t str, uint64_t n);
string_t strcop(string_t, long, const string_t);
string_t strcon(string_t, long, const string_t);
char* strsrch(const string_t, const char);
char* strrsrch(const string_t, const char);
char* strsrchf(const string_t, const string_t);
char* strsrchl(const string_t, const string_t);
char* strinstr(const string_t, const string_t);

//****************************************************************************************************************************************************************
//* DSiring

#endif // STDSTR_H_INCLUDED
#ifndef   STDSTR_H_INCLUDED
#define   STDSTR_H_INCLUDED

#include "advencenode.h"

//****************************************************************************************************************************************************************
//* String
void     getignore();
#define  lowerchar(c) (c + ((c >= 'A' && c <= 'Z') ? 32 : 0))
#define  upperchar(c) (c - ((c >= 'a' && c <= 'z') ? 32 : 0))
string_t lowerstr(string_t dest, const string_t source);
string_t upperstr(string_t dest, const string_t source);
string_t flipstr(string_t string);
uint64_t strl(string_t string);
bool_t   streq(const string_t str1, const string_t str2);
string_t strcp(string_t dest, const uint64_t bufsize, const string_t source);
string_t straddstr(string_t dest, const uint64_t bufsize, const string_t source);	//* concatenate source in dest
char_t*  strfchr(const string_t string, const char_t c);
char_t*  strlchr(const string_t string, const char_t c);
char_t*  strfchrs(const string_t string, const string_t chars);
char_t*  strlchrs(const string_t string, const string_t chars);
char_t*  strfstr(const string_t source, const string_t sequence);
char_t*  strlstr(const string_t source, const string_t sequence);
bool_t   scans(string_t string, uint64_t strsize);
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

//****************************************************************************************************************************************************************
//* DSiring

#endif // STDSTR_H_INCLUDED
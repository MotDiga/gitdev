#include "stdstr.h"


void getignore()
{
	char c = getchar();
	while (c != '\n' && c != EOF)		//* ignore all extra character
		c = getchar();
}
bool_t scans(string_t str, uint64_t ss)	//* ss: str size
{
	if (fgets(str, ss, stdin) != NULL)
	{
		char *pos = strsrch(str, '\n');
		if (pos != NULL)
			*pos = '\0';
		else
			getignore();

		return true;
	}
	else
	{
		getignore();
		return false;
	}
}
char lowerchar(char c)
{
    return c += (c >= 'A' && c <= 'Z')  ? 32 : 0;
}
char upperchar(char c)
{
    return c -= (c >= 'a' && c <= 'z') ? 32 : 0;
}
string_t lowerstr(string_t s1, const string_t s2)	//* lower s2 and put it in s1
{
	int64_t i = 0;
	for (; s2[i] != 0; i++)
		s1[i] = lowerchar(s2[i]);
	s1[i] = 0;

	return s1;
}
string_t upperstr(string_t s1, const string_t s2)	//* upper s2 and put it in s1
{
	int64_t i = 0;
	for (; s2[i] != 0; i++)
		s1[i] = upperchar(s2[i]);
	s1[i] = 0;

	return s1;
}
string_t flipstr(string_t str)
{
	uint64_t ss = strl(str), end = ss/2;

	for (uint64_t i = 0; i < end; i++)
	{
		char tmp = str[ss-1 - i];
		str[ss-1 - i] = str[i];
		str[i] = tmp;
	}

	return str;
}
uint64_t strl(string_t str)
{
	uint64_t strsize = -1;
	while (str[++strsize]) {}

	return strsize;
}
bool_t streq(const string_t s1, const string_t s2)
{
	uint64_t strsize1 = strl(s1), strsize2 = strl(s2);

	if (strsize1 != strsize2)
		return false;

	while (strsize1--)
		if (s1[strsize1] != s2[strsize1])
			return false;

	return true;
}
string_t strcop(string_t s1, int64_t b1s, const string_t s2)	//* copy s2 in s1 (b1s: buffer (str) 1 size)
{
	int64_t ss2 = strl(s2);

	if (b1s < ss2)
		return NULL;

	while (ss2 > -1)
	{
		s1[ss2] = s2[ss2];
		ss2--;
	}

	return s1;
}
string_t strcon(string_t s1, int64_t b1s, const string_t s2)	//* concatenate s2 in s1 (b1s: buffer (str) 1 size)
{
	int64_t ss1 = strl(s1), ss2 = strl(s2);

	if (b1s < ss2)
		return NULL;

	while (ss2 > -1)
	{
		s1[ss1 + ss2] = s2[ss2];
		ss2--;
	}

	return s1;
}
char* strsrch(const string_t str, const char c)
{
	int64_t pos = -1, lstr = strl(str);

	while (str[++pos] != c)
		if (pos == lstr)
			return NULL;

	return &str[pos];
}
char* strrsrch(const string_t str, const char c)
{
	int64_t pos = strl(str);

	while (str[--pos] != c)
		if (pos == 0)
			return NULL;

	return &str[pos];
}
char* strsrchf(const string_t str, const string_t chars)
{
	int64_t pos = 0, lchars = strl(chars);
	for (; str[pos] != 0; pos++)
		for (int64_t i = 0; i < lchars; i++)
			if (str[pos] == chars[i])
				goto FOUND;

	return NULL;

FOUND:
	return &str[pos];
}
char* strsrchl(const string_t str, const string_t chars)
{
	int64_t lstr = strl(str), pos = lstr, lchars = strl(chars);
	for (; pos > -1; pos--)
		for (int64_t i = 0; i < lchars; i++)
			if (str[pos] == chars[i])
				goto FOUND;

	return NULL;

FOUND:
	return &str[pos];
}
char* strinstr(const string_t s1, const string_t s2)	//* search s2 in s1
{
	int64_t pos = 0, ss1 = strl(s1), ss2 = strl(s2);
	bool_t found;
	for (; s1[pos] != 0; pos++)
	{
		if (pos + ss2 > ss1)
			return NULL;

		found = true;
		for (int64_t i = 0; i < ss2; i++)
		{
			if (s1[pos + i] != s2[i])
			{
				found = false;
				break;
			}
		}
		if (found)
			return &s1[pos];
	}
	
	return NULL;
}
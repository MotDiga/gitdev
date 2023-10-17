#include "stdstr.h"


void getignore()
{
	char_t c = getchar();
	while (c != '\n' && c != EOF)		//* ignore all extra character
	{
		c = getchar();
	}
}
string_t lowerstr(string_t dest, const string_t source)
{
	uint64_t i = 0;
	for (; source[i] != '\0'; i++)
	{
		dest[i] = lowerchar(source[i]);
	}
	dest[i] = '\0';

	return dest;
}
string_t upperstr(string_t dest, const string_t source)
{
	uint64_t i = 0;
	for (; source[i] != 0; i++)
	{
		dest[i] = upperchar(source[i]);
	}
	dest[i] = '\0';

	return dest;
}
string_t flipstr(string_t string)
{
	uint64_t strsize = strl(string), end = strsize/2;
	char_t tmp;

	for (uint64_t i = 0; i < end; i++)
	{
		tmp = string[strsize-1 - i];
		string[strsize-1 - i] = string[i];
		string[i] = tmp;
	}

	return string;
}
uint64_t strl(string_t string)
{
	uint64_t strsize = -1UL;
	while (string[++strsize]) {}

	return strsize;
}
bool_t streq(const string_t str1, const string_t str2)
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
string_t strcp(string_t dest, const uint64_t bufsize, const string_t source)
{
	uint64_t sourcesize = strl(source);

	if (sourcesize >= bufsize)
	{
		return NULL;
	}

	do {
		dest[sourcesize] = source[sourcesize];
	} while (sourcesize-- != 0);

	return dest;
}
string_t straddstr(string_t dest, const uint64_t bufsize, const string_t source)
{
	uint64_t destsize = strl(dest), sourcesize = strl(source);

	if (destsize + sourcesize >= bufsize)
	{
		return NULL;
	}

	do {
		dest[destsize + sourcesize] = source[sourcesize];
	} while (sourcesize-- != 0);

	return dest;
}
char_t* strfchr(const string_t string, const char_t c)
{
	uint64_t pos = -1UL, strsize = strl(string);

	while (string[++pos] != c)
	{
		if (pos == strsize)
		{
			return NULL;
		}
	}

	return &string[pos];
}
char_t* strlchr(const string_t string, const char_t c)
{
	uint64_t pos = strl(string);

	while (string[--pos] != c)
	{
		if (pos == 0)
		{
			return NULL;
		}
	}

	return &string[pos];
}
char_t* strfchrs(const string_t string, const string_t chars)
{
	uint64_t pos = 0, charsl = strl(chars);

	for (; string[pos] != 0; pos++)
	{
		for (uint64_t i = 0; i < charsl; i++)
		{
			if (string[pos] == chars[i])
			{
				goto FOUND;
			}
		}
	}

	return NULL;

FOUND:
	return &string[pos];
}
char_t* strlchrs(const string_t string, const string_t chars)
{
	uint64_t pos = strl(string), charsl = strl(chars);
	for (; pos != -1UL; pos--)
	{
		for (uint64_t i = 0; i < charsl; i++)
		{
			if (string[pos] == chars[i])
			{
				goto FOUND;
			}
		}
	}

	return NULL;

FOUND:
	return &string[pos];
}
char_t* strfstr(const string_t source, const string_t sequence)
{
	uint64_t srcsize = strl(source), seqsize = strl(sequence);
	bool_t found;
	for (uint64_t pos = 0; source[pos] != '\0'; pos++)
	{
		if (pos + seqsize > srcsize)
		{
			break;
		}

		found = true;
		for (uint64_t i = 0; i < seqsize; i++)
		{
			if (source[pos + i] != sequence[i])
			{
				found = false;
				break;
			}
		}
		if (found)
		{
			return &source[pos];
		}
	}
	
	return &source[srcsize];
}
char_t*  strlstr(const string_t source, const string_t sequence)
{
	uint64_t srcsize = strl(source), seqsize = strl(sequence);
	bool_t found;
	for (uint64_t pos = srcsize-1; pos != -1UL; pos--)
	{
		found = true;
		for (uint64_t i = 0; i < seqsize; i++)
		{
			if (source[pos + i] != sequence[i])
			{
				found = false;
				break;
			}
		}
		if (found)
		{
			return &source[pos];
		}
	}

	return &source[0];
}
bool_t scans(string_t string, uint64_t strsize)
{
	// if (strl(string) < strsize)
	// {
	// 	strsize = strl(string);
	// }
	if (fgets(string, strsize, stdin) != NULL)
	{
		char_t *pos = strfchr(string, '\n');
		if (pos != NULL)
		{
			*pos = '\0';
		}
		else
		{
			getignore();
		}

		return true;
	}
	else
	{
		// string[0] = '\0';
		getignore();
		return false;
	}
}
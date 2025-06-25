#include "stdmath.h"


//!

uint64_t gcd64(uint64_t bigint, uint64_t smalint)
{
	uint64_t rest;
	
	while (true)
	{
		rest = bigint%smalint;
		
		if (rest == 0ULL)
		{
			return smalint;
		}
		
		bigint  = smalint;
		smalint = rest;
	}
}
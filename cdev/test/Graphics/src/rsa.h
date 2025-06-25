#ifndef   RSA_H
#define   RSA_H

#include "stdmoh.h"
#include "stderr.h"
#include "stdmath.h"



//********************************************************************************

typedef struct rsa_key_t
{
	uint64_t e, d, n;
} rsa_key_t;



//********************************************************************************

rsa_key_t rsa_genkey(uint64_t p, uint64_t q);
void      rsa_genkey_(rsa_key_t* key, uint64_t p, uint64_t q);
rsa_key_t rsa_genkeyfile(str_t filename, uint64_t p, uint64_t q);
rsa_key_t rsa_keyfromfile();
#define   RSA_LOADKEY(e, d, n)    ((rsa_key_t){ e, d, n })



#endif // RSA_H
#ifndef   RSA_H_INCLUDED
#define   RSA_H_INCLUDED

#include "stdmath.h"

typedef struct rsakeys_t
{
    uint32_t e, d, n;
} rsakeys_t;
typedef struct rsapubkey_t
{
    uint32_t e, n;
} rsapubkey_t;
typedef struct rsaprivkey_t
{
    uint32_t d, n;
} rsaprivkey_t;
#define RSA_FAST16BITKEY (rsakeys_t){39037, 63733, 67097}


//****************************************************************************************************************************************************************
//* RSA
uint32_t      _rsa_find_c_m(uint32_t m_c, uint32_t e_d, uint32_t n);    //! Slow
uint32_t      rsa_find_c_m(uint32_t m_c, uint32_t e_d, uint32_t n);
rsakeys_t*    _rsa_genkeys(rsakeys_t *key, uint32_t p, uint32_t q);
rsakeys_t*    rsa_genkeys(rsakeys_t *key, uint32_t p, uint32_t q);  //! remove p,q; prime range: pn+-(smal number)
rsapubkey_t*  rsa_pubkey(rsakeys_t *key, rsapubkey_t *pubkey);
rsaprivkey_t* rsa_privkey(rsakeys_t *key, rsaprivkey_t *privkey);
string32_t    rsa_encript(const rsapubkey_t *key, const string_t message, string32_t encriptedmessage);
string_t      rsa_decript(const rsaprivkey_t *key, const string32_t encriptedmessage, string_t decriptedmessage);
void          rsa_genfilekeys(uint32_t p, uint32_t q);
void          rsa_encriptfile(string_t pubkeyfile, string_t messagefile);
void          rsa_decriptfile(string_t privkeyfile, string_t encriptedmessagefile);

#endif // RSA_H_INCLUDED
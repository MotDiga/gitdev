#ifndef   RSA_H_INCLUDED
#define   RSA_H_INCLUDED

#include "stdmath.h"
#include <pthread.h>
#include "shader.h"

typedef struct rsakey_t
{
    uint32_t e, d, n;
} rsakey_t;
typedef struct rsapubkey_t
{
    uint32_t e, n;
} rsapubkey_t;
typedef struct rsaprivkey_t
{
    uint32_t d, n;
} rsaprivkey_t;

#define RSA_MEMORYHUNGRY 1048576
#define rsa_loadkey(e, d, n) (rsakey_t){ e, d, n } 
#define RSA_FAST_ENC_KEY rsa_loadkey( 95889085, 18581125, 110240129 )
#define RSA_FAST_DEC_KEY rsa_loadkey( 18581125, 95889085, 110240129 )


//****************************************************************************************************************************************************************
//* RSA
uint32_t   rsa_find_c_m_dlist(const uint64_t m_c, const uint64_t e_d, const uint64_t n);           //! Slow
uint32_t   rsa_find_c_m_memoryhungry(const uint64_t m_c, const uint64_t e_d, const uint64_t n);    //! Faster but memory hungry whith larger keys ()
uint32_t   rsa_find_c_m(const uint64_t m_c, const uint64_t e_d, const uint64_t n);
#define    RSA_FIND_CM(m_c, e_d, n) rsa_find_c_m(m_c, e_d, n)

void       rsa_genkey_fast(rsakey_t *key, const uint32_t p, const uint32_t q);                      //! But not good
void       rsa_genkey(rsakey_t *key, const uint32_t p, const uint32_t q);                           //? remove p,q; prime range: pn+-(smal number)
#define    RSA_GENKEY(key_ptr, p, q) rsa_genkey(key_ptr, p, q)

#define    rsa_genpubkey(key, pubkey)   (pubkey  =  (rsapubkey_t){(key).e, (key).n})
#define    rsa_genprivkey(key, privkey) (privkey =  (rsaprivkey_t){(key).d, (key).n})
void       rsa_genkeys(rsakey_t *key, rsapubkey_t *pubkey, rsaprivkey_t *privkey, const uint32_t p, const uint32_t q);
rsakey_t   rsa_genkeyfile(const string_t keyfile, const uint32_t p, const uint32_t q);
void       rsa_genkeyfile_fromkey(const string_t keyfile, const rsakey_t key);
rsakey_t   rsa_genkey_fromfile(const string_t keyfile);

string32_t rsa_encript(const rsapubkey_t *key, const string_t message, string32_t encmess);
string_t   rsa_decript(const rsaprivkey_t *key, const string32_t encmess, string_t decmess);
void       rsa_encriptfile(const string_t pubkeyfile, const string_t messagefile, string_t encmessfile);
void       rsa_decriptfile(const string_t privkeyfile, const string_t encmessfile, string_t decmessfile);

//* Pthread version
void*      rsa_find_c_m_pthread(void *mc_ed_n);
void*      rsa_find_c_m_pthread_memoryhungry(void *mc_ed_n);
#define    RSA_FIND_CM_PTHREAD rsa_find_c_m_pthread_memoryhungry

string32_t rsa_encript_pthread(const rsapubkey_t *key, const string_t message, string32_t encmess);
string_t   rsa_decript_pthread(const rsaprivkey_t *key, const string32_t encmess, string_t decmess);
void       rsa_encriptfile_pthread(const string_t pubkeyfile, const string_t messagefile, string_t encmessfile);
void       rsa_decriptfile_pthread(const string_t privkeyfile, const string_t encmessfile, string_t decmessfile);

//* OpenGL version
uint32_t   rsa_find_c_m_opengl_memoryhungry(const uint64_t *m_c, const uint64_t *c_m, const uint64_t e_d, const uint64_t n);
uint32_t   rsa_find_c_m_opengl(const uint64_t *m_c, const uint64_t *c_m, const uint64_t e_d, const uint64_t n);
void       rsa_encriptfile_opengl(const string_t pubkeyfile, const string_t messagefile, string_t encmessfile);
void       rsa_decriptfile_opengl(const string_t privkeyfile, const string_t encmessfile, string_t decmessfile);

#endif // RSA_H_INCLUDED
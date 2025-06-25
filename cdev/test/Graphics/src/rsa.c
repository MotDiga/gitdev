#include "rsa.h"



//********************************************************************************

typedef struct i_n_phi_arr_t
{
	uint64_t i;
	uint64_t n;
	uint64_t phi;
	uint64_t *(e_arr[512]);
}
i_n_phi_arr_t;

//********************************************************************************

static void* find_e_threaded(uint64_t i, uint64_t n, uint64_t phi, uint64_t *(e_arr[]));

//********************************************************************************

#define RSA_GENKEY_TEST(e, d, n, p, q)                                                              \
    uint64_t phi = (p - 1ULL)*(q - 1ULL), i;                                                        \
    n = p*q;                                                                                        \
    for (i = 2ULL; i < n; i++)                                                                      \
    {                                                                                               \
        if (gcd64(i, phi) == 1ULL)                                                                  \
        {                                                                                           \
            e = i;                                                                                  \
            break;                                                                                  \
        }                                                                                           \
    }                                                                                               \
                                                                                                    \
    for (i = 2ULL; i < n; i++)                                                                      \
    {                                                                                               \
        if ((e*i)%phi == 1ULL)                                                                      \
        {                                                                                           \
            d = i;                                                                                  \
            break;                                                                                  \
        }                                                                                           \
    }

#define RSA_GENKEY_MEMHUNGRY(e, d, n, p, q)                                                         \
    uint64_t phi = (p - 1ULL)*(q - 1ULL), i;                                                        \
    uint64_t *(e_arr[2048]), itr, arrs;                                                             \
    n = p*q, itr = 131072ULL, arrs = -1ULL;                                                         \
	                                                                                                \
    for (i = 2ULL; i < n; i++)                                                                      \
    {                                                                                               \
        if (gcd64(i, phi) == 1ULL)                                                                  \
        {                                                                                           \
            if (itr == 131072ULL)                                                                   \
            {                                                                                       \
                itr = 0ULL;                                                                         \
                e_arr[++arrs] = malloc(sizeof(uint64_t)*131072U);                                   \
            }                                                                                       \
            e_arr[arrs][itr++] = i;                                                                 \
        }                                                                                           \
    }                                                                                               \
    e = e_arr[rand() % (arrs + 1ULL)][rand() % itr];                                                \
    for (; arrs != -1ULL; arrs--)                                                                   \
    {                                                                                               \
        free(e_arr[arrs]);                                                                          \
    }                                                                                               \
	                                                                                                \
    for (i = 2ULL; i < n; i++)                                                                      \
    {                                                                                               \
        if ((e*i)%phi == 1ULL)                                                                      \
        {                                                                                           \
            d = i;                                                                                  \
            break;                                                                                  \
        }                                                                                           \
    }

//!!!!!!!!! #define RSA_GENKEY_MTHREADED(e, d, n, p, q)

#define RSA_GENKEY(e, d, n, p, q)    RSA_GENKEY_MEMHUNGRY(e, d, n, p, q)

static void* find_e_threaded(uint64_t i, uint64_t n, uint64_t phi, uint64_t *(e_arr[]))
{
	//!
}

rsa_key_t rsa_genkey(uint64_t p, uint64_t q)
{
    //* n = p*q
    //* phi = (p - 1)*(q - 1)
    //* GCD(e, phi) == 1
    //* e * d === 1 [phi]

    rsa_key_t key;
	//!
    // RSA_GENKEY(key.e, key.d, key.n, p, q)
	//!
	uint64_t phi = (p - 1ULL)*(q - 1ULL), i;                    
    uint64_t *(e_arr[4][512]), itr, arrs;                          
    key.n = p*q, itr = 262144ULL, arrs = -1ULL;      
    LOG_INFO("I'm Here!")
	
	//!
	HANDEL th_h[4];
	uint32_t thid[4];
	typedef struct { uint64_t lb, up, phi, * }
	//!
    // for (i = 2ULL; i < key.n; i++)                                  
    // {                                      
        // if (gcd64(i, phi) == 1ULL)                              
        // {                                              
            // if (itr == 262144ULL)                                
            // {                                                     
                // itr = 0ULL;                                     
                // e_arr[++arrs] = malloc(sizeof(uint64_t)*262144U);
            // }                                                   
            // e_arr[arrs][itr++] = i;                             
        // }                                                       
    // }
	//!
    LOG_NOTE("I'm Here!>>>> arrs: %I64u", arrs+1ULL)                                                     
    key.e = e_arr[rand() % (arrs + 1ULL)][rand() % itr];            
    LOG_INFO("I'm Here!")
    for (; arrs != -1ULL; arrs--)                               
    {                                                           
        free(e_arr[arrs]);             
    }                                                           
	                                                            
    for (i = 2ULL; i < key.n; i++)                                  
    {                                                           
        if ((key.e*i)%phi == 1ULL)                                  
        {                                                       
            key.d = i;        
    LOG_ERROR("I'm Here!")                                      
            break;                                              
        }                                                       
    }
	//!

    return key;
}

void rsa_genkey_(rsa_key_t* key, uint64_t p, uint64_t q)
{
    //* n = p*q
    //* phi = (p - 1)*(q - 1)
    //* GCD(e, phi) == 1
    //* e * d === 1 [phi]

    RSA_GENKEY(key->e, key->d, key->n, p, q)
}

rsa_key_t rsa_genkeyfile(str_t filename, uint64_t p, uint64_t q)
{
    //* n = p*q
    //* phi = (p - 1)*(q - 1)
    //* GCD(e, phi) == 1
    //* e * d === 1 [phi]

    rsa_key_t key;
    RSA_GENKEY(key.e, key.d, key.n, p, q)

    FILE* file_ptr = fopen(filename, "w");

    fprintf(file_ptr, "e: %I64u\nd: %I64u\nn: %I64u", key.e, key.d, key.n);

    fclose(file_ptr);

    return key;
}

rsa_key_t rsa_keyfromfile(str_t filename)
{
    rsa_key_t key;
    FILE* file_ptr = fopen(filename, "r");

    fscanf(file_ptr, "e: %I64u\nd: %I64u\nn: %I64u", &key.e, &key.d, &key.n);

    fclose(file_ptr);

    return key;
}
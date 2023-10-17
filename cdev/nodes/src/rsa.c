#include "rsa.h"


uint32_t rsa_find_c_m_dlist(const uint64_t m_c, const uint64_t e_d, const uint64_t n)
{
    dlist_t *list = dlist_init();

    dlist_pushback(list, m_c);
    for (uint64_t i = 0, last_m_c = -1UL; last_m_c != m_c; i++) // calculate the periode at witche: (m_c^periode)%n = m_c%n
    {
        last_m_c = (dlist_ret(list, i)*m_c)%n;
        dlist_pushback(list, last_m_c);
    }                                                           // c_m%n = (m_c^(e_d%periode))%n
    uint32_t c_m = dlist_ret(list, (e_d%(list->ls-1)) - 1);     // periode = list->ls - 1, c_m = list[pos-1] //? pos = e_d%periode > 1

    dlist_free(&list);
    
    return c_m;
}
uint32_t rsa_find_c_m(const uint64_t m_c, const uint64_t e_d, const uint64_t n)
{
    uint64_t c_m = m_c;
    uint64_t periode = 1;
    uint64_t last_m_c = (m_c * m_c)%n;
    while (last_m_c != m_c)
    {
        last_m_c = (last_m_c * m_c)%n, periode++;
    }
    // LOG_INFO("periode = %lu", periode)
    periode = e_d%periode;
    // LOG_INFO("periode = %lu", periode)
    while (periode-- > 1)
    {
        c_m = (c_m * m_c)%n;
    }

    return c_m;
}
uint32_t rsa_find_c_m_fast(const uint64_t m_c, const uint64_t e_d, const uint64_t n)
{
    uint64_t c_m = m_c;
    uint64_t periode = 1, revperiode = 0, tmp;
    uint64_t last_m_c = (m_c * m_c)%n;
    while (last_m_c != m_c)
    {
        last_m_c = (last_m_c * m_c)%n, periode++;
    }
    
    // LOG_INFO("periode = %lu", periode)
    periode = e_d % periode;
    // LOG_INFO("periode = %lu", periode)
    // revperiode = reverseint64(periode); //!
    char periodebin64[64+1], revperiodebin64[64+1];
    uinttobits(periodebin64, periode);
    log_colorwhite("periode = %lu = %s ===> ", periode, periodebin64);
    tmp = periode;
    revperiode |= periode & 1;
    periode >>= 1;
    while (periode > 0)
    {
        revperiode <<= 1;
        revperiode |= periode & 1;
        periode >>= 1;
    }
    uinttobits(revperiodebin64, revperiode);
    log_colorwhite("revperiode = %lu = %s\n", revperiode, revperiodebin64);
    // LOG_INFO("revperiode = %lu = 2^%d", revperiode, ilog2_64(revperiode))
    
    while (revperiode > 0)
    {
        c_m = (c_m * c_m)%n;
        revperiode >>= 1;
        if (revperiode & 1)
        {
            c_m = (c_m * m_c)%n;
        }
    }

    return c_m;
}
uint32_t rsa_find_c_m_memoryhungry(const uint64_t m_c, const uint64_t e_d, const uint64_t n)
{
    uint64_t periode = 0, arrs = -1UL;
    uint64_t *(arr[256]);
    arr[++arrs] = malloc(RSA_MEMORYHUNGRY * sizeof(uint64_t));

    arr[0][0] = m_c;
    for (uint64_t i = 1, arrl = RSA_MEMORYHUNGRY, last_m_c;; i++, periode++)
    {
        last_m_c = (arr[arrs][i-1]*m_c)%n;

        if (last_m_c == m_c)
        {
            break;
        }
        else if (periode == arrl)
        {
            i = 1, arrl += RSA_MEMORYHUNGRY;
            arr[++arrs] = malloc(RSA_MEMORYHUNGRY * sizeof(uint64_t));
            // LOG_INFO("periode = %lu, arrs = %lu", periode, arrs);
        }

        arr[arrs][i] = last_m_c;
    }
    const uint64_t pos = (e_d-1)%(periode+1);
    uint32_t c_m = arr[pos/RSA_MEMORYHUNGRY][pos%RSA_MEMORYHUNGRY];

    while (arrs != -1UL)
    {
        free(arr[arrs--]);
    }

    return c_m;
}
void rsa_genkey_fast(rsakey_t *key, const uint32_t p, const uint32_t q)
{
    //* Find N
    key->n = p * q;

    //* Find E
    const uint32_t phi = (p - 1) * (q - 1);
    for (uint32_t i = phi-1; i > 1; i--)
    {
        if (gcd64(phi, i) == 1)
        {
            key->e = i;
            break;
        }
    }

    //* Find D
    for (uint64_t i = 0; i < phi; i++)
    {
        if ((key->e * i)%phi == 1)
        {
            key->d = i;
            break;
        }
    }
}
void rsa_genkey(rsakey_t *key, const uint32_t p, const uint32_t q)
{
    //* Find N
    key->n = p * q;

    //* Find E
    srand(mtime_32seed());
    const uint32_t phi = (p - 1) * (q - 1);
    uint32_t count = 0;
    for (uint32_t i = phi-1; i > 1; i--)
    {
        if (gcd64(phi, i) == 1)
        {
            count++;
        }
    }
    // LOG_INFO("count: %u", count);
    count = rand()%count;
    if (count == 0) count++;
    // LOG_INFO("count: %u", count);
    for (uint32_t i = phi-1; i > 1; i--)
    {
        if (gcd64(phi, i) == 1)
        {
            count--;
        }
        if (count == 0)
        {
            key->e = i;
            break;
        }
    }

    //* Find D
    for (uint64_t i = 0; i < phi; i++)
    {
        if ((key->e * i)%phi == 1)
        {
            key->d = i;
            break;
        }
    }
}
void rsa_genkeys(rsakey_t *key, rsapubkey_t *pubkey, rsaprivkey_t *privkey, const uint32_t p, const uint32_t q)
{
    RSA_GENKEY(key, p, q);
    rsa_genpubkey(*key, *pubkey);
    rsa_genprivkey(*key, *privkey);
}
rsakey_t rsa_genkeyfile(const string_t keyfile, const uint32_t p, const uint32_t q)
{
    FILE *rsakey = fopen(keyfile, "w");
    if (rsakey == NULL)
    {
        log_fatal_plus(-1, "unable to open key.rsa");
    }
    rsakey_t key;
    RSA_GENKEY(&key, p, q);
    fprintf(rsakey, "%u\n%u\n%u\ne, d, n\n", key.e, key.d, key.n);
    fclose(rsakey);

    return key;
}
void rsa_genkeyfile_fromkey(const string_t keyfile, const rsakey_t key)
{
    FILE *rsakey = fopen(keyfile, "w");
    if (rsakey == NULL)
    {
        log_fatal_plus(-1, "unable to open key.rsa");
    }
    fprintf(rsakey, "%u\n%u\n%u\ne, d, n\n", key.e, key.d, key.n);
    fclose(rsakey);
}
rsakey_t rsa_genkey_fromfile(const string_t keyfile)
{
    FILE *rsakey = fopen(keyfile, "r");
    if (rsakey == NULL)
    {
        log_fatal_plus(-1, "unable to open key.rsa");
    }

    char_t keybuffer[12];
    fscanf(rsakey, "%s", keybuffer);   //* e
    const uint32_t e = strtouint(keybuffer);
    fscanf(rsakey, "%s", keybuffer);   //* d
    const uint32_t d = strtouint(keybuffer);
    fscanf(rsakey, "%s", keybuffer);   //* n
    const uint32_t n = strtouint(keybuffer);
    const rsakey_t key = {e, d, n};
    fclose(rsakey);

    return key;
}
string32_t rsa_encript(const rsapubkey_t *key, const string_t message, string32_t encmess)
{
    uint32_t m, c, i;
    for (i = 0; message[i] != 0;)
    {
        m = message[i];
        c = RSA_FIND_CM(m, key->e, key->n);
        encmess[i++] = c;
    }
    encmess[i] = '\0';

    return encmess;
}
string_t rsa_decript(const rsaprivkey_t *key, const string32_t encmess, string_t decmess)
{
    uint32_t m, c, i;
    for (i = 0; encmess[i] != 0;)
    {
        c = encmess[i];
        m = RSA_FIND_CM(c, key->d, key->n);
        decmess[i++] = m;
    }
    decmess[i] = '\0';

    return decmess;
}
void rsa_encriptfile(const string_t pubkeyfile, const string_t messagefile, string_t encmessfile)
{
    FILE *pubkey  = fopen(pubkeyfile, "r");
    FILE *message = fopen(messagefile, "r");
    FILE *encmess = fopen(encmessfile, "w");
    if ((pubkey == NULL) || (message == NULL) || (encmess == NULL))
    {
        log_fatal_plus(-1, "unable to open %s, %s or %s", pubkeyfile, messagefile, encmessfile);
    }

    char_t keybuffer[12];
    fscanf(pubkey, "%s", keybuffer);    //* e
    const uint32_t e = strtouint(keybuffer);
    fscanf(pubkey, "%s", keybuffer);    //! d
    fscanf(pubkey, "%s", keybuffer);    //* n
    const uint32_t n = strtouint(keybuffer);
    const rsapubkey_t key = {e, n};
    LOG_INFO("key->e-> %u, key->n-> %u", key.e, key.n);
    fclose(pubkey);

    uint32_t c;
    uchar_t m;
    while (fread(&m, sizeof(uchar_t), 1, message) == 1)
    {
        c = RSA_FIND_CM(m + 2, key.e, key.n);
        IFNOTDEBUG (
            fwrite(&c, sizeof(char32_t), 1, encmess);
        )
        IFDEBUG (
            if (fwrite(&c, sizeof(char32_t), 1, encmess) != 1)
            {
                log_fatal_plus(-2, "unable to write to file %s", encmessfile);
            }
        )
    }

    fclose(message);
    fclose(encmess);
}
void rsa_decriptfile(const string_t privkeyfile, const string_t encmessfile, string_t decmessfile)
{
    FILE *privkey = fopen(privkeyfile, "r");
    FILE *encmess = fopen(encmessfile, "r");
    FILE *decmess = fopen(decmessfile, "w");
    if ((privkey == NULL) || (encmess == NULL) || (decmess == NULL))
    {
        log_fatal_plus(-1, "unable to open %s, %s or %s", privkeyfile, encmessfile, decmessfile);
    }

    char_t keybuffer[12];
    fscanf(privkey, "%s", keybuffer);   //! e
    fscanf(privkey, "%s", keybuffer);   //* d
    const uint32_t d = strtouint(keybuffer);
    fscanf(privkey, "%s", keybuffer);   //* n
    const uint32_t n = strtouint(keybuffer);
    const rsaprivkey_t key = {d, n};
    LOG_INFO("key->d-> %u, key->n-> %u", key.d, key.n);
    fclose(privkey);

    uint32_t c;
    uchar_t m;
    while (fread(&c, sizeof(char32_t), 1, encmess) == 1)
    {
        m = RSA_FIND_CM(c, key.d, key.n) - 2;
        IFNOTDEBUG (
            fwrite(&m, sizeof(uchar_t), 1, decmess);
        )
        IFDEBUG (
            if (fwrite(&m, sizeof(uchar_t), 1, decmess) != 1)
            {
                log_fatal_plus(-2, "unable to write to file %s", decmessfile);
            }
        )
    }

    fclose(encmess);
    fclose(decmess);
}

//************************************************
typedef struct mc_ed_n_t
{
    uint64_t m_c;
    uint64_t e_d;
    uint64_t n;
    uint64_t c_m;
} mc_ed_n_t;

#define RSA_MC(mc_ed_n) (((mc_ed_n_t*)(mc_ed_n))->m_c)
#define RSA_ED(mc_ed_n) (((mc_ed_n_t*)(mc_ed_n))->e_d)
#define RSA_N(mc_ed_n)  (((mc_ed_n_t*)(mc_ed_n))->n)
#define RSA_CM(mc_ed_n) (((mc_ed_n_t*)(mc_ed_n))->c_m)

void* rsa_find_c_m_pthread(void *mc_ed_n)
{
    const uint64_t m_c = RSA_MC(mc_ed_n);
    const uint64_t n   = RSA_N(mc_ed_n);
    uint64_t c_m = m_c;
    uint64_t periode = 1;
    for (uint64_t last_m_c = (m_c * m_c)%n; last_m_c != m_c; periode++)
    {
        last_m_c = (last_m_c * m_c)%n;
    }

    periode = RSA_ED(mc_ed_n)%periode;
    
    while (periode-- > 1)
    {
        c_m = (c_m * m_c)%n;
    }

    RSA_CM(mc_ed_n) = c_m;
}
// void* rsa_find_c_m_pthread_fast(void *mc_ed_n)
// {
//     const uint64_t m_c = RSA_MC(mc_ed_n);
//     const uint64_t n   = RSA_N(mc_ed_n);
//     uint64_t c_m = m_c;
//     uint64_t periode = 1, revperiode;
//     uint64_t last_m_c = (m_c * m_c)%n; 
//     while (last_m_c != m_c)
//     {
//         last_m_c = (last_m_c * m_c)%n, periode++;
//     }

//     periode = RSA_ED(mc_ed_n) % periode;
//     revperiode = reverseint64(periode);  //!
    
//     while (revperiode > 0)
//     {
//         c_m = (c_m * c_m)%n;
//         if (revperiode & 1)
//         {
//             c_m = (c_m * m_c)%n;
//         }
//         revperiode >>= 1;
//     }

//     RSA_CM(mc_ed_n) = c_m;
// }
void* rsa_find_c_m_pthread_memoryhungry(void *mc_ed_n)
{

    const uint64_t n = RSA_N(mc_ed_n);
    uint64_t periode = 0, arrs = -1UL;
    uint64_t *(arr[256]);
    arr[++arrs] = malloc(RSA_MEMORYHUNGRY * sizeof(uint64_t));

    arr[0][0] = RSA_MC(mc_ed_n);
    for (uint64_t i = 1, arrl = RSA_MEMORYHUNGRY, last_m_c;; i++, periode++)
    {
        last_m_c = (arr[arrs][i-1]*arr[0][0])%n;

        if (last_m_c == arr[0][0])
        {
            break;
        }
        else if (periode == arrl)
        {
            i = 1, arrl += RSA_MEMORYHUNGRY;
            arr[++arrs] = malloc(RSA_MEMORYHUNGRY * sizeof(uint64_t));
            // LOG_INFO("periode = %lu, arrs = %lu", periode, arrs);
        }

        arr[arrs][i] = last_m_c;
    }
    const uint64_t pos = (RSA_ED(mc_ed_n)-1)%(periode+1);
    RSA_CM(mc_ed_n) = arr[pos/RSA_MEMORYHUNGRY][pos%RSA_MEMORYHUNGRY];

    while (arrs != -1UL)
    {
        free(arr[arrs--]);
    }
}
string32_t rsa_encript_pthread(const rsapubkey_t *key, const string_t message, string32_t encmess)
{
    uint64_t i;
    pthread_t pthread[8];
    mc_ed_n_t mc_ed_n[8];
    mc_ed_n[0].e_d = mc_ed_n[1].e_d = mc_ed_n[2].e_d = mc_ed_n[3].e_d = mc_ed_n[4].e_d = mc_ed_n[5].e_d = mc_ed_n[6].e_d = mc_ed_n[7].e_d = key->e;
    mc_ed_n[0].n   = mc_ed_n[1].n   = mc_ed_n[2].n   = mc_ed_n[3].n   = mc_ed_n[4].n   = mc_ed_n[5].n   = mc_ed_n[6].n   = mc_ed_n[7].n   = key->n;
    for (i = 0; message[i] != 0;)
    {
        if ((message[i+1] != 0) && (message[i+2] != 0) && (message[i+3] != 0) && (message[i+4] != 0) && (message[i+5] != 0) && (message[i+6] != 0) && (message[i+7] != 0))
        {
            mc_ed_n[0].m_c = message[i];
            pthread_create(&(pthread[0]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[0])));
            mc_ed_n[1].m_c = message[i+1];
            pthread_create(&(pthread[1]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[1])));
            mc_ed_n[2].m_c = message[i+2];
            pthread_create(&(pthread[2]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[2])));
            mc_ed_n[3].m_c = message[i+3];
            pthread_create(&(pthread[3]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[3])));
            mc_ed_n[4].m_c = message[i+4];
            pthread_create(&(pthread[4]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[4])));
            mc_ed_n[5].m_c = message[i+5];
            pthread_create(&(pthread[5]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[5])));
            mc_ed_n[6].m_c = message[i+6];
            pthread_create(&(pthread[6]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[6])));
            mc_ed_n[7].m_c = message[i+7];
            pthread_create(&(pthread[7]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[7])));
            pthread_join(pthread[0], NULL);
            pthread_join(pthread[1], NULL);
            pthread_join(pthread[2], NULL);
            pthread_join(pthread[3], NULL);
            pthread_join(pthread[4], NULL);
            pthread_join(pthread[5], NULL);
            pthread_join(pthread[6], NULL);
            pthread_join(pthread[7], NULL);
            encmess[i++] = mc_ed_n[0].c_m;
            encmess[i++] = mc_ed_n[1].c_m;
            encmess[i++] = mc_ed_n[2].c_m;
            encmess[i++] = mc_ed_n[3].c_m;
            encmess[i++] = mc_ed_n[4].c_m;
            encmess[i++] = mc_ed_n[5].c_m;
            encmess[i++] = mc_ed_n[6].c_m;
            encmess[i++] = mc_ed_n[7].c_m;
        }
        else
        {
            for (uint64_t j = 0; message[i+j] != 0; j++)
            {
                mc_ed_n[j].m_c = message[i+j];
                pthread_create(&(pthread[j]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[j])));
            }
            for (uint64_t j = 0; message[i+j] != 0; j++)
            {
                pthread_join(pthread[j], NULL);
            }
            for (uint64_t j = 0; message[i] != 0; i++, j++)
            {
                encmess[i] = mc_ed_n[j].c_m;
            }
        }
    }
    encmess[i] = '\0';

    return encmess;
}
string_t rsa_decript_pthread(const rsaprivkey_t *key, const string32_t encmess, string_t decmess)
{
    uint64_t i;
    pthread_t pthread[8];
    mc_ed_n_t mc_ed_n[8];
    mc_ed_n[0].e_d = mc_ed_n[1].e_d = mc_ed_n[2].e_d = mc_ed_n[3].e_d = mc_ed_n[4].e_d = mc_ed_n[5].e_d = mc_ed_n[6].e_d = mc_ed_n[7].e_d = key->d;
    mc_ed_n[0].n   = mc_ed_n[1].n   = mc_ed_n[2].n   = mc_ed_n[3].n   = mc_ed_n[4].n   = mc_ed_n[5].n   = mc_ed_n[6].n   = mc_ed_n[7].n   = key->n;
    for (i = 0; encmess[i] != 0;)
    {
        if ((encmess[i+1] != 0) && (encmess[i+2] != 0) && (encmess[i+3] != 0) && (encmess[i+4] != 0) && (encmess[i+5] != 0) && (encmess[i+6] != 0) && (encmess[i+7] != 0))
        {
            mc_ed_n[0].m_c = encmess[i];
            pthread_create(&(pthread[0]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[0])));
            mc_ed_n[1].m_c = encmess[i+1];
            pthread_create(&(pthread[1]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[1])));
            mc_ed_n[2].m_c = encmess[i+2];
            pthread_create(&(pthread[2]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[2])));
            mc_ed_n[3].m_c = encmess[i+3];
            pthread_create(&(pthread[3]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[3])));
            mc_ed_n[4].m_c = encmess[i+4];
            pthread_create(&(pthread[4]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[4])));
            mc_ed_n[5].m_c = encmess[i+5];
            pthread_create(&(pthread[5]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[5])));
            mc_ed_n[6].m_c = encmess[i+6];
            pthread_create(&(pthread[6]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[6])));
            mc_ed_n[7].m_c = encmess[i+7];
            pthread_create(&(pthread[7]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[7])));
            pthread_join(pthread[0], NULL);
            pthread_join(pthread[1], NULL);
            pthread_join(pthread[2], NULL);
            pthread_join(pthread[3], NULL);
            pthread_join(pthread[4], NULL);
            pthread_join(pthread[5], NULL);
            pthread_join(pthread[6], NULL);
            pthread_join(pthread[7], NULL);
            decmess[i++] = mc_ed_n[0].c_m;
            decmess[i++] = mc_ed_n[1].c_m;
            decmess[i++] = mc_ed_n[2].c_m;
            decmess[i++] = mc_ed_n[3].c_m;
            decmess[i++] = mc_ed_n[4].c_m;
            decmess[i++] = mc_ed_n[5].c_m;
            decmess[i++] = mc_ed_n[6].c_m;
            decmess[i++] = mc_ed_n[7].c_m;
        }
        else
        {
            for (uint64_t j = 0; encmess[i+j] != 0; j++)
            {
                mc_ed_n[j].m_c = encmess[i+j];
                pthread_create(&(pthread[j]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[j])));
            }
            for (uint64_t j = 0; encmess[i+j] != 0; j++)
            {
                pthread_join(pthread[j], NULL);
            }
            for (uint64_t j = 0; encmess[i] != 0; i++, j++)
            {
                decmess[i] = mc_ed_n[j].c_m;
            }
        }
    }
    decmess[i] = '\0';

    return decmess;
}
void rsa_encriptfile_pthread(const string_t pubkeyfile, const string_t messagefile, string_t encmessfile)
{
    FILE *pubkey  = fopen(pubkeyfile, "r");
    FILE *message = fopen(messagefile, "r");
    FILE *encmess = fopen(encmessfile, "w");
    if ((pubkey == NULL) || (message == NULL) || (encmess == NULL))
    {
        log_fatal_plus(-1, "unable to open %s, %s or %s", pubkeyfile, messagefile, encmessfile);
    }

    char_t keybuffer[12];
    fscanf(pubkey, "%s", keybuffer);    //* e
    const uint32_t e = strtouint(keybuffer);
    fscanf(pubkey, "%s", keybuffer);    //! d
    fscanf(pubkey, "%s", keybuffer);    //* n
    const uint32_t n = strtouint(keybuffer);
    const rsapubkey_t key = {e, n};
    LOG_INFO("key->e-> %u, key->n-> %u", key.e, key.n);
    fclose(pubkey);

    pthread_t pthread[4];
    mc_ed_n_t mc_ed_n[4];
    mc_ed_n[0].e_d = mc_ed_n[1].e_d = mc_ed_n[2].e_d = mc_ed_n[3].e_d = key.e;
    mc_ed_n[0].n   = mc_ed_n[1].n   = mc_ed_n[2].n   = mc_ed_n[3].n   = key.n;
    uchar_t  m[4];
    char32_t c[4];
    size_t tmp_size;
    while ((tmp_size = fread(m, sizeof(uchar_t), 4, message)))
    {
        if (tmp_size == 4)
        {
            mc_ed_n[0].m_c = m[0] + 2;
            pthread_create(&(pthread[0]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[0])));
            mc_ed_n[1].m_c = m[1] + 2;
            pthread_create(&(pthread[1]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[1])));
            mc_ed_n[2].m_c = m[2] + 2;
            pthread_create(&(pthread[2]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[2])));
            mc_ed_n[3].m_c = m[3] + 2;
            pthread_create(&(pthread[3]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[3])));
            pthread_join(pthread[0], NULL);
            pthread_join(pthread[1], NULL);
            pthread_join(pthread[2], NULL);
            pthread_join(pthread[3], NULL);
            c[0] = mc_ed_n[0].c_m;
            c[1] = mc_ed_n[1].c_m;
            c[2] = mc_ed_n[2].c_m;
            c[3] = mc_ed_n[3].c_m;
            IFNOTDEBUG (
                fwrite(c, sizeof(char32_t), 4, encmess);
            )
            IFDEBUG (
                if (fwrite(c, sizeof(char32_t), 4, encmess) != 4)
                {
                    log_fatal_plus(-2, "unable to write to file %s", encmessfile);
                }
            )
        }
        else
        {
            for (uint64_t i = 0; i < tmp_size; i++)
            {
                mc_ed_n[i].m_c = m[i] + 2;
                pthread_create(&(pthread[i]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[i])));
            }
            for (uint64_t i = 0; i < tmp_size; i++)
            {
                pthread_join(pthread[i], NULL);
            }
            for (uint64_t i = 0; i < tmp_size; i++)
            {
                c[i] = mc_ed_n[i].c_m;
            }
            IFNOTDEBUG (
                fwrite(c, sizeof(char32_t), tmp_size, encmess);
            )
            IFDEBUG (
                if (fwrite(m, sizeof(uchar_t), tmp_size, encmess) != tmp_size)
                {
                    log_fatal_plus(-2, "unable to write to file %s", encmessfile);
                }
            )
        }
    }

    fclose(message);
    fclose(encmess);
}
void rsa_decriptfile_pthread(const string_t privkeyfile, const string_t encmessfile, string_t decmessfile)
{
    FILE *privkey = fopen(privkeyfile, "r");
    FILE *encmess = fopen(encmessfile, "r");
    FILE *decmess = fopen(decmessfile, "w");
    if ((privkey == NULL) || (encmess == NULL) || (decmess == NULL))
    {
        log_fatal_plus(-1, "unable to open %s, %s or %s", privkeyfile, encmessfile, decmessfile);
    }

    char_t keybuffer[12];
    fscanf(privkey, "%s", keybuffer);   //! e
    fscanf(privkey, "%s", keybuffer);   //* d
    const uint32_t d = strtouint(keybuffer);
    fscanf(privkey, "%s", keybuffer);   //* n
    const uint32_t n = strtouint(keybuffer);
    const rsaprivkey_t key = {d, n};
    LOG_INFO("key->d-> %u, key->n-> %u", key.d, key.n);
    fclose(privkey);

    pthread_t pthread[4];
    mc_ed_n_t mc_ed_n[4];
    mc_ed_n[0].e_d = mc_ed_n[1].e_d = mc_ed_n[2].e_d = mc_ed_n[3].e_d = key.d;
    mc_ed_n[0].n   = mc_ed_n[1].n   = mc_ed_n[2].n   = mc_ed_n[3].n   = key.n;
    uchar_t  m[4];
    char32_t c[4];
    size_t tmp_size;
    while ((tmp_size = fread(c, sizeof(char32_t), 4, encmess)))
    {
        if (tmp_size == 4)
        {
            mc_ed_n[0].m_c = c[0];
            pthread_create(&(pthread[0]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[0])));
            mc_ed_n[1].m_c = c[1];
            pthread_create(&(pthread[1]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[1])));
            mc_ed_n[2].m_c = c[2];
            pthread_create(&(pthread[2]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[2])));
            mc_ed_n[3].m_c = c[3];
            pthread_create(&(pthread[3]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[3])));
            pthread_join(pthread[0], NULL);
            pthread_join(pthread[1], NULL);
            pthread_join(pthread[2], NULL);
            pthread_join(pthread[3], NULL);
            m[0] = mc_ed_n[0].c_m - 2;
            m[1] = mc_ed_n[1].c_m - 2;
            m[2] = mc_ed_n[2].c_m - 2;
            m[3] = mc_ed_n[3].c_m - 2;
            IFNOTDEBUG (
                fwrite(m, sizeof(uchar_t), 4, decmess);
            )
            IFDEBUG (
                if (fwrite(m, sizeof(uchar_t), 4, decmess) != 4)
                {
                    log_fatal_plus(-2, "unable to write to file %s", decmessfile);
                }
            )
        }
        else
        {
            for (uint64_t i = 0; i < tmp_size; i++)
            {
                mc_ed_n[i].m_c = c[i];
                pthread_create(&(pthread[i]), NULL, RSA_FIND_CM_PTHREAD, (void*)(&(mc_ed_n[i])));
            }
            for (uint64_t i = 0; i < tmp_size; i++)
            {
                pthread_join(pthread[i], NULL);
            }
            for (uint64_t i = 0; i < tmp_size; i++)
            {
                m[i] = mc_ed_n[i].c_m - 2;
            }
            IFNOTDEBUG (
                fwrite(m, sizeof(uchar_t), tmp_size, decmess);
            )
            IFDEBUG (
                if (fwrite(m, sizeof(uchar_t), tmp_size, decmess) != tmp_size)
                {
                    log_fatal_plus(-2, "unable to write to file %s", decmessfile);
                }
            )
        }
    }

    fclose(encmess);
    fclose(decmess);
}
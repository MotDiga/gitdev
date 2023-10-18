#include "rsa.h"


uint32_t _rsa_find_c_m(uint32_t m_c, uint32_t e_d, uint32_t n)
{
    dlist_t *list = dlist_init();

    uint32_t list_0 = m_c%n;
    dlist_pushback(list, list_0);
    for (uint32_t i = 1, tmp;; i++)
    {
        tmp = (dlist_ret(list, i-1)*m_c)%n;

        if (list_0 == tmp)
        {
            break;
        }

        dlist_pushback(list, tmp);
    }
    uint32_t ret = dlist_ret(list, (e_d-1)%(list->ls));

    dlist_delete(&list);
    
    return ret;
}
uint32_t rsa_find_c_m(uint32_t m_c, uint32_t e_d, uint32_t n)
{
    uint64_t arrl = 1048576L, arrs = -1L;
    uint64_t _m_c = m_c, _e_d = e_d, _n = n;
    uint64_t *(arr[4096]);
    arr[++arrs] = malloc(1048576L * sizeof(uint64_t));

    arr[0][0] = _m_c%_n;
    for (uint64_t i = 1L, j = 0L, tmp;; i++, j++)
    {
        tmp = (arr[arrs][i-1L]*_m_c)%_n;

        if (arr[0][0] == tmp)
        {
            arrl = j;
            break;
        }

        if (j == arrl)
        {
            i = 0L, arrl += 1048576L;
            arr[++arrs] = malloc(1048576L * sizeof(uint64_t));
            LOG_INFO("arrl = %lu, arrs = %lu", arrl, arrs);
        }

        arr[arrs][i] = tmp;
    }
    uint64_t c_m = (_e_d%arrl);
    uint64_t ret = arr[c_m/1048576L][c_m%1048576L];

    for (uint64_t i = 0; i <= arrs; i++)
    {
        free(arr[i]);
    }

    return ret;

    // uint32_t m_c0 = m_c%n, periode;
    // uint64_t last_m_c = m_c0, c_m = m_c0;
    // for (uint64_t i = 1, tmp;; i++)
    // {
    //     tmp = (last_m_c * m_c)%n;

    //     if (m_c0 == tmp)
    //     {
    //         periode = i;
    //         break;
    //     }

    //     last_m_c = tmp;
    // }
    // LOG_INFO("periode: %u", periode);
    // periode = e_d%periode - 1;
    // LOG_INFO("periode: %u", periode);
    // for (uint32_t i = 0; i < periode; i++)
    // {
    //     c_m = (c_m * m_c)%n;
    // }

    // return c_m;
}
rsakeys_t* _rsa_genkeys(rsakeys_t *key, uint32_t p, uint32_t q)
{
    //* Find N
    key->n = p * q;

    //* Find E
    const uint32_t phi = (p - 1) * (q - 1);
    for (uint32_t i = phi-1; i > 1; i--)
    {
        if (gcd(phi, i) == 1)
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

    return key;
}
rsakeys_t* rsa_genkeys(rsakeys_t *key, uint32_t p, uint32_t q)
{
    //* Find N
    key->n = p * q;

    //* Find E
    srand(mtime_32seed());
    const uint32_t phi = (p - 1) * (q - 1);
    uint32_t count = 0;
    for (uint32_t i = phi-1; i > 1; i--)
    {
        if (gcd(phi, i) == 1)
        {
            count++;
        }
    }
    LOG_INFO("count: %u", count);
    count = (rand()%(count-1)) +1;
    LOG_INFO("count: %u", count);
    for (uint32_t i = phi-1; i > 1; i--)
    {
        if (gcd(phi, i) == 1)
        {
            count--;
        }
        if (count == 0)
        {
            key->e = i;
            break;
        }
    }
    // const uint32_t phi = (p - 1) * (q - 1);
    // for (uint32_t i = phi-1; i > 1; i--)
    // {
    //     if (gcd(phi, i) == 1)
    //     {
    //         key->e = i;
    //         break;
    //     }
    // }

    //* Find D
    for (uint64_t i = 0; i < phi; i++)
    {
        if ((key->e * i)%phi == 1)
        {
            key->d = i;
            break;
        }
    }

    return key;
}
rsapubkey_t* rsa_pubkey(rsakeys_t *key, rsapubkey_t *pubkey)
{
    *pubkey = (rsapubkey_t){key->e, key->n};
    return pubkey;
}
rsaprivkey_t* rsa_privkey(rsakeys_t *key, rsaprivkey_t *privkey)
{
    *privkey =  (rsaprivkey_t){key->d, key->n};
    return privkey;
}
string32_t rsa_encript(const rsapubkey_t *key, const string_t message, string32_t encriptedmessage)
{
    uint32_t m, c, i;
    for (i = 0; message[i] != 0;)
    {
        m = message[i];
        c = rsa_find_c_m(m, key->e, key->n) + 1;
        encriptedmessage[i++] = c;
    }
    encriptedmessage[i] = '\0';

    return encriptedmessage;
}
string_t rsa_decript(const rsaprivkey_t *key, const string32_t encriptedmessage, string_t decriptedmessage)
{
    uint32_t m, c, i;
    for (i = 0; encriptedmessage[i] != 0;)
    {
        c = encriptedmessage[i] - 1;
        m = rsa_find_c_m(c, key->d, key->n);
        decriptedmessage[i++] = m;
    }
    decriptedmessage[i] = '\0';

    return decriptedmessage;
}
void rsa_genfilekeys(uint32_t p, uint32_t q)
{
    FILE *rsakeys = fopen("rsakeys.txt", "w");
    FILE *pubkey  = fopen("pubkey.rsa", "w");
    FILE *privkey = fopen("privkey.rsa", "w");
    if ((rsakeys == NULL) || (pubkey == NULL) || (privkey == NULL))
    {
        LOG_FATAL(-1, "unable to open rsakeys.txt, pubkey.rsa or privkey.rsa");
    }

    rsakeys_t key;
    rsa_genkeys(&key, p, q);
    fprintf(rsakeys, "(e:%u, d:%u, n:%u), (p:%u, q:%u)\n", key.e, key.d, key.n, p, q);

    fprintf(pubkey, "%u\n%u\n", key.e, key.n);
    fprintf(privkey, "%u\n%u\n", key.d, key.n);

    fclose(rsakeys);
    fclose(pubkey);
    fclose(privkey);
}
void rsa_encriptfile(string_t pubkeyfile, string_t messagefile)
{
    FILE *pubkey           = fopen(pubkeyfile, "r");
    FILE *message          = fopen(messagefile, "r");
    FILE *encriptedmessage = fopen("encmess.bin", "w");
    if ((pubkey == NULL) || (message == NULL) || (encriptedmessage == NULL))
    {
        LOG_FATAL(-1, "unable to open %s, %s or encmess.bin", pubkeyfile, messagefile);
    }

    uint32_t e, n;
    char_t keybuffer[12];
    fscanf(pubkey, "%s", keybuffer);
    e = strtouint(keybuffer);
    fscanf(pubkey, "%s", keybuffer);
    n = strtouint(keybuffer);

    rsapubkey_t key = {e, n};
    LOG_INFO("key->e-> %u, key->n-> %u", key.e, key.n);

    uint32_t m, c;
    uchar_t tmp;
    while (fread(&tmp, sizeof(uchar_t), 1, message) == 1)
    {
        m = tmp;
        c = rsa_find_c_m(m, key.e, key.n) + 1;
        LOG_INFO("tmp: %u, m: %u, c: %u", tmp, m, c);
        if (fwrite(&c, sizeof(char32_t), 1, encriptedmessage) != 1)
        {
            LOG_FATAL(-2, "unable to write to file encmess.bin");
        }
    }

    fclose(pubkey);
    fclose(message);
    fclose(encriptedmessage);
}
void rsa_decriptfile(string_t privkeyfile, string_t encriptedmessagefile)
{
    FILE *privkey          = fopen(privkeyfile, "r");
    FILE *encriptedmessage = fopen(encriptedmessagefile, "r");
    FILE *decriptedmessage = fopen("decmess.txt", "w");
    if ((privkey == NULL) || (encriptedmessage == NULL) || (decriptedmessage == NULL))
    {
        LOG_FATAL(-1, "unable to open %s, %s or decmess.txt", privkeyfile, encriptedmessagefile);
    }

    uint32_t d, n;
    char_t keybuffer[12];
    fscanf(privkey, "%s", keybuffer);
    d = strtouint(keybuffer);
    fscanf(privkey, "%s", keybuffer);
    n = strtouint(keybuffer);

    rsaprivkey_t key = {d, n};
    LOG_INFO("key->d-> %u, key->n-> %u", key.d, key.n);

    uint32_t m, c;
    uchar_t tmp;
    while (fread(&c, sizeof(char32_t), 1, encriptedmessage) == 1)
    {
        c--;
        m = rsa_find_c_m(c, key.d, key.n);
        tmp = m;
        LOG_INFO("tmp: %u, c: %u, m: %u", tmp, c, m)
        if (fwrite(&tmp, sizeof(uchar_t), 1, decriptedmessage) != 1)
        {
            LOG_FATAL(-2, "unable to write to file decmess.txt");
        }
    }

    fclose(privkey);
    fclose(encriptedmessage);
    fclose(decriptedmessage);
}
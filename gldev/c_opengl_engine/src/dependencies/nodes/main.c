#include <stdmoh.h>
#include "tests/tests.h"
#include "tests/benchmarks.h"

#define rotateleft(x,n) ((x<<n) | (x>>(32-n)))  
#define rotateright(x,n) ((x>>n) | (x<<(32-n)))  

void sha1(uchar_t *str1)  
{
    uint64_t h0, h1, h2, h3, h4, a, b, c, d, e, f, k, temp;
    int64_t i, j;
    
    h0 = 0x67452301;
    h1 = 0xEFCDAB89;
    h2 = 0x98BADCFE;
    h3 = 0x10325476;
    h4 = 0xC3D2E1F0;
    
    uchar_t *str;
    str = (uchar_t*)malloc(strlen((const char_t*)str1) + 100);
    strcpy((char_t*)str,(const char_t*)str1);
    
    int64_t current_length = strlen((const char_t*)str);
    int64_t original_length = current_length;
    str[current_length] = 0x80;
    str[current_length + 1] = '\0';
    
    // char_t ic = str[current_length];  //!
    current_length++;
    
    int64_t ib = current_length % 64;
    if (ib < 56)
    {
        ib = 56-ib;
    }
    else
    {
        ib = 120 - ib;
    }
  
    for (i = 0; i < ib; i++)  
    {
        str[current_length]=0x00;
        current_length++;
    }
    str[current_length + 1] = '\0';
    
    for(i = 0; i < 6; i++)  
    {
        str[current_length]=0x0;
        current_length++;
    }
    str[current_length] = (original_length * 8) / 0x100 ;
    current_length++;
    str[current_length] = (original_length * 8) % 0x100;
    current_length++;
    str[current_length+i]='\0';
    
    int number_of_chunks = current_length/64;
    uint64_t word[80]; 
    for (i = 0; i < number_of_chunks; i++)  
    {
        for(j = 0; j < 16; j++)  
        {
            word[j] = str[i*64 + j*4 + 0] * 0x1000000 + str[i*64 + j*4 + 1] * 0x10000 + str[i*64 + j*4 + 2] * 0x100 + str[i*64 + j*4 + 3];
        }
        for(j=16;j<80;j++)  
        {
            word[j] = rotateleft((word[j-3] ^ word[j-8] ^ word[j-14] ^ word[j-16]), 1);
        }
        
        a = h0;
        b = h1;
        c = h2;
        d = h3;
        e = h4;
        
        for(int64_t m = 0; m < 80; m++)  
        {
            if(m <= 19)  
            {
                f = (b & c) | ((~b) & d);
                k = 0x5A827999;
            }
            else if(m <= 39)  
            {
                f = b ^ c ^ d;
                k = 0x6ED9EBA1;
            }
            else if(m <= 59)  
            {
                f = (b & c) | (b & d) | (c & d);
                k = 0x8F1BBCDC;
            }
            else  
            {
                f = b ^ c ^ d;
                k = 0xCA62C1D6; 
            }
            
            temp = (rotateleft(a, 5) + f + e + k + word[m]) & 0xFFFFFFFF;
            e = d;
            d = c;
            c = rotateleft(b, 30);
            b = a;
            a = temp;
            
        }
            
        h0 = h0 + a;
        h1 = h1 + b;
        h2 = h2 + c;
        h3 = h3 + d;
        h4 = h4 + e;
    }
        
    printf("Hash: %#18lx, %#18lx, %#18lx, %#18lx, %#18lx\n", h0, h1, h2, h3, h4);
}

static void test_vlog(const string_t format, ...)
{
    va_list args;
    va_start(args, format);

    mtime_t mtime;
    mtime_updatemtime(&mtime);

    uint64_t int_count = 0, real_count = 0;
    int64_t ints[16];
    real64_t reals[16];

    #define IS_INT(format, i) (((i >= 1) && (strncmp(&(format[i-1]), "%d", 2L) == 0)) || ((i >= 2) && (strncmp(&(format[i-2]), "%ld", 3L) == 0)) || ((i >= 1) && (strncmp(&(format[i-1]), "%i", 2L) == 0)) || ((i >= 2) && (strncmp(&(format[i-2]), "%li", 3L) == 0)))
    #define IS_REAL(format, i) (((i >= 1) && (strncmp(&(format[i-1]), "%f", 2L) == 0)) || ((i >= 2) && (strncmp(&(format[i-2]), "%lf", 3L) == 0)))

    for (size_t i = 0; format[i] != '\0'; i++)
    {
        if (IS_INT(format, i))
        {
            ints[int_count++] = va_arg(args, int);
            log_info_plus("int_count = %lu\n", int_count);
            log_info_plus("ints[int_count-1] = %lu\n", ints[int_count-1]);
        }
        if (IS_REAL(format, i))
        {
            reals[real_count++] = va_arg(args, double);
            log_info_plus("real_count = %lu\n", real_count);
            log_info_plus("reals[real_count-1] = %lf\n", reals[real_count-1]);
        }
    }
    size_t itr = -1;
    if (int_count > 0)
    {
        printf("ints: ");
        while (++itr < int_count-1)
        {
            printf("%ld, ", ints[itr]);
        }
        printf("%ld\n", ints[itr]);
    }
    itr = -1;
    if (real_count > 0)
    {
        printf("reals: ");
        while (++itr < real_count-1)
        {
            printf("%lf, ", reals[itr]);
        }
        printf("%lf\n", reals[itr]);
    }

    va_end(args);
}

int32_t main(int32_t argc, string_t argv[])
{
    puts("Salam Alicom\n");

    // onode_test();  //!
    // dnode_test();
    // alist_test();  //!
    // list_test();
    // dlist_test();
    // stack_test();
    // queue_test();
    // mtime_test();  //!!!

    // test_vlog("%ld %d, %f, %i eded%lf, %lili%%\n", 3, 9, 9.0, 8, 3.0f, 0);   //!

//****************************************
    rsakeys_t key;
    // rsa_genkeys(&key, 7, 37);
    // rsa_genkeys(&key, 293, 229);
    // rsa_genkeys(&key, 967, 1087);
    // rsa_genkeys(&key, 32029, 39023);
    // key = (rsakeys_t){39037, 63733, 67097};
    // key = (rsakeys_t){786865, 637585, 1051129};
    key = (rsakeys_t){1243294187, 1134358547, 1249867667};
    printf("e = %u, d = %u, n = %u\n", key.e, key.d, key.n);
    rsapubkey_t pubkey   = *rsa_pubkey(&key, &pubkey);
    rsaprivkey_t privkey = *rsa_privkey(&key, &privkey);

    uint32_t mess = 123456789;
    printf("mess = %u\n", mess);
    uint32_t encmess = rsa_find_c_m(mess, key.e, key.n);
    printf("encmess = %u\n", encmess);
    uint32_t decmess = rsa_find_c_m(encmess, key.d, key.n);
    printf("decmess = %u\n", decmess);

    // rsa_genfilekeys(967, 1087);
    // rsa_encriptfile("pubkey.rsa", "main.c");
    // rsa_decriptfile("privkey.rsa", "encmess.bin");

//****************************************
    // char_t bin[65] ,hexdec[20];
    // uint64_t uinum = strtouint(argv[1]);
    // int64_t  inum  = strtoint(argv[2]);
    // real64_t rnum  = strtoreal(argv[3]);

    // printf("%lu %s uint\n", uinum, (issrtuint(argv[1])) ? "==" : "!=");
    // printf("%ld %s int\n",  inum,  (issrtint(argv[2]))  ? "==" : "!=");
    // printf("%lf %s real\n\n", rnum,  (issrtreal(argv[3])) ? "==" : "!="); 

    // uinttobits(bin, uinum);
    // printf("(%ld)10 -> (%s)2\n", inum, bin);

    // inttohexdec(hexdec, inum);
    // printf("(%ld)10 -> %s\n\n", inum, hexdec);

    // sha1((uchar_t *)"Salam alicom");
    // sha1((uchar_t *)"Salam alicom");
    // sha1((uchar_t *)"Salam Alicom");
    // sha1((uchar_t *)"Salam Alicom");
    // sha1((uchar_t *)"Salam Alicom ç_è''é_è\"-\' dlikjhfezf  ezfe$$ẑ");

    return 0;
}
#include "tests.h"

void rsa_test()
{
    log_colorgreen("\nStarting RSA Test:\n\n");

    mtime_t mtime0, mctime;
    rsakey_t key;
    // mtime_updatemtime(&mtime0);
    // // key = rsa_genkeyfile(13, 23);
    // // key = rsa_genkeyfile(293, 229);
    // // key = rsa_genkeyfile(967, 1087);
    // // key = rsa_genkeyfile(3217, 3119);
    // // key = rsa_genkeyfile(10111, 9931);
    // // key = rsa_genkeyfile(9767, 11287);
    // key = rsa_genkeyfile(22817, 20879);
    // mtime_updatemtime(&mctime);
    // printf("rsa_genkey : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
    key = (rsakey_t){       113,        257,        299};
    // key = (rsakey_t){     39037,      63733,      67097};
    // key = (rsakey_t){    786865,     637585,    1051129};
    // key = (rsakey_t){  95889085,   18581125,  110240129};
    // key = (rsakey_t){ 413849509,  134859821,  476396143};
    rsa_genkeyfile_fromkey(key);
    // key = (rsakey_t){       113,        257,        299};
    // key = (rsakey_t){     39037,      63733,      67097};
    // key = (rsakey_t){    786865,     637585,    1051129};
    // key = (rsakey_t){  95889085,   18581125,  110240129};
    printf("e = %u, d = %u, n = %u\n\n", key.e, key.d, key.n);
    rsapubkey_t pubkey;
    rsa_genpubkey(key, pubkey);
    rsaprivkey_t privkey;
    rsa_genprivkey(key, privkey);

    char32_t enc_mess[1024];
    char_t   dec_mess[1024];
    string_t message = "Salam alicom, the secret password is ********";
    // string_t message = "Salam";

    log_colorcyan("\nMessage En/De-cription:");

    log_colorblue("\n\nWithout Pthread:\n\n");
    printf("message  = \"%s\"\n", message);
    mtime_updatemtime(&mtime0);
    rsa_encript(&pubkey, message, enc_mess);
    mtime_updatemtime(&mctime);
    printf("rsa_encript : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
    mtime_updatemtime(&mtime0);
    rsa_decript(&privkey, enc_mess, dec_mess);
    mtime_updatemtime(&mctime);
    printf("rsa_decript : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
    printf("dec_mess = \"%s\"\n", dec_mess);

    log_colorblue("\n\nWith Pthread:\n\n");
    printf("message  = \"%s\"\n", message);
    mtime_updatemtime(&mtime0);
    rsa_encript_pthread(&pubkey, message, enc_mess);
    mtime_updatemtime(&mctime);
    printf("rsa_encript_pthread : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
    mtime_updatemtime(&mtime0);
    rsa_decript_pthread(&privkey, enc_mess, dec_mess);
    mtime_updatemtime(&mctime);
    printf("rsa_decript_pthread : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
    printf("dec_mess = \"%s\"\n", dec_mess);

    log_colorcyan("\n\nFile En/De-cription:\n");

    log_colorblue("\n\nWithout Pthread:\n\n");
    mtime_updatemtime(&mtime0);
    rsa_encriptfile("key.rsa", "nodes.h", "rcs/encmess0.bin");
    mtime_updatemtime(&mctime);
    printf("rsa_encriptfile : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
    mtime_updatemtime(&mtime0);
    rsa_decriptfile("key.rsa", "rcs/encmess0.bin", "rcs/decmess0.txt");
    mtime_updatemtime(&mctime);
    printf("rsa_decriptfile : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
//*
    mtime_updatemtime(&mtime0);
    rsa_encriptfile("key.rsa", "rsa.c", "rcs/encmess1.bin");
    mtime_updatemtime(&mctime);
    printf("rsa_encriptfile : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
    mtime_updatemtime(&mtime0);
    rsa_decriptfile("key.rsa", "rcs/encmess1.bin", "rcs/decmess1.txt");
    mtime_updatemtime(&mctime);
    printf("rsa_decriptfile : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);

    log_colorblue("\n\nWith Pthread:\n\n");
    mtime_updatemtime(&mtime0);
    rsa_encriptfile_pthread("key.rsa", "nodes.h", "rcs/enc_mess0.bin");
    mtime_updatemtime(&mctime);
    printf("rsa_encriptfile_pthread : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
    mtime_updatemtime(&mtime0);
    rsa_decriptfile_pthread("key.rsa", "rcs/enc_mess0.bin", "rcs/dec_mess0.txt");
    mtime_updatemtime(&mctime);
    printf("rsa_decriptfile_pthread : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
//*
    mtime_updatemtime(&mtime0);
    rsa_encriptfile_pthread("key.rsa", "rsa.c", "rcs/enc_mess1.bin");
    mtime_updatemtime(&mctime);
    printf("rsa_encriptfile_pthread : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
    mtime_updatemtime(&mtime0);
    rsa_decriptfile_pthread("key.rsa", "rcs/enc_mess1.bin", "rcs/dec_mess1.txt");
    mtime_updatemtime(&mctime);
    printf("rsa_decriptfile_pthread : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
//*
    mtime_updatemtime(&mtime0);
    rsa_encriptfile_pthread("key.rsa", "galaxy.png", "rcs/enc_mess2.bin");
    mtime_updatemtime(&mctime);
    printf("rsa_encriptfile_pthread : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
    mtime_updatemtime(&mtime0);
    rsa_decriptfile_pthread("key.rsa", "rcs/enc_mess2.bin", "rcs/dec_mess2.png");
    mtime_updatemtime(&mctime);
    printf("rsa_decriptfile_pthread : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
// //*
//     mtime_updatemtime(&mtime0);
//     rsa_encriptfile_pthread("key.rsa", "rose_galaxy.png", "rcs/enc_mess3.bin");
//     mtime_updatemtime(&mctime);
//     printf("rsa_encriptfile_pthread : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
//     mtime_updatemtime(&mtime0);
//     rsa_decriptfile_pthread("key.rsa", "rcs/enc_mess3.bin", "rcs/dec_mess3.png");
//     mtime_updatemtime(&mctime);
//     printf("rsa_decriptfile_pthread : %.9lfs\n", mtime_deltamtime(mtime0, mctime).secs);
}
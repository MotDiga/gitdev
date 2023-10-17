#include "tests.h"


void rsa_test()
{
    log_colorgreen("\nStarting RSA Test:\n\n");

    mtime_t mtime0, mctime;
    rsakey_t key;
    // mtime_updatemtime(&mtime0);
    // // key = rsa_genkeyfile("rcs/files/key.rsa", 13, 23);
    // // key = rsa_genkeyfile("rcs/files/key.rsa", 293, 229);
    // // key = rsa_genkeyfile("rcs/files/key.rsa", 967, 1087);
    // // key = rsa_genkeyfile("rcs/files/key.rsa", 9767, 11287);
    // key = rsa_genkeyfile("rcs/files/key.rsa", 15013, 15217);
    // // key = rsa_genkeyfile("rcs/files/key.rsa", 22817, 20879);
    // mtime_updatemtime(&mctime);
    // printf("rsa_genkey : %.9lfs\n", mtime_delta(mtime0, mctime));
    // key = rsa_loadkey(      113,      257,       299 );
    // key = rsa_loadkey(    39037,    63733,     67097 );
    // key = rsa_loadkey(   786865,   637585,   1051129 );
    // key = rsa_loadkey( 95889085, 18581125, 110240129 );
    // key = rsa_loadkey( 23955809, 57743777, 228452821 );
    // rsa_genkeyfile_fromkey("rcs/files/key0.rsa", key);
    // rsa_genkeyfile_fromkey("rcs/files/key1.rsa", key);
    // rsa_genkeyfile_fromkey("rcs/files/key2.rsa", key);
    // rsa_genkeyfile_fromkey("rcs/files/key3.rsa", key);
    // rsa_genkeyfile_fromkey("rcs/files/key4.rsa", key);
    key = rsa_loadkey(      113,      257,       299 );
    // key = rsa_loadkey(    39037,    63733,     67097 );
    // key = rsa_loadkey(   786865,   637585,   1051129 );
    // key = rsa_loadkey( 95889085, 18581125, 110240129 );
    // key = rsa_loadkey( 23955809, 57743777, 228452821 );
    printf("e = %u, d = %u, n = %u\n\n", key.e, key.d, key.n);
    rsapubkey_t pubkey;
    rsa_genpubkey(key, pubkey);
    rsaprivkey_t privkey;
    rsa_genprivkey(key, privkey);

    char32_t encmess[1024];
    char_t   decmess[1024];
    string_t message = "Salam alicom, the secret password is ********\n           Salam alicom, the secret password is ********";
    // string_t message = "Salam alicom, the secret password is ********";
    // string_t message = "Salam";

    log_colorcyan("\nMessage En/De-cription:");

    log_colorblue("\n\nWithout Pthread:\n\n");
    printf("message = \"%s\"\n", message);
    mtime_updatemtime(&mtime0);
    rsa_encript(&pubkey, message, encmess);
    mtime_updatemtime(&mctime);
    log_coloryellow("rsa_encript : %.9lfs\n", mtime_delta(mtime0, mctime));
    mtime_updatemtime(&mtime0);
    rsa_decript(&privkey, encmess, decmess);
    mtime_updatemtime(&mctime);
    log_coloryellow("rsa_decript : %.9lfs\n", mtime_delta(mtime0, mctime));
    printf("decmess = \"%s\"\n", decmess);

    // log_colorblue("\n\nWith Pthread:\n\n");
    // printf("message = \"%s\"\n", message);
    // mtime_updatemtime(&mtime0);
    // rsa_encript_pthread(&pubkey, message, encmess);
    // mtime_updatemtime(&mctime);
    // log_coloryellow("rsa_encript_pthread : %.9lfs\n", mtime_delta(mtime0, mctime));
    // mtime_updatemtime(&mtime0);
    // rsa_decript_pthread(&privkey, encmess, decmess);
    // mtime_updatemtime(&mctime);
    // log_coloryellow("rsa_decript_pthread : %.9lfs\n", mtime_delta(mtime0, mctime));
    // printf("decmess = \"%s\"\n", decmess);

    // log_colorcyan("\n\nFile En/De-cription:\n");

    // log_colorblue("\n\nWithout Pthread:\n\n");
    // log_colorblue("Test 0:\n");
    // mtime_updatemtime(&mtime0);
    // rsa_encriptfile("rcs/files/key1.rsa", "rcs/files/galaxy.ico", "rcs/tmp/encmess0.bin");
    // mtime_updatemtime(&mctime);
    // log_coloryellow("rsa_encriptfile : %.9lfs\n", mtime_delta(mtime0, mctime));
    // mtime_updatemtime(&mtime0);
    // rsa_decriptfile("rcs/files/key1.rsa", "rcs/tmp/encmess0.bin", "rcs/tmp/decmess0.ico");
    // mtime_updatemtime(&mctime);
    // log_coloryellow("rsa_decriptfile : %.9lfs\n", mtime_delta(mtime0, mctime));
    // // log_colorblue("Test 1:\n");
    // // mtime_updatemtime(&mtime0);
    // // rsa_encriptfile("rcs/files/key1.rsa", "rcs/files/galaxy_mini.png", "rcs/tmp/encmess1.bin");
    // // mtime_updatemtime(&mctime);
    // // log_coloryellow("rsa_encriptfile : %.9lfs\n", mtime_delta(mtime0, mctime));
    // // mtime_updatemtime(&mtime0);
    // // rsa_decriptfile("rcs/files/key1.rsa", "rcs/tmp/encmess1.bin", "rcs/tmp/decmess1.png");
    // // mtime_updatemtime(&mctime);
    // // log_coloryellow("rsa_decriptfile : %.9lfs\n", mtime_delta(mtime0, mctime));
    // // log_colorblue("Test 2:\n");
    // // mtime_updatemtime(&mtime0);
    // // rsa_encriptfile_pthread("rcs/files/key1.rsa", "rcs/files/galaxy.png", "rcs/tmp/encmess2.bin");
    // // mtime_updatemtime(&mctime);
    // // log_coloryellow("rsa_encriptfile : %.9lfs\n", mtime_delta(mtime0, mctime));
    // // mtime_updatemtime(&mtime0);
    // // rsa_decriptfile("rcs/files/key1.rsa", "rcs/tmp/encmess2.bin", "rcs/tmp/decmess2.png");
    // // mtime_updatemtime(&mctime);
    // // log_coloryellow("rsa_decriptfile : %.9lfs\n", mtime_delta(mtime0, mctime));

    // log_colorblue("\n\nWith Pthread:\n\n");
    // log_colorblue("Test 0:\n");
    // mtime_updatemtime(&mtime0);
    // rsa_encriptfile_pthread("rcs/files/key1.rsa", "rcs/files/galaxy.ico", "rcs/tmp/encmess0.pthread.bin");
    // mtime_updatemtime(&mctime);
    // log_coloryellow("rsa_encriptfile_pthread : %.9lfs\n", mtime_delta(mtime0, mctime));
    // mtime_updatemtime(&mtime0);
    // rsa_decriptfile_pthread("rcs/files/key1.rsa", "rcs/tmp/encmess0.pthread.bin", "rcs/tmp/decmess0.pthread.ico");
    // mtime_updatemtime(&mctime);
    // log_coloryellow("rsa_decriptfile_pthread : %.9lfs\n", mtime_delta(mtime0, mctime));
    // // log_colorblue("Test 1:\n");
    // // mtime_updatemtime(&mtime0);
    // // rsa_encriptfile_pthread("rcs/files/key1.rsa", "rcs/files/galaxy_mini.png", "rcs/tmp/encmess1.pthread.bin");
    // // mtime_updatemtime(&mctime);
    // // log_coloryellow("rsa_encriptfile_pthread : %.9lfs\n", mtime_delta(mtime0, mctime));
    // // mtime_updatemtime(&mtime0);
    // // rsa_decriptfile_pthread("rcs/files/key1.rsa", "rcs/tmp/encmess1.pthread.bin", "rcs/tmp/decmess1.pthread.png");
    // // mtime_updatemtime(&mctime);
    // // log_coloryellow("rsa_decriptfile_pthread : %.9lfs\n", mtime_delta(mtime0, mctime));
    // // log_colorblue("Test 2:\n");
    // // mtime_updatemtime(&mtime0);
    // // rsa_encriptfile_pthread("rcs/files/key1.rsa", "rcs/files/galaxy.png", "rcs/tmp/encmess2.pthread.bin");
    // // mtime_updatemtime(&mctime);
    // // log_coloryellow("rsa_encriptfile_pthread : %.9lfs\n", mtime_delta(mtime0, mctime));
    // // mtime_updatemtime(&mtime0);
    // // rsa_decriptfile_pthread("rcs/files/key1.rsa", "rcs/tmp/encmess2.pthread.bin", "rcs/tmp/decmess2.pthread.png");
    // // mtime_updatemtime(&mctime);
    // // log_coloryellow("rsa_decriptfile_pthread : %.9lfs\n", mtime_delta(mtime0, mctime));
}
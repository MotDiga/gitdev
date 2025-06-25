#include "stdmoh.h"
#include "stderr.h"
#include <windows.h>
// #define winapi   WINAPI
// #define handle_t HANDLE
#include "stdargs.h"
#include "stdmath.h"
#include "rsa.h"
#define GLEW_STATIC
#include <GL/glew.h>
#include <GLFW/glfw3.h>



//* Args shortcuts
const str_t i_shct = "install";
const str_t e_shct = "edit";

//****************************************************************************************************

void parce_shortcuts(int32_t argp, str_t argv[]);



//****************************************************************************************************

int32_t main(int32_t argc, str_t argv[])
{
    puts("Salam Alicom\n");

	srand(time(NULL));

    parce_args(argc, argv, "", parce_shortcuts);

    //!
    puts(app_name);
    for (int32_t argp = 0; argp < argn; argp++)
    {
        printf("opt[%d]: %s, pos: %I64d\n", argp, opts[argp].name, opts[argp].pos);
    }
    //!

	//! RSA Tests
	rsa_key_t key;
	uint64_t p, q;
	// p = 37ULL, q = 7ULL;    //! p, q ... enetialised with STDARGS !!!!
	p = 3347ULL, q = 5273ULL;    //! p, q ... enetialised with STDARGS !!!!

    key = RSA_LOADKEY(0ULL, 0ULL, 0ULL);
    key = rsa_genkey(p, q);
	LOG_INFO("e: %I64u - d: %I64u - n: %I64u\n", key.e, key.d, key.n)

    key = RSA_LOADKEY(0ULL, 0ULL, 0ULL);
    rsa_genkey_(&key, p, q);
	LOG_INFO("e: %I64u - d: %I64u - n: %I64u\n", key.e, key.d, key.n)

    key = RSA_LOADKEY(0ULL, 0ULL, 0ULL);
    key = rsa_genkeyfile("key.rsa", p, q);
	LOG_INFO("e: %I64u - d: %I64u - n: %I64u\n", key.e, key.d, key.n)

    key = RSA_LOADKEY(0ULL, 0ULL, 0ULL);
    key = rsa_keyfromfile("key.rsa");
	LOG_INFO("e: %I64u - d: %I64u - n: %I64u\n", key.e, key.d, key.n)
	//!

	//!
	if (glewInit() != 0)
	{
		return -1;
	}
	if (glfwInit() != 0)
	{
		return -1;
	}
	//!
	
	//!
	// for(int32_t k = 0; k < 255; k++)
    // {
        // SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), k);
        // printf("%3d  %s\t\t\t", k, "Salam Alicom");
    // }
	// SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);

	// LOG_TRACE("Salam Alicom\n")
	// LOG_INFO("Salam Alicom\n")
	// LOG_SUPOSITION("Salam Alicom\n")
	// LOG_NOTE("Salam Alicom\n")
	// LOG_WARNING("Salam Alicom\n")
	// LOG_ERROR("Salam Alicom\n")
	// LOG_FATAL_ERROR(-1, "Salam Alicom\n")
	// LOG_TRACE("Salam Alicom, IM NOT EXITED!!!\n")
	//!

    return 0;
}



//****************************************************************************************************

void parce_shortcuts(int32_t argp, str_t argv[])
{
    PARCE_SHORTCUT('e', e_shct, false)
    else PARCE_SHORTCUT('i', i_shct, true)
}
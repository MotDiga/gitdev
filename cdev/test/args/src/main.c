#include "stdmoh.h"
#include "stderr.h"
#include <string.h>
//! MultyThreading
#include <windows.h>
#define winapi   WINAPI
// #define handle_t HANDLE

#include "stdargs.h"



//* Args shortcuts
const str_t i_shct = "install";
const str_t e_shct = "edit";

//****************************************************************************************************

void parce_shortcuts(int32_t argp, str_t argv[]);

//********************************************************************************
//* The function that containe the executable code by the thread
//********************************************************************************
int32_t winapi thread_function(void* param);



//****************************************************************************************************

int32_t main(int32_t argc, str_t argv[])
{
    puts("Salam Alicom\n");
    
    // printf("Long Double   Size: %u bit\n",   sizeof(long double)*8U);
    // printf("Double        Size: %u bit\n",   sizeof(double)*8U);
    // printf("Float         Size: %u bit\n\n", sizeof(float)*8U);
    
    // DRIF(
        // printf("Long Long Int Size: %u bit\n",   sizeof(long long int)*8U);
        // printf("Int           Size: %u bit\n",   sizeof(int)*8U);
        // printf("Short         Size: %u bit\n",   sizeof(short)*8U);
        // printf("Char          Size: %u bit\n\n", sizeof(char)*8U);
    // )

    // DEBIF(
        // printf("Char64        Size: %u bit\n",   sizeof(char64_t)*8U);
        // printf("Char32        Size: %u bit\n",   sizeof(char32_t)*8U);
        // printf("Char16        Size: %u bit\n",   sizeof(char16_t)*8U);
        // printf("Char8         Size: %u bit\n\n", sizeof(char8_t)*8U);
    // )

    printf("WORD  Size: %u bit\n", sizeof(WORD)*8U);
    printf("DWORD Size: %u bit\n", sizeof(DWORD)*8U);
    
    // LOG_TRACE("Log Somting at file main.c in line 27");
    
    parce_args(argc, argv, parce_shortcuts);

    //!
    puts(app_name);
    for (int32_t argp = 0; argp < argn; argp++)
    {
        printf("opt[%d]: %s, pos: %I64d\n", argp, opts[argp].name, opts[argp].pos);
    }
    //!
	
	//! MultyThreading
	
	// int32_t thread_id, param[3] = { 3, 5 }
	// handle_t h_thread = CreateThread(NULL, 0, thread_function, /* param */ param, 0, &thread_id);
	
	//!

    return 0;
}



//****************************************************************************************************

void parce_shortcuts(int32_t argp, str_t argv[])
{
    PARCE_SHORTCUT('e', e_shct, false)
    else PARCE_SHORTCUT('i', i_shct, true)
}

int32_t winapi thread_function(void* param)
{
    //* Code to be executed by the thread

    return 0;
}
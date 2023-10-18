#define STB_IMAGE_IMPLEMENTATION
#include <sandbox/sandbox.h>


int32_t main(int32_t argc, string_t const argv[])
{
    int32_t sandbox_argc = 0;
    string_t *sandbox_argv = NULL;

    for (int32_t i = 1; i < argc; i++)
    {
        //!
    }

    return sandbox(sandbox_argc, sandbox_argv);
}
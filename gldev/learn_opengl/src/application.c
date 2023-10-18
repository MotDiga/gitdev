#define STB_IMAGE_IMPLEMENTATION
// #include <sandbox0/sandbox.h>
// #include <sandbox1/sandbox.h>
// #include <sandbox2/sandbox.h>
// #include <sandbox3/sandbox.h>
#include <sandbox4/sandbox.h>

int32_t main(int32_t argc, string_t const argv[])
{
    int32_t sandbox_argc = 0;
    string_t sandbox_argv[32];

    for (int32_t i = 1; i < argc; i++)
    {
        sandbox_argv[i] = NULL;
    }

    return sandbox(sandbox_argc, sandbox_argv);
}
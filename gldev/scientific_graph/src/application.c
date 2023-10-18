#include <stdmoh.h>
#include <stderr.h>
#include "shader.h"

#include "sandbox.h"


int32_t main(int32_t argc, string_t argv[])
{
    log_colorwhite("\nSalam Alicom\n\n");

    return sandbox(argc, argv);
}
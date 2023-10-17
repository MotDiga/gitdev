#include <stdmoh.h>
#include <stderr.h>

int32_t main(int32_t argc, string_t argv[])
{
    if (argc != 5)
    {
        LOG_FATAL(1, "Usage: ./application y0 t0 h tf")
    }

    real64_t y = atof(argv[1]), t = atof(argv[2]), h = atof(argv[3]), tf = atof(argv[4]);
    uint64_t i = 1UL;

    for (; t < tf; t+=h, i++)
    {
        y = y + h*(2*y);
        printf("t<%lu>^2 = %lf\n", i, y);
    }

    LOG_INFO("t<%lu>^2 = %lf\n", i, y);
    return 0;
}
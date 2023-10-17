#include <stdmoh.h>
#include <stderr.h>
#include "parser.h"
#include "stdlog.h"

#include "tests.h"


int32_t main(int32_t argc, string_t argv[])
{
    log_colorwhite("\nSalam Alicom\n\n");

    // //TODO: to improve
    // while (true)
    // {
    //     parser(argc, argv);
    // }

    bar_test();     //!
    neg_test();     //!
    // rsh_test();
    // lsh_test();
    // rrot_test();
    // lrot_test();
    // rev_test();
    //
    condition_test();
    //
    inc_test();     //!
    // add_test();     //!
    // dec_test();     //!
    // sub_test();     //!
    // mul_test();     //!
    // div_test();     //!
    // mod_test();     //!

    return 0;
}
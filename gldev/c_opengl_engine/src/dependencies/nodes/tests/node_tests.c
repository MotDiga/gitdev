#include "tests.h"


void onode_test()
{
    log_colorgreen("\nStarting ONode Test:\n");
	log_colorgreen("Functions Testing:\n\n");

    mtime_t mtime0, mtime1, mdtime, mavrgtime, mtime, _mtime;
    mtime0 = mtime1 = mdtime = mtime = _mtime = MTIME_ZERO;
    onode_t *onode = NULL, *_onode = NULL;

#define ITERATION (100L * 1000L)

    mtime_updatemtime(&mtime0);
    for (size_t i = 0; i < ITERATION; i++)
    {
        mtime_updatemtime(&mtime);
        onode_pushhead(&onode, (void *)(&mtime), onode_allocmtime);
        if ((i+1)%(ITERATION/100L) == 0)
        {
            log_progress("Loading: ", ((i+1)*100)/ITERATION);
        }
    }
    puts("");
    mtime_updatemtime(&mtime1);
    mdtime = mtime_deltamtime(mtime0, mtime1);
    mavrgtime = mtime_avrgmtime(mdtime, ITERATION);

    onode_pushback(&_onode, (void*)(&mdtime), onode_allocmtime);
    onode_pushback(&_onode, (void*)(&mavrgtime), onode_allocmtime);
    onode_pushhead(&_onode, (void*)(&mtime1), onode_allocmtime);
    onode_pushhead(&_onode, (void*)(&mtime0), onode_allocmtime);

    onode_print(_onode, onode_printtimeday);
    onode_freenode(&_onode);
    puts("");

    mtime_updatemtime(&mtime0);
    for (size_t i = 0; i < ITERATION; i++)
    {
        onode_popheadmtime(&onode, &_mtime);
        // onode_popbackmtime(&onode, &_mtime);
        // mtime_printtimeday(_mtime);
		// log_trace("%ld, %lu:%lu:%.9lf\n", _mtime.days, _mtime.hour, _mtime.min, _mtime.sec);
		// log_suposition("%ld, %lu:%lu:%.9lf\n", _mtime.days, _mtime.hour, _mtime.min, _mtime.sec);
		log_colorblue("%ld, %lu:%lu:%.9lf\n", _mtime.days, _mtime.hour, _mtime.min, _mtime.sec);
        if ((i+1)%(ITERATION/100L) == 0)
        {
            log_progress("Loading: ", ((i+1)*100)/ITERATION);
        }
        if (i != ITERATION-1)
        {
            printf("\x1b[1A\x1b[1000D");
        }
    }
    puts("");
    mtime_updatemtime(&mtime1);
    mdtime = mtime_deltamtime(mtime0, mtime1);
    mavrgtime = mtime_avrgmtime(mdtime, ITERATION);

    onode_pushback(&_onode, (void*)(&mdtime), onode_allocmtime);
    onode_pushback(&_onode, (void*)(&mavrgtime), onode_allocmtime);
    onode_pushhead(&_onode, (void*)(&mtime1), onode_allocmtime);
    onode_pushhead(&_onode, (void*)(&mtime0), onode_allocmtime);

    onode_print(_onode, onode_printtimeday);
    puts("");

    onode_put(_onode, onode_putmtime);
    onode_print(_onode, onode_printtime);
    onode_print(_onode, onode_printtimeday);
    onode_print(_onode, onode_printdate);
    onode_print(_onode, onode_printmindate);
    onode_print(_onode, onode_printmtime);
    onode_print(_onode, onode_printmmintime);
    onode_printtype(_onode, onode_printmtimetype);

    onode_freenode(&_onode);
    onode_freenode(&onode);

    onode_put(_onode, onode_putmtime);
    onode_print(_onode, onode_printtime);
    onode_print(_onode, onode_printtimeday);
    onode_print(_onode, onode_printdate);
    onode_print(_onode, onode_printmindate);
    onode_print(_onode, onode_printmtime);
    onode_print(_onode, onode_printmmintime);
    onode_printtype(_onode, onode_printmtimetype);

    LOG_INFO("sizeof(node_t) = %lu", sizeof(node_t))
    LOG_INFO("sizeof(onode_t) = %lu", sizeof(onode_t))
    LOG_INFO("sizeof(dnode_t) = %lu", sizeof(dnode_t))
    LOG_INFO("sizeof(donode_t) = %lu", sizeof(donode_t))
    LOG_INFO("sizeof(dchar_t) = %lu\n", sizeof(dchar_t))

    LOG_INFO("sizeof(btnode_t) = %lu", sizeof(btnode_t))
    LOG_INFO("sizeof(obtnode_t) = %lu", sizeof(obtnode_t))
    LOG_INFO("sizeof(btree_t) = %lu\n", sizeof(btree_t))

    LOG_INFO("sizeof(slist_t) = %lu", sizeof(slist_t))
    LOG_INFO("sizeof(list_t) = %lu", sizeof(list_t))
    LOG_INFO("sizeof(olist_t) = %lu", sizeof(olist_t))
    LOG_INFO("sizeof(dlist_t) = %lu", sizeof(dlist_t))
    LOG_INFO("sizeof(dolist_t) = %lu", sizeof(dolist_t))
    LOG_INFO("sizeof(clist_t) = %lu", sizeof(clist_t))
    LOG_INFO("sizeof(colist_t) = %lu", sizeof(colist_t))
    LOG_INFO("sizeof(stack_t) = %lu", sizeof(stack_t))
    LOG_INFO("sizeof(ostack_t) = %lu", sizeof(ostack_t))
    LOG_INFO("sizeof(queue_t) = %lu", sizeof(queue_t))
    LOG_INFO("sizeof(oqueue_t) = %lu", sizeof(oqueue_t))
    LOG_INFO("sizeof(astring_t) = %lu", sizeof(astring_t))
    LOG_INFO("sizeof(dstring_t) = %lu\n", sizeof(dstring_t))

    LOG_INFO("sizeof(mtime_t) = %lu\n", sizeof(mtime_t))

	// log_config("In %s) %s)%u: ", __FILE__, __FUNCTION__, __LINE__);
	// log_trace("Exit with status %lu\n", EXIT_SUCCESS);
	// log_info("Exit with status %lu\n", EXIT_SUCCESS);
	// log_suposition("Exit with status %lu\n", EXIT_SUCCESS);
	// log_warning("Exit with status %lu\n", EXIT_SUCCESS);
	// log_error("Exit with status %lu\n", EXIT_SUCCESS);
    // log_fatal(EXIT_SUCCESS, "Exit with status %lu", EXIT_SUCCESS);
	log_trace_plus("Exit with status %lu\n", EXIT_SUCCESS);
	log_info_plus("Exit with status %lu\n", EXIT_SUCCESS);
	log_suposition_plus("Exit with status %lu\n", EXIT_SUCCESS);
	log_warning_plus("Exit with status %lu\n", EXIT_SUCCESS);
	log_error_plus("Exit with status %lu\n", EXIT_SUCCESS);
    log_fatal_plus(EXIT_SUCCESS, "Exit with status %lu", EXIT_SUCCESS);
}

void dnode_test()
{
    log_colorgreen("\nStarting DNode Test:\n");
	log_colorgreen("Functions Testing:\n\n");

	dnode_t *node = NULL;

	dnode_pushhead(&node, 0);
	dnode_pushhead(&node, 1);
	dnode_pushhead(&node, 2);
	dnode_pushhead(&node, 3);
	dnode_pushhead(&node, 4);
	dnode_pushback(&node, 5);
	dnode_pushback(&node, 6);
	dnode_pushback(&node, 7);
	dnode_pushback(&node, 8);
	dnode_pushback(&node, 9);

	dnode_printtype(node);

	dnode_put(node);
	dnode_print(node);
	dnode_printtype(node);

	LOG_INFO("dnode_popback = %ld", dnode_popback(&node));
	LOG_INFO("dnode_pophead = %ld", dnode_pophead(&node));

	dnode_pophead(&node);
	dnode_popback(&node);
	dnode_pophead(&node);
	dnode_printtype(node);

	dnode_popback(&node);
	dnode_pophead(&node);
	dnode_popback(&node);
	dnode_printtype(node);

	dnode_pophead(&node);
	dnode_popback(&node);
	dnode_pophead(&node);
	dnode_printtype(node);

	dnode_pophead(&node);
	dnode_popback(&node);
	dnode_printtype(node);

	dnode_pushback(&node, 0);

	dnode_pophead(&node);
	dnode_printtype(node);

	dnode_pophead(&node);
	dnode_popback(&node);
	dnode_printtype(node);

	dnode_freenode(&node);

	dnode_pushhead(&node, 0);
	dnode_pushback(&node, 1);

	dnode_pophead(&node);
	dnode_popback(&node);

	dnode_put(node);
	dnode_print(node);
	dnode_printtype(node);

	dnode_freenode(&node);

	log_colorgreen("\nFunctionality Testing:\n\n");
}
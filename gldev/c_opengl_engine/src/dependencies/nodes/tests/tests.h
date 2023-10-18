#ifndef   TESTS_H_INCLUDED
#define   TESTS_H_INCLUDED

#include "../nodes.h"
#include <math.h>


// int32_t functionality_test(bool function, int32_t exitstatus, string_t format, ...)
// {
// 	return 0; //!
// }

//****************************************************************************************************************************************************************
//* Node
void onode_test();
void dnode_test();

//****************************************************************************************************************************************************************
//* Advencenode
void slist_test();
void list_test();
void dlist_test();
void stack_test();
void queue_test();

//****************************************************************************************************************************************************************
//* MTime
void mtime_test();

#endif // TESTS_H_INCLUDED
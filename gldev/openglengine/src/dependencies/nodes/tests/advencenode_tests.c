#include "tests.h"

void slist_test() //!
{
    log_colorgreen("\nStarting AList Test:\n");

    slist_t *list = slist_init();

	slist_push(&list, 0);
	slist_push(&list, 1);
	slist_push(&list, 2);
	slist_push(&list, 3);
	slist_push(&list, 4);
    
    slist_delete(&list);
}

void list_test()
{
    log_colorgreen("\nStarting List Test:\n");

	list_t *list = list_init();

	list_pushhead(list, 0);
	list_pushhead(list, 1);
	list_pushhead(list, 2);
	list_pushhead(list, 3);
	list_pushhead(list, 4);
	list_pushback(list, 5);
	list_pushback(list, 6);
	list_pushback(list, 7);
	list_pushback(list, 8);
	list_pushback(list, 9);

	list_printtype(list);
	LOG_INFO("list_end = %p", list_end(list))

	list_change(list, 9, 90);
	list_change(list, 4, -11);
	list_change(list, 0, 40);
	list_change(list, 10, 100);
	list_change(list, 101, 1010);
	list_change(list, -110, -1100);

	list_printtype(list);

	LOG_INFO("list_ret(9) = %ld", list_ret(list, 9));
	LOG_INFO("list_ret(4) = %ld", list_ret(list, 4));
	LOG_INFO("list_ret(0) = %ld", list_ret(list, 0));
	LOG_INFO("list_ret(10) = %ld", list_ret(list, 10));
	LOG_INFO("list_ret(101) = %ld", list_ret(list, 101));
	LOG_INFO("list_ret(-110) = %ld", list_ret(list, -110));

	list_putsize(list);
	list_putele(list, 0);
	list_putele(list, 4);
	list_putele(list, 9);
	list_putele(list, 10);
	list_putele(list, 101);
	list_putele(list, -110);
	list_put(list);
	list_printsize(list);
	list_printele(list, 0);
	list_printele(list, 4);
	list_printele(list, 9);
	list_printele(list, 10);
	list_printele(list, 101);
	list_printele(list, -110);
	list_print(list);

	list_popnode(list, 10);
	list_popnode(list, 101);
	list_popnode(list, -110);
	list_popnode(list, 9);
	list_popnode(list, 5);
	list_popnode(list, 0);

	list_printtype(list);

	list_pushnode(list, 10, 100);
	list_pushnode(list, 101, 1010);
	list_pushnode(list, -110, -1100);
	list_pushnode(list, 0, 40);
	list_pushnode(list, 4, -11);
	list_pushnode(list, 9, 90);

	list_printtype(list);

	LOG_INFO("list_popnode = %ld", list_popnode(list, 9));
	LOG_INFO("list_popnode = %ld", list_popnode(list, 4));
	LOG_INFO("list_popnode = %ld", list_popnode(list, 0));
	LOG_INFO("list_popnode = %ld", list_popnode(list, 10));
	LOG_INFO("list_popnode = %ld", list_popnode(list, 101));
	LOG_INFO("list_popnode = %ld", list_popnode(list, -110));

	list_printtype(list);

	LOG_INFO("list_pophead = %ld", list_pophead(list));
	LOG_INFO("list_popback = %ld", list_popback(list));
	LOG_INFO("list_popback = %ld", list_popback(list));
	list_printtype(list);

	list_pophead(list);
	list_popback(list);
	list_pophead(list);
	list_printtype(list);

	list_popback(list);
	list_printtype(list);

	list_pushback(list, 0);

	list_pophead(list);
	list_printtype(list);

	list_popback(list);
	list_pophead(list);
	list_printtype(list);
	LOG_INFO("list_end = %p", list_end(list))

	list_pushback(list, 5);
	list_pushback(list, 6);
	list_pushback(list, 7);
	list_pushback(list, 8);
	list_pushback(list, 9);
	list_pushhead(list, 0);
	list_pushhead(list, 1);
	list_pushhead(list, 2);
	list_pushhead(list, 3);
	list_pushhead(list, 4);

	list_printtype(list);

	list_free(&list);

	list_printtype(list);
	LOG_INFO("list_end = %p", list_end(list))

	list_change(list, 9, 90);
	list_change(list, 4, -11);
	list_change(list, 0, 40);
	list_change(list, 10, 100);
	list_change(list, 101, 1010);
	list_change(list, -110, -1100);

	LOG_INFO("list_ret(9) = %ld", list_ret(list, 9));
	LOG_INFO("list_ret(4) = %ld", list_ret(list, 4));
	LOG_INFO("list_ret(0) = %ld", list_ret(list, 0));
	LOG_INFO("list_ret(10) = %ld", list_ret(list, 10));
	LOG_INFO("list_ret(101) = %ld", list_ret(list, 101));
	LOG_INFO("list_ret(-110) = %ld", list_ret(list, -110));

	list_putsize(list);
	list_putele(list, 0);
	list_putele(list, 4);
	list_putele(list, 9);
	list_putele(list, 10);
	list_putele(list, 101);
	list_putele(list, -110);
	list_put(list);
	list_printsize(list);
	list_printele(list, 0);
	list_printele(list, 4);
	list_printele(list, 9);
	list_printele(list, 10);
	list_printele(list, 101);
	list_printele(list, -110);
	list_print(list);

	list_popnode(list, 10);
	list_popnode(list, 101);
	list_popnode(list, -110);
	list_popnode(list, 9);
	list_popnode(list, 5);
	list_popnode(list, 0);

	list_pushnode(list, 10, 100);
	list_pushnode(list, -101, 1010);
	list_pushnode(list, -110, -1100);
	list_pushnode(list, 0, 40);
	list_pushnode(list, 4, -11);
	list_pushnode(list, 9, 90);

	LOG_INFO("list_popback = %ld", list_popback(list));
	LOG_INFO("list_popback = %ld", list_popback(list));
	LOG_INFO("list_pophead = %ld", list_pophead(list));

	list_free(&list);
}

void dlist_test()
{
    log_colorgreen("\nStarting DList Test:\n");

	dlist_t *list = dlist_init();

	dlist_pushhead(list, 0);
	dlist_pushhead(list, 1);
	dlist_pushhead(list, 2);
	dlist_pushhead(list, 3);
	dlist_pushhead(list, 4);
	dlist_pushback(list, 5);
	dlist_pushback(list, 6);
	dlist_pushback(list, 7);
	dlist_pushback(list, 8);
	dlist_pushback(list, 9);

	dlist_printtype(list);

	dlist_change(list, 9, 90);
	dlist_change(list, 7, 70);
	dlist_change(list, 4, -11);
	dlist_change(list, 2, 20);
	dlist_change(list, 0, 40);
	dlist_change(list, 10, 100);
	dlist_change(list, 101, 1010);
	dlist_change(list, -110, -1100);

	dlist_printtype(list);

	LOG_INFO("dlist_ret(9) = %ld", dlist_ret(list, 9));
	LOG_INFO("dlist_ret(7) = %ld", dlist_ret(list, 7));
	LOG_INFO("dlist_ret(4) = %ld", dlist_ret(list, 4));
	LOG_INFO("dlist_ret(2) = %ld", dlist_ret(list, 2));
	LOG_INFO("dlist_ret(0) = %ld", dlist_ret(list, 0));
	LOG_INFO("dlist_ret(10) = %ld", dlist_ret(list, 10));
	LOG_INFO("dlist_ret(101) = %ld", dlist_ret(list, 101));
	LOG_INFO("dlist_ret(-110) = %ld", dlist_ret(list, -110));

	dlist_putsize(list);
	dlist_putele(list, 0);
	dlist_putele(list, 2);
	dlist_putele(list, 4);
	dlist_putele(list, 7);
	dlist_putele(list, 9);
	dlist_putele(list, 10);
	dlist_putele(list, 101);
	dlist_putele(list, -110);
	dlist_put(list);
	dlist_printsize(list);
	dlist_printele(list, 0);
	dlist_printele(list, 2);
	dlist_printele(list, 4);
	dlist_printele(list, 7);
	dlist_printele(list, 9);
	dlist_printele(list, 10);
	dlist_printele(list, 101);
	dlist_printele(list, -110);
	dlist_print(list);

	dlist_popnode(list, 10);
	dlist_popnode(list, 101);
	dlist_popnode(list, -110);
	dlist_popnode(list, 9);
	dlist_popnode(list, 7);
	dlist_popnode(list, 4);
	dlist_popnode(list, 2);
	dlist_popnode(list, 0);

	dlist_printtype(list);

	dlist_pushnode(list, 10, 100);
	dlist_pushnode(list, 101, 1010);
	dlist_pushnode(list, -110, -1100);
	dlist_pushnode(list, 0, 40);
	dlist_pushnode(list, 2, 20);
	dlist_pushnode(list, 4, -11);
	dlist_pushnode(list, 7, 70);
	dlist_pushnode(list, 9, 90);

	dlist_printtype(list);

	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, 9));
	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, 7));
	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, 4));
	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, 2));
	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, 0));
	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, 10));
	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, 101));
	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, -110));

	dlist_printtype(list);

	LOG_INFO("dlist_pophead = %ld", dlist_pophead(list));
	LOG_INFO("dlist_pophead = %ld", dlist_pophead(list));
	LOG_INFO("dlist_popback = %ld", dlist_popback(list));
	LOG_INFO("dlist_popback = %ld", dlist_popback(list));

	dlist_printtype(list);

	dlist_popback(list);
	dlist_printtype(list);

	dlist_pushback(list, 0);

	dlist_pophead(list);
	dlist_printtype(list);

	dlist_popback(list);
	dlist_pophead(list);
	dlist_printtype(list);

	dlist_pushback(list, 5);
	dlist_pushback(list, 6);
	dlist_pushback(list, 7);
	dlist_pushback(list, 8);
	dlist_pushback(list, 9);
	dlist_pushhead(list, 0);
	dlist_pushhead(list, 1);
	dlist_pushhead(list, 2);
	dlist_pushhead(list, 3);
	dlist_pushhead(list, 4);

	dlist_printtype(list);

	dlist_free(&list);

	dlist_printtype(list);

	dlist_change(list, 9, 90);
	dlist_change(list, 7, 70);
	dlist_change(list, 4, -11);
	dlist_change(list, 2, 20);
	dlist_change(list, 0, 40);
	dlist_change(list, 10, 100);
	dlist_change(list, 101, 1010);
	dlist_change(list, -110, -1100);

	dlist_printtype(list);

	LOG_INFO("dlist_ret(9) = %ld", dlist_ret(list, 9));
	LOG_INFO("dlist_ret(7) = %ld", dlist_ret(list, 7));
	LOG_INFO("dlist_ret(4) = %ld", dlist_ret(list, 4));
	LOG_INFO("dlist_ret(2) = %ld", dlist_ret(list, 2));
	LOG_INFO("dlist_ret(0) = %ld", dlist_ret(list, 0));
	LOG_INFO("dlist_ret(10) = %ld", dlist_ret(list, 10));
	LOG_INFO("dlist_ret(101) = %ld", dlist_ret(list, 101));
	LOG_INFO("dlist_ret(-110) = %ld", dlist_ret(list, -110));

	dlist_putsize(list);
	dlist_putele(list, 0);
	dlist_putele(list, 2);
	dlist_putele(list, 4);
	dlist_putele(list, 7);
	dlist_putele(list, 9);
	dlist_putele(list, 10);
	dlist_putele(list, 101);
	dlist_putele(list, -110);
	dlist_put(list);
	dlist_printsize(list);
	dlist_printele(list, 0);
	dlist_printele(list, 2);
	dlist_printele(list, 4);
	dlist_printele(list, 7);
	dlist_printele(list, 9);
	dlist_printele(list, 10);
	dlist_printele(list, 101);
	dlist_printele(list, -110);
	dlist_print(list);

	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, 9));
	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, 7));
	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, 4));
	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, 2));
	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, 0));
	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, 10));
	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, 101));
	LOG_INFO("dlist_popnode = %ld", dlist_popnode(list, -110));

	dlist_printtype(list);

	dlist_pushnode(list, 10, 100);
	dlist_pushnode(list, 101, 1010);
	dlist_pushnode(list, -110, -1100);
	dlist_pushnode(list, 0, 40);
	dlist_pushnode(list, 2, 20);
	dlist_pushnode(list, 4, -11);
	dlist_pushnode(list, 7, 70);
	dlist_pushnode(list, 9, 90);

	dlist_printtype(list);

	LOG_INFO("dlist_pophead = %ld", dlist_pophead(list));
	LOG_INFO("dlist_pophead = %ld", dlist_pophead(list));
	LOG_INFO("dlist_popback = %ld", dlist_popback(list));
	LOG_INFO("dlist_popback = %ld", dlist_popback(list));

	dlist_printtype(list);

	dlist_free(&list);
}

void stack_test()
{
    log_colorgreen("\nStarting Stack Test:\n");

    stack_t *stack = stack_init();

    stack_push(stack, 0);
    stack_push(stack, 1);
    stack_push(stack, 2);
    stack_push(stack, 3);
    stack_push(stack, 4);

    stack_put(stack);
    stack_print(stack);
    stack_printtype(stack);

    stack_pop(stack);
    stack_pop(stack);
    stack_pop(stack);
    stack_printtype(stack);

    stack_pop(stack);
    stack_pop(stack);
    stack_printtype(stack);

    stack_pop(stack);
    stack_printtype(stack);

    stack_push(stack, 5);
    stack_push(stack, 6);
    stack_push(stack, 7);
    stack_push(stack, 8);
    stack_push(stack, 9);

    stack_printtype(stack);

    stack_freenode(stack);

    stack_pop(stack);
    stack_printtype(stack);

    stack_push(stack, 5);
    stack_push(stack, 6);
    stack_push(stack, 7);
    stack_push(stack, 8);
    stack_push(stack, 9);

    stack_printtype(stack);

	LOG_INFO("stack_pop = %lu", stack_pop(stack));
	LOG_INFO("stack_pop = %lu", stack_pop(stack));
	LOG_INFO("stack_pop = %lu", stack_pop(stack));

    stack_delete(&stack);

    stack_push(stack, 0);
    stack_push(stack, 1);
    stack_push(stack, 2);
    stack_push(stack, 3);
    stack_push(stack, 4);

    stack_put(stack);
    stack_print(stack);
    stack_printtype(stack);

    stack_pop(stack);
    stack_pop(stack);
    stack_pop(stack);
    stack_printtype(stack);

    stack_pop(stack);
    stack_pop(stack);
    stack_printtype(stack);

    stack_pop(stack);
    stack_printtype(stack);

    stack_push(stack, 5);
    stack_push(stack, 6);
    stack_push(stack, 7);
    stack_push(stack, 8);
    stack_push(stack, 9);

    stack_printtype(stack);

	LOG_INFO("stack_pop = %lu", stack_pop(stack));
	LOG_INFO("stack_pop = %lu", stack_pop(stack));
	LOG_INFO("stack_pop = %lu", stack_pop(stack));

    stack_freenode(stack);

    stack_pop(stack);
    stack_printtype(stack);

    stack_push(stack, 5);
    stack_push(stack, 6);
    stack_push(stack, 7);
    stack_push(stack, 8);
    stack_push(stack, 9);

    stack_printtype(stack);

    stack_delete(&stack);
}

void queue_test()
{
    log_colorgreen("\nStarting Queue Test:\n");

    queue_t *queue = queue_init();

    queue_push(queue, 0);
    queue_push(queue, 1);
    queue_push(queue, 2);
    queue_push(queue, 3);
    queue_push(queue, 4);

    queue_put(queue);
    queue_print(queue);
    queue_printtype(queue);

    queue_pop(queue);
    queue_pop(queue);
    queue_pop(queue);
    queue_printtype(queue);

    queue_pop(queue);
    queue_pop(queue);
    queue_printtype(queue);

    queue_pop(queue);
    queue_printtype(queue);

    queue_push(queue, 5);
    queue_push(queue, 6);
    queue_push(queue, 7);
    queue_push(queue, 8);
    queue_push(queue, 9);

    queue_printtype(queue);

    queue_freenode(queue);

    queue_pop(queue);
    queue_printtype(queue);

    queue_push(queue, 5);
    queue_push(queue, 6);
    queue_push(queue, 7);
    queue_push(queue, 8);
    queue_push(queue, 9);

    queue_printtype(queue);

	LOG_INFO("queue_pop = %lu", queue_pop(queue));
	LOG_INFO("queue_pop = %lu", queue_pop(queue));
	LOG_INFO("queue_pop = %lu", queue_pop(queue));

    queue_delete(&queue);

    queue_push(queue, 0);
    queue_push(queue, 1);
    queue_push(queue, 2);
    queue_push(queue, 3);
    queue_push(queue, 4);

    queue_put(queue);
    queue_print(queue);
    queue_printtype(queue);

    queue_pop(queue);
    queue_pop(queue);
    queue_pop(queue);
    queue_printtype(queue);

    queue_pop(queue);
    queue_pop(queue);
    queue_printtype(queue);

    queue_pop(queue);
    queue_printtype(queue);

    queue_push(queue, 5);
    queue_push(queue, 6);
    queue_push(queue, 7);
    queue_push(queue, 8);
    queue_push(queue, 9);

    queue_printtype(queue);

    queue_freenode(queue);

    queue_pop(queue);
    queue_printtype(queue);

    queue_push(queue, 5);
    queue_push(queue, 6);
    queue_push(queue, 7);
    queue_push(queue, 8);
    queue_push(queue, 9);

    queue_printtype(queue);

	LOG_INFO("queue_pop = %lu", queue_pop(queue));
	LOG_INFO("queue_pop = %lu", queue_pop(queue));
	LOG_INFO("queue_pop = %lu", queue_pop(queue));

    queue_delete(&queue);
}
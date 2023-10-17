#ifndef   ADVENCENODE_H_INCLUDED
#define   ADVENCENODE_H_INCLUDED

#include "node.h"

typedef struct slist_t      //* Static list
{
    uint64_t ls;
    int64_t  head[0];
} slist_t;
typedef struct list_t
{
    node_t   *head;
    uint64_t ls;
} list_t;
typedef struct alist_t      //* Array List
{
    anode_t  *head;
    uint64_t ls;
} alist_t;
typedef struct olist_t      //* Object List
{
    onode_t  *head;
    uint64_t ls;
} olist_t;
typedef struct dlist_t      //* Double Linked List
{
    dnode_t  *head;
    dnode_t  *back;
    uint64_t ls;
} dlist_t;
typedef struct dolist_t
{
    donode_t *head;
    donode_t *back;
    uint64_t ls;
} dolist_t;
typedef struct clist_t      //* Cycle List
{
    dnode_t  *head;
    uint64_t ls;
} clist_t;
typedef struct colist_t
{
    donode_t  *head;
    uint64_t ls;
} colist_t;
typedef struct stack_t
{
    node_t   *head;
    uint64_t ls;
} stack_t;
typedef struct ostack_t
{
    onode_t  *head;
    uint64_t ls;
} ostack_t;
typedef struct queue_t
{
    node_t   *head;
    node_t   *back;
    uint64_t ls;
} queue_t;
typedef struct oqueue_t
{
    onode_t  *head;
    onode_t  *back;
    uint64_t ls;
} oqueue_t;
typedef struct astring_t    //* Array String
{
    uint64_t ls;
    char_t   chrs[0];
} astring_t;
typedef struct dstring_t    //* Dynamique String
{
    uint64_t ls;
    dchar_t  *chrs;
} dstring_t;

//****************************************************************************************************************************************************************
//* SList
//!
slist_t* slist_init();
void     slist_change(slist_t *list, uint64_t pos, int64_t val);
int64_t  slist_ret(slist_t *list, uint64_t pos);
int64_t* slist_push(slist_t **list, int64_t val);
int64_t  slist_pop(slist_t **list);
void     slist_putsize(slist_t *list);
void     slist_putele(slist_t *list, uint64_t pos);
void     slist_put(slist_t *list);
void     slist_printsize(slist_t *list);
void     slist_printele(slist_t *list, uint64_t pos);
void     slist_print(slist_t *list);
void     slist_printtype(slist_t *list);
void     slist_freenode(slist_t *list);
void     slist_delete(slist_t **list);
//!

//****************************************************************************************************************************************************************
//* SOList

//****************************************************************************************************************************************************************
//* List
list_t* list_init();
void    list_change(list_t *list, uint64_t pos, int64_t val);
int64_t list_ret(list_t *list, uint64_t pos);
node_t* list_end(list_t *list);
node_t* list_pushhead(list_t *list, int64_t val);
node_t* list_pushback(list_t *list, int64_t val);
node_t* list_pushnode(list_t *list, uint64_t pos, int64_t val);
int64_t list_pophead(list_t *list);
int64_t list_popback(list_t *list);
int64_t list_popnode(list_t *list, uint64_t pos);
void    list_putsize(list_t *list);
void    list_putele(list_t *list, uint64_t pos);
void    list_put(list_t *list);
void    list_printsize(list_t *list);
void    list_printele(list_t *list, uint64_t pos);
void    list_print(list_t *list);
void    list_printtype(list_t *list);
void    list_freenode(list_t *list);
void    list_free(list_t **list);

//****************************************************************************************************************************************************************
//* OList

//****************************************************************************************************************************************************************
//* DList
dlist_t* dlist_init();
void     dlist_change(dlist_t *list, uint64_t pos, int64_t val);
int64_t  dlist_ret(dlist_t *list, uint64_t pos);
dnode_t* dlist_pushhead(dlist_t *list, int64_t val);
dnode_t* dlist_pushback(dlist_t *list, int64_t val);
dnode_t* dlist_pushnode(dlist_t *list, uint64_t pos, int64_t val);
int64_t  dlist_pophead(dlist_t *list);
int64_t  dlist_popback(dlist_t *list);
int64_t  dlist_popnode(dlist_t *list, uint64_t pos);
void     dlist_putsize(dlist_t *list);
void     dlist_putele(dlist_t *list, uint64_t pos);
void     dlist_put(dlist_t *list);
void     dlist_printsize(dlist_t *list);
void     dlist_printele(dlist_t *list, uint64_t pos);
void     dlist_print(dlist_t *list);
void     dlist_printtype(dlist_t *list);
void     dlist_freenodes(dlist_t *list);
void     dlist_free(dlist_t **list);

//****************************************************************************************************************************************************************
//* DOList

//****************************************************************************************************************************************************************
//* CList

//****************************************************************************************************************************************************************
//* COList

//****************************************************************************************************************************************************************
//* Stack
stack_t* stack_init();
node_t*  stack_push(stack_t *stack, int64_t val);
int64_t  stack_pop(stack_t *stack);
void     stack_put(stack_t *stack);
void     stack_print(stack_t *stack);
void     stack_printtype(stack_t *stack);
void     stack_freenode(stack_t *stack);
void     stack_delete(stack_t **stack);

//****************************************************************************************************************************************************************
//* OStack

//****************************************************************************************************************************************************************
//* Queue
queue_t* queue_init();
node_t*  queue_push(queue_t *queue, int64_t val);
int64_t  queue_pop(queue_t *queue);
void     queue_put(queue_t *queue);
void     queue_print(queue_t *queue);
void     queue_printtype(queue_t *queue);
void     queue_freenode(queue_t *queue);
void     queue_delete(queue_t **queue);

//****************************************************************************************************************************************************************
//* OQueue

#endif // ADVENCENODE_H_INCLUDED
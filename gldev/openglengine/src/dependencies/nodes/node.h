#ifndef   NODE_H_INCLUDED
#define   NODE_H_INCLUDED

#include <stdmoh.h>
#include <stderr.h>

typedef struct node_t
{
    int64_t       val;
    struct node_t *next;
} node_t;
typedef struct anode_t      //* Array Node
{
    int64_t        *arr;
    struct anode_t *next;
} anode_t;
typedef struct onode_t      //* Object Node
{
    void           *obj;
    struct onode_t *next;
} onode_t;
typedef struct dnode_t      //* Double Linked Node
{
    int64_t        val;
    struct dnode_t *prev;
    struct dnode_t *next;
} dnode_t;
typedef struct donode_t
{
    void            *obj;
    struct donode_t *prev;
    struct donode_t *next;
} donode_t;
typedef struct dchar_t      //* Dynamique Character
{
    char64_t       chr;
    struct dchar_t *next;
} dchar_t;


#define ALLOCATE_ONODE_OBJECT_DECLARATION(allocfunc)               void allocfunc(onode_t *node, const void *object);
#define ALLOCATE_ONODE_OBJECT(allocfunc, type)                     void allocfunc(onode_t *node, const void *object)   \
                                                                   {                                                   \
                                                                       node->obj = malloc(sizeof(type));               \
                                                                       (*((type*)(node->obj))) = (*((type*)(object))); \
                                                                   }
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#define POP_ONODE_OBJECT_DECLARATION(popfunc, type, onode_popfunc) void popfunc(onode_t **node, type *object);
#define POP_ONODE_OBJECT(popfunc, type, onode_popfunc)             void popfunc(onode_t **node, type *object)          \
                                                                   {                                                   \
                                                                       if (*node == NULL)                              \
                                                                       {                                               \
                                                                           LOG_ERROR("*node = NULL")                   \
                                                                           return;                                     \
                                                                       }                                               \
                                                                       type *object_ptr = (type*)(onode_popfunc(node));\
                                                                       if (object_ptr == NULL)                         \
                                                                       {                                               \
                                                                           LOG_ERROR("%s = NULL", #onode_popfunc)      \
                                                                           return;                                     \
                                                                       }                                               \
                                                                       *object = *object_ptr;                          \
                                                                       free(object_ptr);                               \
                                                                   }
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#define PRINT_ONODE_OBJECT_DECLARATION(printfunc)                  void printfunc(const void *object);
#define PRINT_ONODE_OBJECT(printfunc, format, args...)             void printfunc(const void *object)                  \
                                                                   {                                                   \
                                                                       printf(format, ##args);                         \
                                                                   }

//****************************************************************************************************************************************************************
//* Array
//!

//****************************************************************************************************************************************************************
//* Node
node_t*   node_pushhead(node_t **head, const int64_t val);
node_t*   node_pushback(node_t **head, const int64_t val);
int64_t   node_pophead(node_t **head);
int64_t   node_popback(node_t **head);
void      node_put(node_t *head);
void      node_print(node_t *head);
void      node_printtype(node_t *head);
void      node_freenode(node_t **head);

//****************************************************************************************************************************************************************
//* Array Node
//!

//****************************************************************************************************************************************************************
//* ONode
onode_t*  onode_pushhead(onode_t **head, const void *object, void (*allocobject)(onode_t*, const void*));
onode_t*  onode_pushback(onode_t **head, const void *object, void (*allocobject)(onode_t*, const void*));
void*     onode_pophead(onode_t **head);
void*     onode_popback(onode_t **head);
void      onode_put(onode_t *head, void (*putobj)(const void*));
void      onode_print(onode_t *head, void (*printobj)(const void*));
void      onode_printtype(onode_t *head, void (*printobjtype)(const void*));
void      onode_freenode(onode_t **head);

//****************************************************************************************************************************************************************
//* DNode
dnode_t*  dnode_pushhead(dnode_t **head, const int64_t val);
dnode_t*  dnode_pushback(dnode_t **head, const int64_t val);
int64_t   dnode_pophead(dnode_t **head);
int64_t   dnode_popback(dnode_t **head);
void      dnode_put(dnode_t *head);
void      dnode_print(dnode_t *head);
void      dnode_printtype(dnode_t *head);
void      dnode_freenode(dnode_t **head);

//****************************************************************************************************************************************************************
//* DONode
//!
donode_t* donode_pushhead(donode_t **head, const void *object, void (*allocobject)(donode_t*, const void*));
donode_t* donode_pushback(donode_t **head, const void *object, void (*allocobject)(donode_t*, const void*));
void*     donode_pophead(donode_t **head);
void*     donode_popback(donode_t **head);
void      donode_put(donode_t *head, void (*putobj)(const void*));
void      donode_print(donode_t *head, void (*printobj)(const void*));
void      donode_printtype(donode_t *head, void (*printobjt)(const void*));
void      donode_freenode(donode_t **head);
//!

//****************************************************************************************************************************************************************
//* DChar

#endif // NODE_H_INCLUDED
#include "node.h"


//****************************************************************************************************************************************************************
//* Node

node_t* node_pushhead(node_t **head, const int64_t val)
{
    if (*head == NULL)
    {
        *head = (node_t*)malloc(sizeof(node_t));
        if (*head == NULL)
        {
            LOG_ERROR("unable to allocate memory for *head")
            return NULL;
        }
        (*head)->val = val;
        (*head)->next = NULL;
        
        return *head;
    }

    node_t *node = (node_t*)malloc(sizeof(node_t));
    if (node == NULL)
    {
        LOG_ERROR("unable to allocate memory for node")
        return NULL;
    }
    node->val = val;
    node->next = *head;
    *head = node;
    
    return *head;
}
node_t* node_pushback(node_t **head, const int64_t val)
{
    if (*head == NULL)
    {
        *head = (node_t*)malloc(sizeof(node_t));
        if (*head == NULL)
        {
            LOG_ERROR("unable to allocate memory for *head")
            return NULL;
        }
        (*head)->val = val;
        (*head)->next = NULL;
        
        return *head;
    }
    
    return node_pushback(&((*head)->next), val);
}
//*
int64_t node_pophead(node_t **head)
{
    if (*head == NULL)
    {
        LOG_ERROR("*head == NULL")
        return 0;
    }

    node_t *node = *head;
    *head = (*head)->next;
    int64_t val = node->val;
    free(node);

    return val;
}
int64_t node_popback(node_t **head)
{
    if (*head == NULL)
    {
        LOG_ERROR("*head == NULL")
        return 0;
    }
    else if ((*head)->next == NULL)
    {
        int64_t val = (*head)->val;
        free(*head);
        *head = NULL;

        return val;
    }

    node_t *back = *head;
    while (back->next->next != NULL)
    {
        back = back->next;
    }
    int64_t val = back->next->val;
    free(back->next);
    back->next = NULL;

    return val;
}
//*
void node_put(node_t *head)
{
    if (head == NULL)
    {
        puts("head = NULL");
        return;
    }
    while (head != NULL)
    {
        printf("%ld\n", head->val);
        head = head->next;
    }
}
void node_print(node_t *head)
{
    if (head == NULL)
    {
        puts("head = NULL");
        return;
    }
    while (head != NULL)
    {
        printf("%ld -> ", head->val);
        head = head->next;
    }
    puts("NULL");
}
void node_printtype(node_t *head)
{
    if (head == NULL)
    {
        puts("head = NULL");
        return;
    }
    printf("head = %p( %ld ) -> ", head, head->val);
    node_t *node = head;
    while (node != NULL)
    {
        printf("%p:%ld -> ", node, node->val);
        node = node->next;
    }
    puts("NULL");
}
//*
void node_freenode(node_t **head)
{
    if (*head == NULL)
    {
        LOG_WARNINIG("*head == NULL")
        return;
    }

    node_t *node;
    while (*head != NULL)
    {
        node = *head;
        *head = (*head)->next;
        free(node);
    }
}

//****************************************************************************************************************************************************************
//* ONode

onode_t* onode_pushhead(onode_t **head, const void *object, void (*allocobject)(onode_t*, const void*))
{
    if (*head == NULL)
    {
        *head = (onode_t*)malloc(sizeof(onode_t));
        if (*head == NULL)
        {
            LOG_ERROR("unable to allocate memory for *head")
            return NULL;
        }
        allocobject(*head, object);
        (*head)->next = NULL;
        
        return *head;
    }

    onode_t *node = (onode_t*)malloc(sizeof(onode_t));
    if (node == NULL)
    {
        LOG_ERROR("unable to allocate memory for node")
        return NULL;
    }
    allocobject(node, object);
    node->next = *head;
    *head = node;
    
    return *head;
}
onode_t* onode_pushback(onode_t **head, const void *object, void (*allocobject)(onode_t*, const void*))
{
    if (*head == NULL)
    {
        *head = (onode_t*)malloc(sizeof(onode_t));
        if (*head == NULL)
        {
            LOG_ERROR("unable to allocate memory for *head")
            return NULL;
        }
        allocobject(*head, object);
        (*head)->next = NULL;
        
        return *head;
    }
    
    return onode_pushback(&((*head)->next), object, allocobject);
}
//*
void* onode_pophead(onode_t **head)
{
    if (*head == NULL)
    {
        LOG_ERROR("*head == NULL")
        return NULL;
    }

    onode_t* node = *head;
    *head = (*head)->next;
    void* object = node->obj;
    free(node);

    return object;
}
void* onode_popback(onode_t **head)
{
    if (*head == NULL)
    {
        LOG_ERROR("*head == NULL")
        return NULL;
    }
    else if ((*head)->next == NULL)
    {
        void* object = (*head)->obj;
        free(*head);
        *head = NULL;

        return object;
    }

    onode_t *back = *head;
    while (back->next->next != NULL)
    {
        back = back->next;
    }
    void* object = back->next->obj;
    free(back->next);
    back->next = NULL;

    return object;
}
//*
void onode_put(onode_t *head, void (*putobj)(const void*))
{
    if (head == NULL)
    {
        puts("head = NULL");
        return;
    }
    while (head != NULL)
    {
        putobj(head->obj);
        head = head->next;
    }
}
void onode_print(onode_t *head, void (*printobj)(const void*))
{
    if (head == NULL)
    {
        puts("head = NULL");
        return;
    }
    while (head != NULL)
    {
        printobj(head->obj);
        head = head->next;
    }
    puts("NULL");
}
void onode_printtype(onode_t *head, void (*printobjtype)(const void*))
{
    if (head == NULL)
    {
        puts("head = NULL");
        return;
    }
    while (head != NULL)
    {
        printobjtype(head->obj);
        head = head->next;
    }
}
//*
void onode_freenode(onode_t **head)
{
    if (*head == NULL)
    {
        LOG_WARNINIG("*head == NULL")
        return;
    }

    onode_t *node;
    while (*head != NULL)
    {
        node = *head;
        *head = (*head)->next;
        free(node->obj);
        free(node);
    }
}

//****************************************************************************************************************************************************************
//* DNode

dnode_t* dnode_pushhead(dnode_t **head, const int64_t val)
{
    if (*head == NULL)
    {
        *head = (dnode_t*)malloc(sizeof(dnode_t));
        if (*head == NULL)
        {
            LOG_ERROR("unable to allocate memory for *head")
            return NULL;
        }
        (*head)->val = val;
        (*head)->prev = NULL;
        (*head)->next = NULL;
        
        return *head;
    }

    while ((*head)->prev != NULL)
    {
        *head = (*head)->prev;
    }
    dnode_t *node = (dnode_t*)malloc(sizeof(dnode_t));
    if (node == NULL)
    {
        LOG_ERROR("unable to allocate memory for node")
        return NULL;
    }
    node->val = val;
    node->prev = NULL;
    node->next = *head;
    (*head)->prev = node;
    *head = node;
    
    return *head;
}
dnode_t* dnode_pushback(dnode_t **head, const int64_t val)
{
    if (*head == NULL)
    {
        *head = (dnode_t*)malloc(sizeof(dnode_t));
        if (*head == NULL)
        {
            LOG_ERROR("unable to allocate memory for *head")
            return NULL;
        }
        (*head)->val = val;
        (*head)->prev = NULL;
        (*head)->next = NULL;
        
        return *head;
    }

    dnode_t *back = *head;
    while (back->next != NULL)
    {
        back = back->next;
    }
    back->next = (dnode_t*)malloc(sizeof(dnode_t));
    if (back->next == NULL)
    {
        LOG_ERROR("unable to allocate memory for back->next")
        return NULL;
    }
    back->next->val = val;
    back->next->prev = back;
    back->next->next = NULL;
    
    return back->next;
}
//*
int64_t dnode_pophead(dnode_t **head)
{
    if (*head == NULL)
    {
        LOG_ERROR("*head == NULL")
        return 0;
    }
    else if ((*head)->next == NULL)
    {
        int64_t val = (*head)->val;
        free(*head);
        *head = NULL;

        return val;
    }

    dnode_t *node = *head;
    *head = (*head)->next;
    (*head)->prev = NULL;
    int64_t val = node->val;
    free(node);

    return val;
}
int64_t dnode_popback(dnode_t **head)
{
    if (*head == NULL)
    {
        LOG_ERROR("*head == NULL")
        return 0;
    }
    else if ((*head)->next == NULL)
    {
        int64_t val = (*head)->val;
        free(*head);
        *head = NULL;

        return val;
    }

    dnode_t *back = *head;
    while (back->next->next != NULL)
    {
        back = back->next;
    }
    uint64_t val = back->next->val;
    free(back->next);
    back->next = NULL;

    return val;
}
//*
void dnode_put(dnode_t *head)
{
    if (head == NULL)
    {
        puts("head = NULL");
        return;
    }
    while (head->prev != NULL)
    {
        head = head->prev;
    }
    while (head != NULL)
    {
        printf("%ld\n", head->val);
        head = head->next;
    }
}
void dnode_print(dnode_t *head)
{
    if (head == NULL)
    {
        puts("head = NULL");
        return;
    }
    while (head->prev != NULL)
    {
        head = head->prev;
    }
    printf("NULL -> ");
    while (head != NULL)
    {
        printf("%ld -> ", head->val);
        head = head->next;
    }
    puts("NULL");
}
void dnode_printtype(dnode_t *head)
{
    if (head == NULL)
    {
        puts("head = NULL");
        return;
    }
    while (head->prev != NULL)
    {
        head = head->prev;
    }
    printf("head = %p( %ld )\n", head, head->val);
    dnode_t *node = head;
    while (node != NULL)
    {
        printf("%p <- %p( %ld ) -> %p\n", node->prev, node, node->val, node->next);
        node = node->next;
    }
}
//*
void dnode_freenode(dnode_t **head)
{
    if (*head == NULL)
    {
        LOG_WARNINIG("*head == NULL")
        return;
    }

    dnode_t *node;
    while (*head != NULL)
    {
        node = *head;
        *head = (*head)->next;
        free(node);
    }
}

//****************************************************************************************************************************************************************
//* DONode

//!

//****************************************************************************************************************************************************************
//* DChar

//!
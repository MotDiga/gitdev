#include "advencenode.h"


//****************************************************************************************************************************************************************
//* SList

slist_t* slist_init()
{
    slist_t *list = (slist_t*)malloc(sizeof(slist_t));
    if (list == NULL)
    {
        LOG_ERROR("unable to allocate memory for list")
        return NULL;
    }

    list->ls = 0;

    return list;
}
//*
void slist_change(slist_t *list, uint64_t pos, int64_t val)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL")
        return;
    }
    else if (list->head == NULL)
    {
        LOG_ERROR("list->head == NULL")
        return;
    }
    else if (pos >= list->ls)
    {
        LOG_ERROR("pos(%lu) !{ list->ls(1->%lu)", pos+1, list->ls)
        return;
    }
   
    list->head[pos] = val;
}
int64_t slist_ret(slist_t *list, uint64_t pos)
{
    if (list == NULL)
    {
        LOG_WARNINIG("list == NULL")
        return 0;
    }
    else if (list->head == NULL)
    {
        LOG_WARNINIG("list->head == NULL")
        return 0;
    }
    else if (pos >= list->ls)
    {
        LOG_WARNINIG("pos(%lu) !{ list->ls(1->%lu)", pos+1, list->ls)
        return 0;
    }

    return list->head[pos];
}
//*
int64_t* slist_push(slist_t **list, int64_t val)    //!
{
    if (*list == NULL)
    {
        LOG_ERROR("*list == NULL");
        return NULL;
    }

    (*list)->ls++;
    *list = (slist_t*)realloc(*list, sizeof(slist_t) + (*list)->ls * sizeof(int64_t));  //!
    (*list)->head[(*list)->ls - 1] = val;

    return &((*list)->head[(*list)->ls - 1]);
}
//*
int64_t slist_pop(slist_t **list)   //!
{
    if (*list == NULL)
    {
        LOG_ERROR("*list == NULL");
        return 0;
    }
    else if ((*list)->head == NULL)
    {
        LOG_ERROR("(*list)->head == NULL");
        return 0;
    }

    int64_t val = (*list)->head[(*list)->ls - 1];
    (*list)->ls--;
    *list = (slist_t*)realloc(*list, sizeof(slist_t) + (*list)->ls * sizeof(int64_t));  //!

    return val;
}
//*
void slist_putsize(slist_t *list)
{
    if (list == NULL)
    {
        LOG_WARNINIG("list == NULL");
        return;
    }
    
    printf("%lu\n", list->ls);
}
void slist_putele(slist_t *list, uint64_t pos)
{
    if (list == NULL)
    {
        LOG_WARNINIG("list == NULL");
        return;
    }
    else if (list->head == NULL)
    {
        LOG_WARNINIG("list->head == NULL");
        return;
    }
    else if (pos >= list->ls)
    {
        LOG_WARNINIG("pos(%lu) !{ list->ls(1->%lu)", pos+1, list->ls);
        return;
    }

    printf("%ld\n", list->head[pos]);
}
void slist_put(slist_t *list)
{
    if (list == NULL)
    {
        puts("list = NULL");
        return;
    }
    else if (list->head == NULL)
    {
        puts("list->head == NULL");
        return;
    }

    for (size_t i = 0; i < list->ls; i++)
    {
        printf("%ld\n", list->head[i]);
    }
}
//*
// void printslistsize(slist_t *list)
// {
//     if (list == NULL)
//     {
//         LOG_WARNINIG("list == NULL");
//         return;
//     }

//     printf("list->ls = %lu\n", list->ls);
// }
// void printsliste(slist_t *list, uint64_t pos)
// {
//     if (list == NULL)
//     {
//         LOG_WARNINIG("list == NULL");
//         return;
//     }
//     else if (list->head == NULL)
//     {
//         LOG_WARNINIG("list->head == NULL");
//         return;
//     }
//     else if (pos >= list->ls)
//     {
//         LOG_WARNINIG("pos(%lu) !{ list->ls(1->%lu)", pos+1, list->ls);
//         return;
//     }

//     uint64_t tmp = pos;
//     node_t *node = list->head;
//     while (tmp-- != 0)
//     {
//         node = node->next;
//     }

//     printf("list[%ld] = %ld\n", pos, node->val);
// }
// void printslist(slist_t *list)
// {
//     if (list == NULL)
//     {
//         puts("list = NULL");
//         return;
//     }
//     node_t *node = list->head;
//     while (node != NULL)
//     {
//         printf("%ld -> ", node->val);
//         node = node->next;
//     }
//     puts("NULL");
// }
// void printslistt(slist_t *list)
// {
//     if (list == NULL)
//     {
//         puts("list = NULL");
//         return;
//     }
//     printf("list->ls = %lu\n", list->ls);
//     if (list->head == NULL)
//     {
//         puts("list->head = NULL");
//         return;
//     }
//     printf("list->head = %p( %ld ) -> ", list->head, list->head->val);
//     node_t *node = list->head->next;
//     while (node != NULL)
//     {
//         printf("%p( %ld ) -> ", node, node->val);
//         node = node->next;
//     }
//     puts("NULL");
// }
//*
void slist_freenode(slist_t *list)
{
    if (list == NULL)
    {
        LOG_WARNINIG("*list == NULL");
        return;
    }

    // if (list->head != NULL)
    // {
    //     free(list->head);
    // }
    //! realloc(list)
    list->ls = 0;
}
void slist_delete(slist_t **list)
{
    if (*list == NULL)
    {
        LOG_WARNINIG("*list == NULL");
        return;
    }

    free(*list);
    *list = NULL;
}

//****************************************************************************************************************************************************************
//* List

list_t* list_init()
{
    list_t *list = (list_t*)malloc(sizeof(list_t));
    if (list == NULL)
    {
        LOG_ERROR("unable to allocate memory for list")
        return NULL;
    }

    list->head = NULL;
    list->ls = 0;

    return list;
}
//*
void list_change(list_t *list, uint64_t pos, int64_t val)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL")
        return;
    }
    else if (list->head == NULL)
    {
        LOG_ERROR("list->head == NULL")
        return;
    }
    else if (pos >= list->ls)
    {
        LOG_ERROR("pos(%lu) !{ list->ls(1->%lu)", pos+1, list->ls)
        return;
    }
   
    node_t *node = list->head;
    while (pos-- != 0)
    {
        node = node->next;
    }
    node->val = val;
}
int64_t list_ret(list_t *list, uint64_t pos)
{
    if (list == NULL)
    {
        LOG_WARNINIG("list == NULL")
        return 0;
    }
    else if (list->head == NULL)
    {
        LOG_WARNINIG("list->head == NULL")
        return 0;
    }
    else if (pos >= list->ls)
    {
        LOG_WARNINIG("pos(%lu) !{ list->ls(1->%lu)", pos+1, list->ls)
        return 0;
    }

    node_t *node = list->head;
    while (pos-- != 0)
    {
        node = node->next;
    }

    return node->val;
}
node_t* list_end(list_t *list)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL")
        return NULL;
    }
    else if (list->head == NULL)
    {
        LOG_ERROR("list->head == NULL")
        return NULL;
    }

    node_t *node = list->head;
    while (node->next != NULL)
    {
        node = node->next;
    }

    return node;
}
//*
node_t* list_pushhead(list_t *list, int64_t val)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL");
        return NULL;
    }

    list->ls++;
    return node_pushhead(&(list->head), val);
}
node_t* list_pushback(list_t *list, int64_t val)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL");
        return NULL;
    }

    list->ls++;
    return node_pushback(&(list->head), val);
}
node_t* list_pushnode(list_t *list, uint64_t pos, int64_t val)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL");
        return NULL;
    }
    else if (list->head == NULL)
    {
        LOG_ERROR("list->head == NULL");
        return NULL;
    }
    else if (pos > list->ls)
    {
        LOG_ERROR("pos(%lu) !{ list->ls(1->%lu) + 1", pos+1, list->ls);
        return NULL;
    }
    else if (pos == 0)
    {
        return list_pushhead(list, val);
    }
    else if (pos == list->ls)
    {
        return list_pushback(list, val);
    }
        
    node_t *node = list->head, *tmp;
    while (--pos != 0)
    {
        node = node->next;
    }
    
    tmp = node->next;
    node->next = (node_t*)malloc(sizeof(node_t));
    if (node->next == NULL)
    {
        LOG_ERROR("unable to allocate memory for node->next");
        return NULL;
    }
    node->next->val = val;
    node->next->next = tmp;
    list->ls++;

    return node;
}
//*
int64_t list_pophead(list_t *list)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL");
        return 0;
    }
    else if (list->head == NULL)
    {
        LOG_ERROR("list->head == NULL");
        return 0;
    }

    node_t *tmp = list->head;
    list->head = list->head->next;
    int64_t val = tmp->val;
    free(tmp);
    list->ls--;

    return val;
}
int64_t list_popback(list_t *list)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL");
        return 0;
    }
    else if (list->head == NULL)
    {
        LOG_ERROR("list->head == NULL");
        return 0;
    }
    else if (list->head->next == NULL)
    {
        int64_t val = list->head->val;
        free(list->head);
        list->head = NULL;
        list->ls--;

        return val;
    }

    node_t *back = list->head;
    while (back->next->next != NULL)
    {
        back = back->next;
    }
    int64_t val = back->next->val;
    free(back->next);
    back->next = NULL;
    list->ls--;

    return val;
}
int64_t list_popnode(list_t *list, uint64_t pos)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL");
        return 0;
    }
    else if (list->head == NULL)
    {
        LOG_ERROR("list->head == NULL");
        return 0;
    }
    else if (pos >= list->ls)
    {
        LOG_ERROR("pos(%lu) !{ list->ls(1->%lu)", pos+1, list->ls);
        return 0;
    }
    else if (pos == 0)
    {
        return list_pophead(list);
    }
    else if (pos == list->ls-1)
    {
        return list_popback(list);
    }

    node_t *node = list->head, *tmp;
    while (--pos != 0)
    {
        node = node->next;
    }

    tmp = node->next;
    int64_t val = tmp->val;
    node->next = node->next->next;
    free(tmp);
    list->ls--;

    return val;
}
//*
void list_putsize(list_t *list)
{
    if (list == NULL)
    {
        LOG_WARNINIG("list == NULL");
        return;
    }
    
    printf("%lu\n", list->ls);
}
void list_putele(list_t *list, uint64_t pos)
{
    if (list == NULL)
    {
        LOG_WARNINIG("list == NULL");
        return;
    }
    else if (list->head == NULL)
    {
        LOG_WARNINIG("list->head == NULL");
        return;
    }
    else if (pos >= list->ls)
    {
        LOG_WARNINIG("pos(%lu) !{ list->ls(1->%lu)", pos+1, list->ls);
        return;
    }

    node_t *node = list->head;
    while (pos-- != 0)
    {
        node = node->next;
    }

    printf("%ld\n", node->val);
}
void list_put(list_t *list)
{
    if (list == NULL)
    {
        puts("list = NULL");
        return;
    }
    node_t *node = list->head;
    while (node != NULL)
    {
        printf("%ld\n", node->val);
        node = node->next;
    }
}
//*
void list_printsize(list_t *list)
{
    if (list == NULL)
    {
        LOG_WARNINIG("list == NULL");
        return;
    }

    printf("list->ls = %lu\n", list->ls);
}
void list_printele(list_t *list, uint64_t pos)
{
    if (list == NULL)
    {
        LOG_WARNINIG("list == NULL");
        return;
    }
    else if (list->head == NULL)
    {
        LOG_WARNINIG("list->head == NULL");
        return;
    }
    else if (pos >= list->ls)
    {
        LOG_WARNINIG("pos(%lu) !{ list->ls(1->%lu)", pos+1, list->ls);
        return;
    }

    uint64_t tmp = pos;
    node_t *node = list->head;
    while (tmp-- != 0)
    {
        node = node->next;
    }

    printf("list[%ld] = %ld\n", pos, node->val);
}
void list_print(list_t *list)
{
    if (list == NULL)
    {
        puts("list = NULL");
        return;
    }
    node_t *node = list->head;
    while (node != NULL)
    {
        printf("%ld -> ", node->val);
        node = node->next;
    }
    puts("NULL");
}
void list_printtype(list_t *list)
{
    if (list == NULL)
    {
        puts("list = NULL");
        return;
    }
    printf("list->ls = %lu\n", list->ls);
    if (list->head == NULL)
    {
        puts("list->head = NULL");
        return;
    }
    printf("list->head = %p( %ld ) -> ", list->head, list->head->val);
    node_t *node = list->head->next;
    while (node != NULL)
    {
        printf("%p( %ld ) -> ", node, node->val);
        node = node->next;
    }
    puts("NULL");
}
//*
void list_freenode(list_t *list)
{
    if (list == NULL)
    {
        LOG_WARNINIG("list == NULL");
        return;
    }

    node_freenode(&list->head);
    list->ls = 0;
}
void list_delete(list_t **list)
{
    if (*list == NULL)
    {
        LOG_WARNINIG("*list == NULL");
        return;
    }

    list_freenode(*list);
    free(*list);
    *list = NULL;
}

//****************************************************************************************************************************************************************
//* DList

dlist_t* dlist_init()
{
    dlist_t *list = (dlist_t*)malloc(sizeof(dlist_t));
    if (list == NULL)
    {
        LOG_ERROR("unable to allocate memory for list");
        return NULL;
    }

    list->head = NULL;
    list->back = NULL;
    list->ls = 0;

    return list;
}
//*
void dlist_change(dlist_t *list, uint64_t pos, int64_t val)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL");
        return;
    }
    else if (list->head == NULL)
    {
        LOG_ERROR("list->head == NULL");
        return;
    }
    else if (pos >= list->ls)
    {
        LOG_ERROR("pos(%lu) !{ list->ls(1->%lu)", pos+1, list->ls);
        return;
    }

    if (pos <= list->ls-1 - pos)
    {
        dnode_t *node = list->head;
        while (pos-- != 0)
        {
            node = node->next;
        }
        node->val = val;
    }
    else
    {
        dnode_t *node = list->back;
        uint64_t tmp_pos = pos;
        while (list->ls-1 - (tmp_pos--) > pos)
        {
            node = node->prev;
        }
        node->val = val;
    }
}
int64_t dlist_ret(dlist_t *list, uint64_t pos)
{
    if (list == NULL)
    {
        LOG_WARNINIG("list == NULL");
        return 0;
    }
    else if (list->head == NULL)
    {
        LOG_WARNINIG("list->head == NULL");
        return 0;
    }
    else if (pos >= list->ls)
    {
        LOG_WARNINIG("pos(%lu) !{ list->ls(1->%lu)", pos+1, list->ls);
        return 0;
    }

    dnode_t *node = list->head;
    while (pos-- != 0)
    {
        node = node->next;
    }

    return node->val;
}
//*
dnode_t* dlist_pushhead(dlist_t *list, int64_t val)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL");
        return NULL;
    }

    if (list->head == NULL)
    {
        list->head = (dnode_t*)malloc(sizeof(dnode_t));
        if (list->head == NULL)
        {
            LOG_ERROR("unable to allocate memory for list->head")
            return NULL;
        }
        list->head->val = val;
        list->head->prev = NULL;
        list->head->next = NULL;
        list->back = list->head;
        list->ls++;
        
        return list->head;
    }

    dnode_t *node = (dnode_t*)malloc(sizeof(dnode_t));
    if (node == NULL)
    {
        LOG_ERROR("unable to allocate memory for node")
        return NULL;
    }
    node->val = val;
    node->prev = NULL;
    node->next = list->head;
    list->head->prev = node;
    list->head = node;
    list->ls++;
    
    return list->head;
}
dnode_t* dlist_pushback(dlist_t *list, int64_t val)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL");
        return NULL;
    }

    if (list->head == NULL)
    {
        list->head = (dnode_t*)malloc(sizeof(dnode_t));
        if (list->head == NULL)
        {
            LOG_ERROR("unable to allocate memory for list->head")
            return NULL;
        }
        list->head->val = val;
        list->head->prev = NULL;
        list->head->next = NULL;
        list->back = list->head;
        list->ls++;
        
        return list->head;
    }

    list->back->next = (dnode_t*)malloc(sizeof(dnode_t));
    if (list->back->next == NULL)
    {
        LOG_ERROR("unable to allocate memory for list->back->next")
        return NULL;
    }
    list->back->next->prev = list->back;
    list->back = list->back->next;
    list->back->val = val;
    list->back->next = NULL;
    list->ls++;
    
    return list->back;
}
dnode_t* dlist_pushnode(dlist_t *list, uint64_t pos, int64_t val)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL");
        return NULL;
    }
    else if (list->head == NULL)
    {
        LOG_ERROR("list->head == NULL");
        return NULL;
    }
    else if (pos > list->ls)
    {
        LOG_ERROR("pos(%lu) !{ list->ls(1->%lu) + 1", pos+1, list->ls);
        return NULL;
    }
    else if (pos == 0)
    {
        return dlist_pushhead(list, val);
    }
    else if (pos == list->ls)
    {
        return dlist_pushback(list, val);
    }


    if (pos <= list->ls-1 - pos)
    {
        dnode_t *node = list->head, *tmp;
        while (--pos != 0)
        {
            node = node->next;
        }
    
        tmp = node->next;
        node->next = (dnode_t*)malloc(sizeof(dnode_t));
        if (node->next == NULL)
        {
            LOG_ERROR("unable to allocate memory for node->next");
            return NULL;
        }
        node->next->val = val;
        node->next->prev = node;
        node->next->next = tmp;
        list->ls++;

        return node;
    }
    else
    {
        dnode_t *node = list->back, *tmp_node;
        uint64_t tmp_pos = pos;
        while (list->ls-1 - (--tmp_pos) > pos)
        {
            node = node->prev;
        }
    
        tmp_node = node->prev;
        node->prev = (dnode_t*)malloc(sizeof(dnode_t));
        if (node->prev == NULL)
        {
            LOG_ERROR("unable to allocate memory for node->prev");
            return NULL;
        }
        node->prev->val = val;
        node->prev->next = node;
        node->prev->prev = tmp_node;
        list->ls++;

        return node;
    }
}
//*
int64_t dlist_pophead(dlist_t *list)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL");
        return 0;
    }
    else if (list->head == NULL)
    {
        LOG_ERROR("list->head == NULL");
        return 0;
    }
    else if (list->head->next == NULL)
    {
        int64_t val = list->head->val;
        free(list->head);
        list->head = NULL;
        list->back = NULL;
        list->ls--;

        return val;
    }

    dnode_t *tmp = list->head;
    list->head = list->head->next;
    list->head->prev = NULL;
    int64_t val = tmp->val;
    free(tmp);
    list->ls--;

    return val;
}
int64_t dlist_popback(dlist_t *list)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL");
        return 0;
    }
    else if (list->head == NULL)
    {
        LOG_ERROR("list->head == NULL");
        return 0;
    }
    else if (list->head->next == NULL)
    {
        int64_t val = list->head->val;
        free(list->head);
        list->head = NULL;
        list->back = NULL;
        list->ls--;

        return val;
    }

    dnode_t *back = list->back;
    int64_t val = back->val;
    list->back = back->prev;
    list->back->next = NULL;
    free(back);
    list->ls--;

    return val;
}
int64_t dlist_popnode(dlist_t *list, uint64_t pos)
{
    if (list == NULL)
    {
        LOG_ERROR("list == NULL");
        return 0;
    }
    else if (list->head == NULL)
    {
        LOG_ERROR("list->head == NULL");
        return 0;
    }
    else if (pos >= list->ls)
    {
        LOG_ERROR("pos(%lu) !{ list->ls(1->%lu)", pos+1, list->ls);
        return 0;
    }
    else if (pos == 0)
    {
        return dlist_pophead(list);
    }
    else if (pos == list->ls-1)
    {
        return dlist_popback(list);
    }

    if (pos <= list->ls-1 - pos)
    {
        dnode_t *node = list->head, *tmp;
        while (--pos != 0)
        {
            node = node->next;
        }

        tmp = node->next;
        int64_t val = tmp->val;
        node->next->next->prev = node;
        node->next = node->next->next;
        free(tmp);
        list->ls--;

        return val;
    }
    else
    {
        dnode_t *back = list->back, *tmp_node;
        uint64_t tmp_pos = pos;
        while (list->ls-1 - (--tmp_pos) > pos)
        {
            back = back->prev;
        }

        tmp_node = back->prev;
        int64_t val = tmp_node->val;
        back->prev->prev->next = back;
        back->prev = back->prev->prev;
        free(tmp_node);
        list->ls--;

        return val;
    }
}
//*
void dlist_putsize(dlist_t *list)
{
    if (list == NULL)
    {
        LOG_WARNINIG("list == NULL");
        return;
    }
    
    printf("%lu\n", list->ls);
}
void dlist_putele(dlist_t *list, uint64_t pos)
{
    if (list == NULL)
    {
        LOG_WARNINIG("list == NULL");
        return;
    }
    else if (list->head == NULL)
    {
        LOG_WARNINIG("list->head == NULL");
        return;
    }
    else if (pos >= list->ls)
    {
        LOG_WARNINIG("pos(%lu) !{ list->ls(1->%lu)", pos+1, list->ls);
        return;
    }

    dnode_t *node;
    if (pos <= list->ls-1 - pos)
    {
        node = list->head;
        while (pos-- != 0)
        {
            node = node->next;
        }
    }
    else
    {
        node = list->back;
        uint64_t tmp_pos = pos;
        while (list->ls-1 - (tmp_pos--) > pos)
        {
            node = node->prev;
        }
    }

    printf("%ld\n", node->val);
}
void dlist_put(dlist_t *list)
{
    if (list == NULL)
    {
        puts("list = NULL");
        return;
    }
    dnode_t *node = list->head;
    while (node != NULL)
    {
        printf("%ld\n", node->val);
        node = node->next;
    }
}
//*
void dlist_printsize(dlist_t *list)
{
    if (list == NULL)
    {
        LOG_WARNINIG("list == NULL");
        return;
    }

    printf("list->ls = %lu\n", list->ls);
}
void dlist_printele(dlist_t *list, uint64_t pos)
{
    if (list == NULL)
    {
        LOG_WARNINIG("list == NULL");
        return;
    }
    else if (list->head == NULL)
    {
        LOG_WARNINIG("list->head == NULL");
        return;
    }
    else if (pos >= list->ls)
    {
        LOG_WARNINIG("pos(%lu) !{ list->ls(1->%lu)", pos+1, list->ls);
        return;
    }

    uint64_t tmp_pos = pos;
    dnode_t *node;
    if (pos <= list->ls-1 - pos)
    {
        node = list->head;
        while (tmp_pos-- != 0)
        {
            node = node->next;
        }
    }
    else
    {
        node = list->back;
        while (list->ls-1 - (tmp_pos--) > pos)
        {
            node = node->prev;
        }
    }

    printf("list[%ld] = %ld\n", pos, node->val);
}
void dlist_print(dlist_t *list)
{
    if (list == NULL)
    {
        puts("list = NULL");
        return;
    }
    printf("NULL -> ");
    dnode_t *node = list->head;
    while (node != NULL)
    {
        printf("%ld -> ", node->val);
        node = node->next;
    }
    puts("NULL");
}
void dlist_printtype(dlist_t *list)
{
    if (list == NULL)
    {
        puts("list = NULL");
        return;
    }
    printf("list->ls = %lu\n", list->ls);
    if (list->head == NULL)
    {
        puts("list->head = NULL");
        return;
    }
    printf("list->head = %p( %ld )\n", list->head, list->head->val);
    dnode_t *node = list->head;
    while (node != NULL)
    {
        printf("%p <- %p( %ld ) -> %p\n", node->prev, node, node->val, node->next);
        node = node->next;
    }
    printf("list->back = %p( %ld )\n", list->back, list->back->val);
}
//*
void dlist_freenode(dlist_t *list)
{
    if (list == NULL)
    {
        LOG_WARNINIG("list == NULL");
        return;
    }

    dnode_freenode(&list->head);
    list->ls = 0;
}
void dlist_delete(dlist_t **list)
{
    if (*list == NULL)
    {
        LOG_WARNINIG("*list == NULL");
        return;
    }

    dlist_freenode(*list);
    free(*list);
    *list = NULL;
}

//****************************************************************************************************************************************************************
//* Stack

stack_t* stack_init()
{
    stack_t *stack = (stack_t*)malloc(sizeof(stack_t));
    if (stack == NULL)
    {
        LOG_ERROR("unable to allocate memory for stack");
        return NULL;
    }

    stack->head = NULL;
    stack->ls = 0;

    return stack;
}
//*
node_t* stack_push(stack_t *stack, int64_t val)
{
    if (stack == NULL)
    {
        LOG_ERROR("stack == NULL");
        return NULL;
    }

    node_t *tmp = stack->head;
    stack->head = (node_t*)malloc(sizeof(node_t));
    if (stack->head == NULL)
    {
        LOG_ERROR("unable to allocate memory for stack->head");
        return NULL;
    }
    stack->head->val = val;
    stack->head->next = tmp;
    stack->ls++;

    return stack->head;
}
int64_t stack_pop(stack_t *stack)
{
    if (stack == NULL)
    {
        LOG_ERROR("stack == NULL");
        return 0;
    }
    else if (stack->head == NULL)
    {
        LOG_ERROR("stack->head == NULL");
        return 0;
    }

    node_t *tmp = stack->head;
    int64_t val = tmp->val;
    stack->head = tmp->next;
    stack->ls--;
    free(tmp);

    return val;
}
//*
void stack_put(stack_t *stack)
{
    if (stack == NULL)
    {
        puts("stack = NULL");
        return;
    }
    node_t *node = stack->head;
    while (node != NULL)
    {
        printf("%ld\n", node->val);
        node = node->next;
    }
}
void stack_print(stack_t *stack)
{
    if (stack == NULL)
    {
        puts("stack = NULL");
        return;
    }
    node_t *node = stack->head;
    while (node != NULL)
    {
        printf("%ld -> ", node->val);
        node = node->next;
    }
    puts("NULL");
}
void stack_printtype(stack_t *stack)
{
    if (stack == NULL)
    {
        puts("stack = NULL");
        return;
    }
    else if (stack->head == NULL)
    {
        puts("stack->head = NULL");
        return;
    }
    printf("stack->head = %p( %ld ) -> ", stack->head, stack->head->val);
    node_t *node = stack->head->next;
    while (node != NULL)
    {
        printf("%p( %ld ) -> ", node, node->val);
        node = node->next;
    }
    puts("NULL");
}
//*
void stack_freenode(stack_t *stack)
{
    if (stack == NULL)
    {
        LOG_WARNINIG("stack == NULL");
        return;
    }

    node_t *tmp;
    while (stack->head != NULL)
    {
        tmp = stack->head;
        stack->head = tmp->next;
        free(tmp);
    }
    stack->ls = 0;
}
void stack_delete(stack_t **stack)
{
    if (*stack == NULL)
    {
        LOG_WARNINIG("*stack == NULL");
        return;
    }

    stack_freenode(*stack);
    free(*stack);
    *stack = NULL;
}

//****************************************************************************************************************************************************************
//* Queue

queue_t* queue_init()
{
    queue_t *queue = (queue_t*)malloc(sizeof(queue_t));
    if (queue == NULL)
    {
        LOG_ERROR("unable to allocate memory for queue");
        return NULL;
    }

    queue->head = NULL;
    queue->back = NULL;
    queue->ls = 0;

    return queue;
}
//*
node_t* queue_push(queue_t *queue, int64_t val)
{
    if (queue == NULL)
    {
        LOG_ERROR("queue == NULL");
        return NULL;
    }
    else if (queue->head == NULL)
    {
        queue->back = (node_t*)malloc(sizeof(node_t));
        if (queue->back == NULL)
        {
            LOG_ERROR("unable to allocate memory for queue->back");
            return NULL;
        }
        queue->back->val = val;
        queue->back->next = NULL;
        queue->ls++;
        queue->head = queue->back;
    }
    else
    {
        node_t *tmp = queue->back;
        queue->back = (node_t*)malloc(sizeof(node_t));
        if (queue->back == NULL)
        {
            LOG_ERROR("unable to allocate memory for queue->back");
            return NULL;
        }
        queue->back->val = val;
        queue->back->next = NULL;
        queue->ls++;
        tmp->next = queue->back;
    }

    return queue->back;
}
int64_t queue_pop(queue_t *queue)
{
    if (queue == NULL)
    {
        LOG_ERROR("queue == NULL");
        return 0;
    }
    else if (queue->head == NULL)
    {
        LOG_ERROR("queue->head == NULL");
        return 0;
    }

    node_t *tmp = queue->head;
    int64_t val = tmp->val;
    queue->head = tmp->next;
    queue->ls--;
    free(tmp);

    return val;
}
//*
void queue_put(queue_t *queue)
{
    if (queue == NULL)
    {
        puts("queue = NULL");
        return;
    }
    node_t *node = queue->head;
    while (node != NULL)
    {
        printf("%ld\n", node->val);
        node = node->next;
    }
}
void queue_print(queue_t *queue)
{
    if (queue == NULL)
    {
        puts("queue = NULL");
        return;
    }
    node_t *node = queue->head;
    while (node != NULL)
    {
        printf("%ld -> ", node->val);
        node = node->next;
    }
    puts("NULL");
}
void queue_printtype(queue_t *queue)
{
    if (queue == NULL)
    {
        puts("queue = NULL");
        return;
    }
    else if (queue->head == NULL)
    {
        puts("queue->head = NULL");
        return;
    }
    printf("queue->head = %p( %ld ) -> ", queue->head, queue->head->val);
    node_t *node = queue->head->next;
    while (node != NULL)
    {
        printf("%p( %ld ) -> ", node, node->val);
        node = node->next;
    }
    puts("NULL");
}
//*
void queue_freenode(queue_t *queue)
{
    if (queue == NULL)
    {
        LOG_WARNINIG("queue == NULL");
        return;
    }

    node_t *tmp;
    while (queue->head != NULL)
    {
        tmp = queue->head;
        queue->head = tmp->next;
        free(tmp);
    }
    queue->ls = 0;
}
void queue_delete(queue_t* *queue)
{
    if (*queue == NULL)
    {
        LOG_WARNINIG("*queue == NULL");
        return;
    }

    queue_freenode(*queue);
    free(*queue);
    *queue = NULL;
}
#include "bintree.h"


//**********************************************************************************************************************************
//* BTNode functions ***************************************************************************************************************

btnode_t* btnode_push(btnode_t **btnode, uint64_t val)
{
    if (*btnode == NULL)
    {
        *btnode = (btnode_t*)malloc(sizeof(btnode_t));
        (*btnode)->val = val;
        (*btnode)->right = NULL;
        (*btnode)->left = NULL;
        
        return *btnode;
    }
    else
    {
        if (val >= (*btnode)->val)
            return btnode_push(&((*btnode)->right), val);
        else
            return btnode_push(&((*btnode)->left), val);
    }

}
uint64_t  btnode_pop(btnode_t **btnode);
uint64_t btnode_depth(btnode_t *btnode)                           //* btnd: bin tree nodes depth
{
    auto uint64_t _btnode_depth(btnode_t *btnode, uint64_t n)
    {
        n++;
        if (btnode == NULL)
            return n;

        uint64_t n1 = 0, n2 = 0;
        if (btnode->right != NULL)
            n1 = _btnode_depth(btnode->right, n);
        if (btnode->left != NULL)
            n2 = _btnode_depth(btnode->left, n);

        if ((n1 != 0) || (n2 != 0))
            return (n1 > n2) ? n1 : n2;
        else
            return n;
    };

    return _btnode_depth(btnode, 0);
}
uint64_t btnode_size(btnode_t *btnode)                           //* btns: bin tree nodes size
{
    uint64_t n = 1;
    auto uint64_t _btnode_size(btnode_t *btnode, uint64_t *n)
    {
        if (btnode == NULL)
            return 0;

        if (btnode->right != NULL)
        {
            (*n)++;
            _btnode_size(btnode->right, n);
        }
        if (btnode->left != NULL)
        {
            (*n)++;
            _btnode_size(btnode->left, n);
        }

        return *n;
    };

	return _btnode_size(btnode, &n);
}
//*
void btnode_put(btnode_t *btnode)
{
    if (btnode == NULL)
        return;
    printf("%lu\n", btnode->val);
    
    if (btnode->right != NULL)
        btnode_put(btnode->right);
    if (btnode->left != NULL)
        btnode_put(btnode->left);
}
void btnode_print(btnode_t *btnode)
{

    auto void _btnode_print(btnode_t *btnode, uint64_t n)
    {
        if (btnode == NULL)
            return;
        printf("[%lu]:%lu%s", ++n, btnode->val, ((btnode->right == NULL) && (btnode->left == NULL)) ? "\n" : " -> ");
        if (btnode->right != NULL)
            printf("[r]");
        _btnode_print(btnode->right, n);
        if (btnode->left != NULL)
            printf("[l]");
        _btnode_print(btnode->left, n);
    };

	_btnode_print(btnode, 0);
}
//! void btnode_printtree(btnode_t *btnode);
// {
//     // if (btn == NULL)
//     // {
//     //     printf("NULL ");
//     //     return;
//     // }
//     // printf("[%lu]%lu%s", ++n, btn->val, ((btn->right == NULL) && (btn->left == NULL)) ? "\n" : " -> ");
//     // printbtn(btn->right, n);
//     // printbtn(btn->left, n);

//     uint64_t depth = btnd(btnode);
//     uint64_t *tab = (uint64_t*)malloc(sizeof(uint64_t));
//     for (long i = 0; i < depth; i++)
//     {
//         //!
//     }
//     for (long i = 0; i < depth; i++)
//     {
//         for (long j = 0; j < depth-i-1; j++)
//             printf("  ");
//         for (long j = 0; j <= i; j++)
//             printf("%lu   ", btnode->val);
//         puts("");
//         if (i < depth-1)
//         {
//             for (long j = 0; j < depth-i-2; j++)
//                 printf("  ");
//             printf(" ");
//             for (long j = 0; j <= i; j++)
//                 printf("/ \\ ");
//             puts("");
//         }
//     }
// }
//*
void btnode_freenode(btnode_t **btnode)
{
    if (*btnode == NULL)
        return;
    if ((*btnode)->right != NULL)
        btnode_freenode(&((*btnode)->right));
    if ((*btnode)->left != NULL)
        btnode_freenode(&((*btnode)->left));
    
    free(*btnode);
    *btnode = NULL;
}

//**********************************************************************************************************************************
//* BTree functions ****************************************************************************************************************

btree_t* btree_init()
{
    btree_t *btree = (btree_t*)malloc(sizeof(btree_t));
    if (btree == NULL)
    {
        printf("ERROR: %s: %d: unable to allocate memory for bt\n", __FILE__, __LINE__);
        exit(1);
    }
    btree->head  = NULL;
    btree->depth = 0;

    return btree;
}
btnode_t* btree_push(btree_t *btree, uint64_t val)
{
    if (btree == NULL)
    {
        printf("ERROR: %s: %d: bt is NULL\n", __FILE__, __LINE__);
        return NULL;
    }
    else
    {
        btnode_push(&btree->head, val);
        btree->depth = btnode_depth(btree->head);

        return btree->head;
    }
}
uint64_t btree_pop(btree_t *btree);
//*
void btree_put(btree_t *btree)
{
    btnode_put(btree->head);
}
void btree_print(btree_t *btree)
{
    btnode_print(btree->head);
}
//! void      btree_printtype(btree_t *btree);
//*
void btree_freenode(btree_t **btree)
{
    btnode_freenode(&(*btree)->head);

    free(*btree);
    *btree = NULL;
}
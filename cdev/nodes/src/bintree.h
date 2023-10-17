#ifndef   BINTREE_H_INCLUDED
#define   BINTREE_H_INCLUDED

#include <stdmoh.h>

typedef struct btnode_t     //* Binary Tree Node
{
    uint64_t        val;
    struct btnode_t *right;
    struct btnode_t *left;
} btnode_t;
typedef struct obtnode_t    //* Object BTNode
{
    void             *obj;
    struct obtnode_t *right;
    struct obtnode_t *left;
} obtnode_t;
typedef struct btree_t
{
    btnode_t *head;
    uint64_t depth;
    //! uint64_t size;
} btree_t;


//* BTNode
btnode_t* btnode_push(btnode_t **btnode, uint64_t val);
uint64_t  btnode_pop(btnode_t **btnode);
uint64_t  btnode_depth(btnode_t *btnode);
uint64_t  btnode_size(btnode_t *btnode);
void      btnode_put(btnode_t *btnode);
void      btnode_print(btnode_t *btnode);
//! void      btnode_printtree(btnode_t *btnode);
void      btnode_freenode(btnode_t **btnode);

//* OBTNode

//* BTree

btree_t*  btree_init();
btnode_t* btree_push(btree_t *btree, uint64_t val);
uint64_t  btree_pop(btree_t *btree);
void      btree_put(btree_t *btree);
void      btree_print(btree_t *btree);
//! void      btree_printtype(btree_t *btree);
void      btree_freenode(btree_t **btree);

#endif // BINTREE_H_INCLUDED
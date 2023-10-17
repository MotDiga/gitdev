#ifndef   HASHTAB_H
#define   HASHTAB_H

#include "advencenode.h"
#include "stdstr.h"


//* Hash table

uint64_t mothash(const string_t, uint64_t);
uint64_t strinhashtab(string_t[], uint64_t, const string_t, uint64_t);
string_t strfromhashtab(string_t[], uint64_t, const string_t, uint64_t);
void freehashtab(string_t[], uint64_t);

//* Hash list

uint64_t strinhashlist(list_t[], uint64_t, const string_t, uint64_t);
string_t strfromhashlist(list_t[], uint64_t, const string_t, uint64_t);
void freehashlist(list_t[], uint64_t);

#endif // HASHTAB_H_INCLUDED



//! /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//! Good

// /**
//  * Note: The returned array must be malloced, assume caller calls free().
//  */


// typedef struct node_t
// {
//     struct node_t *next;
//     int index;
//     int val;
// } node_t;
// typedef struct hashmap_t
// {
//     node_t *node;
// } hashmap_t;

// hashmap_t hashmap[10000] = { 0 };
// int hash(int n)
// {
//     return (((n >> 16) | (n >> 8) & (n >> 4) | (n >> 2) & (n >> 1))*n + n) % 10000;
// }
// bool map_search(int n)
// {
//     int hash_n = hash(n);
//     if (hashmap[hash_n].node == NULL)
//     {
//         return false;
//     }
//     else
//     {
//         node_t *node = hashmap[hash_n].node;
//         while (node != NULL)
//         {
//             if (node->val == n)
//             {
//                 return true;
//             }
//             node = node->next;
//         }
//     }

//     return false;
// }
// void map_put(int n, int i)
// {
//     int hash_n = hash(n);
//     if (hashmap[hash_n].node == NULL)
//     {
//         hashmap[hash_n].node = (node_t*)malloc(sizeof(node_t));
//         hashmap[hash_n].node->val = n;
//         hashmap[hash_n].node->index = i;
//         hashmap[hash_n].node->next = NULL;
//     }
//     else
//     {
//         node_t *node = hashmap[hash_n].node;
//         while (node->next != NULL)
//         {
//             node = node->next;
//         }
//         node->next = (node_t*)malloc(sizeof(node_t));
//         node->next->val = n;
//         node->next->index = i;
//         node->next->next = NULL;
//     }
// }
// int map_get(int n)
// {
//     int hash_n = hash(n);
//     node_t *node = hashmap[hash_n].node;
//     while (node->val != n)
//     {
//         node = node->next;
//     }

//     return node->index;
// }
// void map_free()
// {
//     for (int i = 0; i < 10000; i++)
//     {
//         node_t *tmp = NULL;
//         while (hashmap[i].node != NULL)
//         {
//             tmp = hashmap[i].node;
//             printf("f:%p\n", hashmap[i].node);
//             tmp = tmp->next;
//             free(hashmap[i].node);
//             hashmap[i].node = tmp;
//         }
//     }
// }

// int* twoSum(int* numbers, int size, int target, int* result)
// {
//     result = (int*)malloc(2 * sizeof(int));

//     for (int i = 0; i < size; i++)
//     {
//         if (map_search(target - numbers[i]))
//         {
//             result[1] = i;
//             result[0] = map_get(target - numbers[i]);
//             map_free();
//             return result;
//         }
//         map_put(numbers[i], i);
//         printf("m:%p\n", hashmap[hash(numbers[i])].node);
//     }

//     for (int i = 0; i < size; i++)
//     {
//         for (int j = i+1; j < size; j++)
//         {
//             if (hashmap[i]. + hashmap[j] == target)
//             {
//                 result[0] = 

//                 map_free();
//                 return result;
//             }
//         }
//     }

//     map_free();
//     return result;
// }


//! /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
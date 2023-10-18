#ifndef   SANDBOXRESOURCES_H_INCLUDED
#define   SANDBOXRESOURCES_H_INCLUDED

#include <renderer/renderer.h>

typedef struct point_t
{
    real32_t x;
    real32_t y;
} point_t;
typedef struct indexobject_t
{
    uint32_t a;
    uint32_t b;
    uint32_t c;
} indexobject_t;

enum { VAO0 , VAO1, VAO2};
enum { F_VB, S_VB, O_VB };
enum { F_IBO, S_IBO, O_IBO };
enum { F_PROGRAM, S_PROGRAM, O_PROGRAM };
enum { S_TEXTURE };
enum { SLOT0, SLOT1, SLOT2 };

//*************************************************************************************************************************************************************************************************
//* Objects

//* Renderer
renderer_t _renderer;
//* VBs and EBOs
const point_t frame[16] = {
    { -1.0f,   1.0f}, {   -1.0f,  0.975f}, {    1.0f,  0.975f}, {  1.0f,    1.0f},
    { -1.0f, 0.975f}, { -0.975f,  0.975f}, { -0.975f, -0.975f}, { -1.0f, -0.975f},
    { -1.0f,  -1.0f}, {   -1.0f, -0.975f}, {    1.0f, -0.975f}, {  1.0f,   -1.0f},
    {  1.0f, 0.975f}, {  0.975f,  0.975f}, {  0.975f, -0.975f}, {  1.0f, -0.975f}
};
const indexobject_t frameIndeces[8] = { {0, 1, 2 }, {2, 3, 0}, {4, 5, 6 }, {6, 7, 4}, {8, 9, 10 }, {10, 11, 8}, {12, 13, 14 }, {14, 15, 12} };
const point_t square[8] = {
    { -0.35f, -0.35f}, { 0.0f, 0.0f},
    {  0.35f, -0.35f}, { 1.0f, 0.0f},
    { -0.35f,  0.35f}, { 0.0f, 1.0f},
    {  0.35f,  0.35f}, { 1.0f, 1.0f}
};
const indexobject_t squareIndeces[2] = { {0, 1, 3}, {3, 2, 0} };
const point_t octagone[8] = {
    {  0.0f,  0.5f}, {  0.35f,  0.35f}, {  0.5f,  0.0f}, {  0.35f, -0.35f},
    {  0.0f, -0.5f}, { -0.35f, -0.35f}, { -0.5f,  0.0f}, { -0.35f,  0.35f}
};
const indexobject_t octagoneIndeces[6] = { {0, 1, 2 }, { 2, 3, 4 }, { 4, 5, 6 }, { 6, 7, 0 }, { 0, 2, 4 }, { 4, 6, 0 } };

#endif // SANDBOXRESOURCES_H_INCLUDED
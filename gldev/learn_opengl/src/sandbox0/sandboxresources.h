#ifndef   SANDBOXRESOURCES_H_INCLUDED
#define   SANDBOXRESOURCES_H_INCLUDED

#include <stdmoh.h>
#include <stderr.h>
#include <string.h>
#define GLEW_STATIC
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <stb_image/stb_image.h>
#include <cglm/cglm.h>

#define FPS_60 1
#define FPS_30 2

typedef GLFWwindow  window_t;
typedef GLFWmonitor monitor_t;

//********************************************
typedef enum shadertype_t
{
    NONE, VERTEX, FRAGMENT
} shadertype_t;
typedef struct shadersources_t
{
    string_t vshader;
    string_t fshader;
} shadersources_t;

//********************************************
typedef struct point_t
{
    real32_t x;
    real32_t y;
    real32_t z;
} point_t;
typedef struct rgba_t
{
    real32_t r;
    real32_t g;
    real32_t b;
    real32_t a;
} rgba_t;
typedef struct vertex_t
{
    point_t p;
    rgba_t  c;
} vertex_t;

typedef struct indexobject_t
{
    uint32_t a;
    uint32_t b;
    uint32_t c;
} indexobject_t;

const vertex_t triangle[3] = {
    { { -0.5f, -0.5f, 0.0f }, { 1.0f, 0.0f, 0.0f, 1.0f } },
    { {  0.0f,  0.5f, 0.0f }, { 0.0f, 1.0f, 0.0f, 1.0f } },
    { {  0.5f, -0.5f, 0.0f }, { 0.0f, 0.0f, 1.0f, 1.0f } }
};
const indexobject_t triangleindeces[3] = { { 0, 1, 2 } };
const vertex_t square[4] = {
    { {  0.0f,  0.5f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { {  0.5f,  0.0f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { {  0.0f, -0.5f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { { -0.5f,  0.0f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } }
};
const indexobject_t squareindeces[3*2] = { { 0, 1, 2 }, { 2, 3, 0 } };
const vertex_t hexagone[6] = {
    { {  0.00f,  0.50f, 0.0f }, { 1.0f, 0.0f, 0.0f, 1.0f } },
    { {  0.43f,  0.25f, 0.0f }, { 1.0f, 1.0f, 0.0f, 1.0f } },
    { {  0.43f, -0.25f, 0.0f }, { 0.0f, 1.0f, 0.0f, 1.0f } },
    { {  0.00f, -0.50f, 0.0f }, { 0.0f, 1.0f, 1.0f, 1.0f } },
    { { -0.43f, -0.25f, 0.0f }, { 0.0f, 0.0f, 1.0f, 1.0f } },
    { { -0.43f,  0.25f, 0.0f }, { 1.0f, 0.0f, 1.0f, 1.0f } }
};
const indexobject_t hexagoneindeces[3*4] = { { 0, 1, 2 }, { 0, 2, 3 }, { 0, 3, 4 }, { 0, 4, 5 } };
const vertex_t octagone[8] = {
    { {  0.00f,  0.50f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { {  0.35f,  0.35f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { {  0.50f,  0.00f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { {  0.35f, -0.35f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { {  0.00f, -0.50f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { { -0.35f, -0.35f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { { -0.50f,  0.00f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { { -0.35f,  0.35f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } }
};
const indexobject_t octagoneindeces[3*6] = { { 0, 1, 2 }, { 0, 2, 3 }, { 0, 3, 4 }, { 0, 4, 5 }, { 0, 5, 6 }, { 0, 6, 7 } };
const vertex_t decagone[10] = {
    { {  0.00f,  0.50f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { {  0.29f,  0.40f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { {  0.48f,  0.15f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { {  0.48f, -0.15f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { {  0.29f, -0.40f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { {  0.00f, -0.50f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { { -0.29f, -0.40f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { { -0.48f, -0.15f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { { -0.48f,  0.15f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } },
    { { -0.29f,  0.40f, 0.0f }, { 1.0f, 0.5f, 0.2f, 1.0f } }
};
const indexobject_t decagoneindeces[3*8] = { { 0, 1, 2 }, { 0, 2, 3 }, { 0, 3, 4 }, { 0, 4, 5 }, { 0, 5, 6 }, { 0, 6, 7 }, { 0, 7, 8 }, { 0, 8, 9 } };
const vertex_t monodecagone[12] = {
    { {  0.00f,  0.50f, 0.0f }, { 1.0f, 0.0f, 0.0f, 1.0f } },
    { {  0.25f,  0.43f, 0.0f }, { 1.0f, 1.0f, 0.0f, 1.0f } },
    { {  0.43f,  0.25f, 0.0f }, { 0.0f, 1.0f, 0.0f, 1.0f } },
    { {  0.50f,  0.00f, 0.0f }, { 0.0f, 1.0f, 1.0f, 1.0f } },
    { {  0.43f, -0.25f, 0.0f }, { 0.0f, 0.0f, 1.0f, 1.0f } },
    { {  0.25f, -0.43f, 0.0f }, { 1.0f, 0.0f, 1.0f, 1.0f } },
    { {  0.00f, -0.50f, 0.0f }, { 1.0f, 0.0f, 0.0f, 1.0f } },
    { { -0.25f, -0.43f, 0.0f }, { 1.0f, 1.0f, 0.0f, 1.0f } },
    { { -0.43f, -0.25f, 0.0f }, { 0.0f, 1.0f, 0.0f, 1.0f } },
    { { -0.50f,  0.00f, 0.0f }, { 0.0f, 1.0f, 1.0f, 1.0f } },
    { { -0.43f,  0.25f, 0.0f }, { 0.0f, 0.0f, 1.0f, 1.0f } },
    { { -0.25f,  0.43f, 0.0f }, { 1.0f, 0.0f, 1.0f, 1.0f } }
};
const indexobject_t monodecagoneindeces[3*12] = { { 0, 1, 2 }, { 0, 2, 3 }, { 0, 3, 4 }, { 0, 4, 5 }, { 0, 5, 6 }, { 0, 6, 7 }, { 0, 7, 8 }, { 0, 8, 9 }, { 0, 9, 10 }, { 0, 10, 11 } };


#endif // SANDBOXRESOURCES_H_INCLUDED
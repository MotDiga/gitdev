#ifndef   RENDERER_H_INCLUDED
#define   RENDERER_H_INCLUDED

#include <stdmoh.h>
#include <stderr.h>
#include <string.h>
#include <math.h>
#define GLEW_STATIC
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <stb_image/stb_image.h>
#include <cglm/cglm.h>

#define FPS_MAX 0
#define FPS_60  1
#define FPS_30  2

//********************************************************************************************************************************************************************************
//* Objects


typedef int32_t ivec2[2];
typedef int32_t ivec4[4];

typedef ivec2   ivec2_t;
typedef ivec3   ivec3_t;
typedef ivec4   ivec4_t;
typedef vec2    vec2_t;
typedef vec3    vec3_t;
typedef vec4    vec4_t;
typedef mat2    mat2_t;
typedef mat3    mat3_t;
typedef mat4    mat4_t;
//********************************************
typedef struct ivec2_st {
    int32_t x, y;
} ivec2_st;
typedef struct ivec3_st {
    int32_t x, y, z;
} ivec3_st;
typedef struct ivec4_st {
    int32_t x, y, z, w;
} ivec4_st;
typedef struct vec2_st {
    real32_t x, y;
} vec2_st;
typedef struct vec3_st {
    real32_t x, y, z;
} vec3_st;
typedef struct vec4_st {
    real32_t x, y, z, w;
} vec4_st;
typedef vec2_st mat2_st[2];
typedef vec3_st mat3_st[3];
typedef vec4_st mat4_st[4];

//********************************************
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
typedef struct shader_t
{
    uint32_t shader_id;
    shadersources_t sources;
    //? HashTab For UniformLocations
} shader_t;
typedef struct texture_t
{
    uint32_t texture_id;
    uint16_t type;
    int8_t   bpp;
    uint8_t  *texture;
    int32_t  width;
    int32_t  height;
} texture_t;
//********************************************
typedef struct renderer_t
{
    real64_t dtime;
} renderer_t;

//********************************************************************************************************************************************************************************
//* Functions

//********************************************
//* Shader
uint32_t shader_gen(shader_t *shader, const string_t filepath);
#define  shader_uniformlocation(shader_ptr, uniform) glGetUniformLocation((shader_ptr)->shader_id, uniform)
#define  shader_updateuniform(uniform, type, args...) glUniform##type(uniform, ##args)
#define  shader_use(shader_ptr) glUseProgram((shader_ptr)->shader_id)
#define  shader_unuse() glUseProgram(0)
void     shader_free(shader_t *shader);

//****************************************************************************************************************************************************************
//* Texture
uint32_t texture_2dgen(texture_t *texture, const string_t filepath, uint32_t unit, uint32_t minfp, uint32_t magfp, uint32_t wsp, uint32_t wtp);
void     texture_bind(texture_t *texture, uint32_t unit);
#define  texture_unbind() glBindTexture(GL_TEXTURE_2D, 0)
void     texture_free(texture_t *texture);

//********************************************
//* Renderer
void renderer_timer(renderer_t *renderer);


#endif // RENDERER_H_INCLUDED
#ifndef   SHADER_H_INCLUDED
#define   SHADER_H_INCLUDED

#include "stdmath.h"
#include "stdlog.h"
#define GLEW_STATIC
#include <GL/glew.h>
#include <GLFW/glfw3.h>             //?!
#include <stb_image/stb_image.h>    //!
#include <cglm/cglm.h>              //!

typedef struct ivec2_t { int32_t  x, y;       } ivec2_t;
typedef struct ivec3_t { int32_t  x, y, z;    } ivec3_t;
typedef struct ivec4_t { int32_t  x, y, z, w; } ivec4_t;
typedef struct vec2_t  { real32_t x, y;       } vec2_t;
typedef struct vec3_t  { real32_t x, y, z;    } vec3_t;
typedef struct vec4_t  { real32_t x, y, z, w; } vec4_t;

typedef struct imat2_t { ivec2_t r1, r2;         } imat2_t;
typedef struct imat3_t { ivec3_t r1, r2, r3;     } imat3_t;
typedef struct imat4_t { ivec4_t r1, r2, r3, r4; } imat4_t;
typedef struct mat2_t  { vec2_t  r1, r2;         } mat2_t;
typedef struct mat3_t  { vec3_t  r1, r2, r3;     } mat3_t;
typedef struct mat4_t  { vec4_t  r1, r2, r3, r4; } mat4_t;

typedef GLFWwindow  window_t;
typedef GLFWmonitor monitor_t;

//********************************************
typedef enum shadertype_t
{
    NONE, VERTEX, FRAGMENT
} shadertype_t;
typedef string_t shader_t;
typedef struct gprogram_t
{
    uint32_t program_id;
    shader_t vshader;
    shader_t fshader;
} gprogram_t;
typedef string_t attrib_t;
typedef string_t uniform_t;

//****************************************************************************************************************************************************************
//* Shader
void     gprogram_parseshader(gprogram_t *gprogram, const string_t shaderfilepath);
uint32_t gprogram_compileshader(const uint32_t type, const shader_t *shader);
uint32_t gprogram_create(gprogram_t *gprogram);
uint32_t gprogram_gen(gprogram_t *gprogram, const string_t shaderfilepath);
#define  gprogram_attriblocation(gprogram_ptr, attrib)   glGetUniformLocation((gprogram_ptr)->program_id, attrib)
#define  gprogram_uniformlocation(gprogram_ptr, uniform) glGetUniformLocation((gprogram_ptr)->program_id, uniform)
#define  gprogram_updateuniform(uniform, type, args...)  glUniform##type(uniform, ##args)
#define  gprogram_use(gprogram_ptr) glUseProgram((gprogram_ptr)->program_id)
#define  gprogram_unuse()           glUseProgram(0)
void     gprogram_free(gprogram_t *gprogram);


#endif // SHADER_H_INCLUDED
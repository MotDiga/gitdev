#ifndef   SHADER_H_INCLUDED
#define   SHADER_H_INCLUDED

#include "stdmath.h"
#include <stdarg.h>
#include "stdlog.h"
#define GLEW_STATIC
#include <GL/glew.h>
#include <GLFW/glfw3.h>             //?!
#include <stb_image/stb_image.h>    //!
#include <cglm/cglm.h>              //!

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
    string_t vshader;
    string_t fshader;
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
#ifndef   RENDERER_H_INCLUDED
#define   RENDERER_H_INCLUDED

#include <string.h>
#define GLEW_STATIC
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <renderer/glerror.h>
#include <stb_image/stb_image.h>
#include <cglm/cglm.h>
#include <nodes/nodes.h>
// #include <cimgui.h>
// #define CIMGUI_DEFINE_ENUMS_AND_STRUCTS

//!
#define FULL_WIDTH                1366
#define FULL_HEIGHT               768
//!

#define RENDERER_DEFAULT          0x0
#define RENDERER_FPS_60           0x1
#define RENDERER_FPS_30           0x2
#define RENDERER_SCREEN_MAX       0x1
#define RENDERER_SCREEN_FULL      0x2
#define RENDERER_BLEND            0x1

#define RENDERER_UNIFORM_1I       0x0
#define RENDERER_UNIFORM_2I       0x1
#define RENDERER_UNIFORM_3I       0x2
#define RENDERER_UNIFORM_4I       0x3
#define RENDERER_UNIFORM_1IV      0x4
#define RENDERER_UNIFORM_2IV      0x5
#define RENDERER_UNIFORM_3IV      0x6
#define RENDERER_UNIFORM_4IV      0x7
#define RENDERER_UNIFORM_1F       0x8
#define RENDERER_UNIFORM_2F       0x9
#define RENDERER_UNIFORM_3F       0xA
#define RENDERER_UNIFORM_4F       0xB
#define RENDERER_UNIFORM_1FV      0xC
#define RENDERER_UNIFORM_2FV      0xD
#define RENDERER_UNIFORM_3FV      0xE
#define RENDERER_UNIFORM_4FV      0xF
#define RENDERER_UNIFORM_MAT2FV   0x10
#define RENDERER_UNIFORM_MAT3FV   0x11
#define RENDERER_UNIFORM_MAT4FV   0x12

#define RENDERER_OBJECT_2DCOLOR   0x0
#define RENDERER_OBJECT_2DTEXTURE 0x1

#define RENDERER_CAMERA_2DMVP     0x0

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

typedef const string_t uniform_t;

typedef GLFWerrorfun errorfun_t;
typedef GLFWwindow  window_t;
typedef GLFWmonitor monitor_t;
typedef GLFWframebuffersizefun framebuffersizefun_t;
typedef GLFWkeyfun  keyfun_t;

//********************************************
typedef struct vao_t
{
    uint32_t vao_id;
} vao_t;
typedef struct vbo_t
{
    uint32_t vbo_id;
    uint32_t type;
    int32_t  stride;
    bool_t   normalized;
} vbo_t;
typedef struct ebo_t
{
    uint32_t ebo_id;
    uint32_t count;
} ebo_t;
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
    uint32_t        program_id;
    shadersources_t shaders;
    int32_t         *u_locations;
    uint32_t        u_location_ids;
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
typedef struct resourcemanager_t    //!
{
    vao_t     *vaos;
    uint32_t  vao_count;
    vbo_t     *vbos;
    uint32_t  vbo_count;
    ebo_t     *ebos;
    uint32_t  ebo_count;
    shader_t  *programs;
    uint32_t  program_layouts;
    uint32_t  program_count;
    texture_t *textures;
    uint32_t  texture_count;
} resourcemanager_t;
//********************************************
// typedef struct material_t   //! add uniforms
// {
//     uint32_t program_id;
//     dlist_t  *texture_count;
//     dlist_t  *uniforms;
//     uint32_t materialtype;
// } material_t;
typedef struct object_t
{
    dlist_t    *vao_ids;
    dlist_t    *vbo_ids;
    dlist_t    *ebo_ids;
    uint32_t   material_id;
    // material_t material;
} object_t;
typedef struct entity_t
{
    object_t   *objects;
    uint32_t   object_ids;
    mat4_t     *models;
    uint32_t   model_ids;
    uint32_t   entitytype;
} entity_t;
//********************************************
typedef struct mvp2d_t
{
    real32_t zoom;
    vec3_t   mdir;
    vec3_t   vdir;
    mat4_t   projection;
    mat4_t   view;
    mat4_t   mvp;
} mvp2d_t;
typedef struct camera_t
{
    real32_t widthaspectratio;
    real32_t heightaspectratio;
    void*    transform;
    uint32_t cameratype;
    //?
} camera_t;
//********************************************
typedef struct guiengine_t
{
    //!
} guiengine_t;
typedef struct context_t
{
    //!
} context_t;
//********************************************
typedef struct renderer_t
{
    resourcemanager_t resourcemanager;
    window_t          *window;
    // monitor_t         *monitor;
    int32_t           windowwidth;
    int32_t           windowheight;
    camera_t          camera;
    mat4_t            *cameratransform;
    // entity_t          *entities;
    // uint32_t          entity_ids;
    // guiengine_t       window_menues
    mtime_t           timer;
    real64_t          time0;
    real64_t          dtime;
    real64_t          vsync;
} renderer_t;
//********************************************


//****************************************************************************************************************************************************************
//* VertexArrayObject
uint32_t vao_gen(vao_t *vao);
#define  vao_bind(vao_ptr)   GLCALL(glBindVertexArray((vao_ptr)->vao_id))
#define  vao_unbind()        GLCALL(glBindVertexArray(0))
#define  vao_free(vao_ptr)   GLCALL(glDeleteVertexArrays(1, &((vao_ptr)->vao_id)))

//****************************************************************************************************************************************************************
//* VertexBufferObject
uint32_t vbo_gen(vbo_t *vbo, uint32_t size, const void *data, uint32_t usage);
void     vertexatribpointer(uint32_t index, int32_t size, uint32_t type, bool_t normalized, int32_t stride, const void *pointer);
#define  vbo_bind(vbo_ptr) GLCALL(glBindBuffer(GL_ARRAY_BUFFER, (vbo_ptr)->vbo_id))
#define  vbo_unbind()      GLCALL(glBindBuffer(GL_ARRAY_BUFFER, 0))
#define  vbo_free(vbo_ptr) GLCALL(glDeleteBuffers(1, &((vbo_ptr)->vbo_id)))

//****************************************************************************************************************************************************************
//* ObjectIndexBuffer
uint32_t ebo_gen(ebo_t *ebo, uint32_t size, const uint32_t *data, uint32_t usage);
#define  ebo_bind(ebo_ptr)         GLCALL(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, (ebo_ptr)->ebo_id))
#define  ebo_unbind()              GLCALL(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0))
#define  ebo_drawtriangle(ebo_ptr) GLCALL(glDrawElements(GL_TRIANGLES, (ebo_ptr)->count, GL_UNSIGNED_INT, NULL))
#define  ebo_free(ebo_ptr)         GLCALL(glDeleteBuffers(1, &((ebo_ptr)->ebo_id)))

//****************************************************************************************************************************************************************
//* Shader
uint32_t shader_gen(shader_t *program, const string_t filepath);
int32_t  shader_uniformlocation(shader_t *program, const string_t uniform);
void     shader_updateuniform(int32_t uniform, uint32_t type, ...);
#define  shader_use(program_ptr) GLCALL(glUseProgram((program_ptr)->program_id))
#define  shader_unuse()          GLCALL(glUseProgram(0))
void     shader_free(shader_t *program);

//****************************************************************************************************************************************************************
//* Texture
uint32_t texture_2dgen(texture_t *texture, const string_t filepath, uint32_t slot);
void     texture_bind(texture_t *texture, uint32_t slot);
#define  texture_unbind() GLCALL(glBindTexture(GL_TEXTURE_2D, 0))
void     texture_free(texture_t *texture);

//****************************************************************************************************************************************************************
//* Resource Manager
void     resourcemanager_init(resourcemanager_t *resourcemanager);

uint32_t resourcemanager_addvao(resourcemanager_t *resourcemanager);
uint32_t resourcemanager_addvbo(resourcemanager_t *resourcemanager, uint32_t vbosize, const void *data, uint32_t usage, uint32_t vbotype, int32_t vapsize, int32_t stride, bool_t normalized);
void     resourcemanager_vertexatribpointer(resourcemanager_t *resourcemanager, uint32_t vbo, int32_t size, const void *pointer);
uint32_t resourcemanager_addebo(resourcemanager_t *resourcemanager, uint32_t size, const uint32_t *data, uint32_t usage);
uint32_t resourcemanager_addprogram(resourcemanager_t *resourcemanager, const string_t filepath);
uint32_t resourcemanager_add2dtexture(resourcemanager_t *resourcemanager, const string_t filepath, uint32_t slot);
//? uint32_t resourcemanager_freevao(resourcemanager_t *resourcemanager, uint32_t vao);
//? uint32_t resourcemanager_freevbo(resourcemanager_t *resourcemanager, uint32_t vbo);
//? uint32_t resourcemanager_freeebo(resourcemanager_t *resourcemanager, uint32_t ebo);
//? uint32_t resourcemanager_freeprogram(resourcemanager_t *resourcemanager, uint32_t program);
//? uint32_t resourcemanager_free2dtexture(resourcemanager_t *resourcemanager, uint32_t texture);

void     resourcemanager_free(resourcemanager_t *resourcemanager);

//****************************************************************************************************************************************************************
//* Entity
// uint32_t;

//****************************************************************************************************************************************************************
//* Camera
#define  camera_2dmvptransform(camera) (&(_2DMVP(camera)->mvp))

mat4_t*  camera_init(camera_t *camera, uint32_t camerawidth, uint32_t cameraheight, uint32_t cameratype);
mat4_t*  camera_update(camera_t *camera, mat4_t model, void (*transform_updateparameters)());
// mat4_t*  camera_transform(camera_t *camera, void (*transform)(...), ...)

void     camera_free(camera_t *camera);

//****************************************************************************************************************************************************************
//* Renderer
void     renderer_init(renderer_t *renderer, int32_t windowwidth, int32_t windowheight, uint32_t cameratype, const string_t title, int32_t vsync, int32_t screenmode, bool_t blend);

#define  renderer_addvao(renderer_ptr) resourcemanager_addvao(&((renderer_ptr)->resourcemanager))
#define  renderer_addvbo(renderer_ptr, vbosize, data_ptr, usage, vbotype, vapsize, stride, normalized)\
         resourcemanager_addvbo(&((renderer_ptr)->resourcemanager), vbosize, data_ptr, usage, vbotype, vapsize, stride, normalized)
#define  renderer_vertexatribpointer(renderer_ptr, vbo, size, pointer) resourcemanager_vertexatribpointer(&((renderer_ptr)->resourcemanager), vbo, size, pointer)
#define  renderer_addebo(renderer_ptr, size, data_ptr, usage) resourcemanager_addebo(&((renderer_ptr)->resourcemanager), size, data_ptr, usage)
#define  renderer_addprogram(renderer_ptr, filepath) resourcemanager_addprogram(&((renderer_ptr)->resourcemanager), filepath)
#define  renderer_add2dtexture(renderer_ptr, filepath, slot) resourcemanager_add2dtexture(&((renderer_ptr)->resourcemanager), filepath, slot)

// uint32_t renderer_addobject(renderer_t *renderer, uint32_t vao, uint32_t vbo, uint32_t ebo);
// uint32_t renderer_setobject2dcolor(renderer_t *renderer, uint32_t object, uint32_t program);
// uint32_t renderer_setobject2dtexture(renderer_t *renderer, uint32_t object, uint32_t program, uint32_t texture);
// void     renderer_addmodel(renderer_t *renderer, uint32_t object);

#define  renderer_shaderuniformlocation(renderer_ptr, program, uniform) shader_uniformlocation(&((renderer_ptr)->resourcemanager.programs[program]), uniform)
#define  renderer_updateuniform(uniform, type, args...) shader_updateuniform(uniform, type, args)
#define  renderer_updatecamera(renderer_ptr, model, transform_updateparameters) camera_update(&((renderer_ptr)->camera), model, transform_updateparameters)

void     renderer_prepare(renderer_t *renderer, keyfun_t callback);
#define  renderer_shouldclose(renderer_ptr) glfwWindowShouldClose((renderer_ptr)->window)
void     renderer_deltatime(renderer_t *renderer);
void     renderer_clear(real32_t r, real32_t g, real32_t b, real32_t a);
void     renderer_bind(renderer_t *renderer, uint32_t vao, uint32_t program);
void     renderer_bindtexture(renderer_t *renderer, uint32_t texture, uint32_t slot);
#define  renderer_ebodrawtriangle(renderer_ptr, ebo) ebo_drawtriangle(&((renderer_ptr)->resourcemanager.ebos[ebo]))

void     renderer_unbind();
void     renderer_free(renderer_t *renderer);


#endif // RENDERER_H_INCLUDED
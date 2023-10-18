#include "renderer.h"


//****************************************************************************************************************************************************************
//* VertexArrayObject

uint32_t vao_gen(vao_t *vao)
{
    GLCALL(glGenVertexArrays(1, &vao->vao_id))
    GLCALL(glBindVertexArray(vao->vao_id))

    return vao->vao_id;
}

//****************************************************************************************************************************************************************
//* VertexBuffer

uint32_t vbo_gen(vbo_t *vbo, uint32_t size, const void *data, uint32_t usage)
{
    GLCALL(glGenBuffers(1, &vbo->vbo_id))
    GLCALL(glBindBuffer(GL_ARRAY_BUFFER, vbo->vbo_id))
    GLCALL(glBufferData(GL_ARRAY_BUFFER, size, data, usage))

    return vbo->vbo_id;
}
void vertexatribpointer(uint32_t index, int32_t size, uint32_t type, bool normalized, int32_t stride, const void *pointer)
{
    GLCALL(glEnableVertexAttribArray(index))
    GLCALL(glVertexAttribPointer(index, size, type, normalized, stride, pointer))
}

//****************************************************************************************************************************************************************
//* ObjectIndexBuffer

uint32_t ebo_gen(ebo_t *ebo, uint32_t size, const uint32_t *data, uint32_t usage)
{
    ebo->count = size / 4;
    GLCALL(glGenBuffers(1, &ebo->ebo_id))
    GLCALL(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ebo->ebo_id))
    GLCALL(glBufferData(GL_ELEMENT_ARRAY_BUFFER, size, data, usage))

    return ebo->ebo_id;
}

//****************************************************************************************************************************************************************
//* Shader

static void parseshader(const string_t filepath, shadersources_t *sources)
{
    sources->vshader = (string_t)malloc(4096 * sizeof(char));
    sources->vshader[0] = '\0';
    sources->fshader = (string_t)malloc(4096 * sizeof(char));
    sources->fshader[0] = '\0';

    FILE *shadersourcefile = fopen(filepath, "r");
    if (shadersourcefile == NULL)
    {
        LOG_FATAL(EXIT_FAILURE, "unable to open %s", filepath)
    }

    shadertype_t shadertype = NONE;
    uint32_t vmax = 4070, fmax = 4070;
    char_t buffer[128];

    while (fgets(buffer, 128, shadersourcefile) != NULL)
    {
        if (strlen(sources->vshader) > (vmax - 128))
        {
            vmax += 1024;
            sources->vshader = (string_t)realloc(sources->vshader, vmax + 26);
        }
        if (strlen(sources->fshader) > (fmax - 128))
        {
            fmax += 1024;
            sources->fshader = (string_t)realloc(sources->fshader, fmax + 26);
        }
        if (strncmp(buffer, "#shader vertex", 14) == 0)
        {
            shadertype = VERTEX;
            continue;
        }
        else if (strncmp(buffer, "#shader fragment", 16) == 0)
        {
            shadertype = FRAGMENT;
            continue;
        }

        if (shadertype == VERTEX)
        {
            strcat(sources->vshader, buffer);
        }
        else if (shadertype == FRAGMENT)
        {
            strcat(sources->fshader, buffer);
        }
    }
    fclose(shadersourcefile);

    IFDEBUG (
        printf("###############################################################################\n");
        printf("#Vertex Shader:\n%s\n#Fragment Shader:\n%s\n", sources->vshader, sources->fshader);
        printf("###############################################################################\n");
    )
}
static uint32_t compileshader(uint32_t type, const string_t *source)
{
    GLCALL(uint32_t shader = glCreateShader(type))
    GLCALL(glShaderSource(shader, 1, source, NULL))
    GLCALL(glCompileShader(shader))

    int32_t compileStatus;
    GLCALL(glGetShaderiv(shader, GL_COMPILE_STATUS, &compileStatus))
    if (compileStatus != GL_TRUE)
    {
        int32_t loglength = 0;
        char message[1024];
        GLCALL(glGetShaderInfoLog(shader, 1024, &loglength, message))
        glDeleteShader(shader);
        LOG_FATAL(EXIT_FAILURE, "In %s:\n%s", (type == GL_VERTEX_SHADER) ? "vertex shader" : ((type == GL_FRAGMENT_SHADER) ? "fragment shader" : "NULL"), message)
    }

    return shader;
}
static uint32_t createprogram(shadersources_t *sources)
{
    uint32_t program = glCreateProgram();
    uint32_t vshader = compileshader(GL_VERTEX_SHADER, &(sources->vshader));
    uint32_t fshader = compileshader(GL_FRAGMENT_SHADER, &(sources->fshader));

    glAttachShader(program, vshader);
    glAttachShader(program, fshader);
    glLinkProgram(program);

    int32_t linkstatus;
    glGetProgramiv(program, GL_LINK_STATUS, &linkstatus);
    if (linkstatus != GL_TRUE)
    {
        int32_t loglength = 0;
        char message[4096];
        glGetProgramInfoLog(program, 4096, &loglength, message);
        LOG_FATAL(EXIT_FAILURE, "\n%s", message)
        glDeleteProgram(program);
    }

    glValidateProgram(program);

    int32_t validatestatus;
    glGetProgramiv(program, GL_LINK_STATUS, &validatestatus);
    if (validatestatus != GL_TRUE)
    {
        int32_t loglength = 0;
        char message[4096];
        glGetProgramInfoLog(program, 4096, &loglength, message);
        LOG_FATAL(EXIT_FAILURE, "\n%s", message)
        glDeleteProgram(program);
    }

    glDeleteShader(vshader);
    glDeleteShader(fshader);

    return program;
}
//*
uint32_t shader_gen(shader_t *program, const string_t filepath)
{
    parseshader(filepath, &(program->shaders));
    program->program_id = createprogram(&(program->shaders));
    program->u_locations = NULL;
    program->u_location_ids = 0;
    GLCALL(glUseProgram(program->program_id))

    return program->program_id;
}
int32_t shader_uniformlocation(shader_t *program, const string_t uniform)
{
    GLCALL(int32_t uniform_id = glGetUniformLocation(program->program_id, uniform))
    for (size_t i = 0; i < program->u_location_ids; i++)
    {
        if (uniform_id == program->u_locations[i])
        {
            return program->u_locations[i];
        }
    }

    if (program->u_location_ids != 0)
    {
        program->u_location_ids++;
        program->u_locations = (int32_t*)realloc(program->u_locations, program->u_location_ids * sizeof(int32_t));
    }
    else
    {
        program->u_location_ids = 1;
        program->u_locations = (int32_t*)malloc(sizeof(int32_t));
    }
    program->u_locations[program->u_location_ids - 1] = uniform_id;

    if (uniform_id == -1)
    {
        log_warning_plus("uniform %s not found\n", uniform);
    }

    return uniform_id;
}
void shader_updateuniform(int32_t uniform, uint32_t type, ...)
{
    va_list args;
    va_start(args, type);

    if (type == RENDERER_UNIFORM_1I)
    {
        int32_t i1 = va_arg(args, int32_t);
        GLCALL(glUniform1i(uniform, i1));
    }
    else if (type == RENDERER_UNIFORM_2I)
    {
        int32_t i1 = va_arg(args, int32_t);
        int32_t i2 = va_arg(args, int32_t);
        GLCALL(glUniform2i(uniform, i1, i2));
    }
    else if (type == RENDERER_UNIFORM_3I)
    {
        int32_t i1 = va_arg(args, int32_t);
        int32_t i2 = va_arg(args, int32_t);
        int32_t i3 = va_arg(args, int32_t);
        GLCALL(glUniform3i(uniform, i1, i2, i3));
    }
    else if (type == RENDERER_UNIFORM_4I)
    {
        int32_t i1 = va_arg(args, int32_t);
        int32_t i2 = va_arg(args, int32_t);
        int32_t i3 = va_arg(args, int32_t);
        int32_t i4 = va_arg(args, int32_t);
        GLCALL(glUniform4i(uniform, i1, i2, i3, i4));
    }
    else if (type == RENDERER_UNIFORM_1F)
    {
        real32_t f1 = va_arg(args, real64_t);
        GLCALL(glUniform1f(uniform, f1));
    }
    else if (type == RENDERER_UNIFORM_2F)
    {
        real32_t f1 = va_arg(args, real64_t);
        real32_t f2 = va_arg(args, real64_t);
        GLCALL(glUniform2f(uniform, f1, f2));
    }
    else if (type == RENDERER_UNIFORM_3F)
    {
        real32_t f1 = va_arg(args, real64_t);
        real32_t f2 = va_arg(args, real64_t);
        real32_t f3 = va_arg(args, real64_t);
        GLCALL(glUniform3f(uniform, f1, f2, f3));
    }
    else if (type == RENDERER_UNIFORM_4F)
    {
        real32_t f1 = va_arg(args, real64_t);
        real32_t f2 = va_arg(args, real64_t);
        real32_t f3 = va_arg(args, real64_t);
        real32_t f4 = va_arg(args, real64_t);
        GLCALL(glUniform4f(uniform, f1, f2, f3, f4));
    }
    else if (type == RENDERER_UNIFORM_MAT2FV)
    {
        real32_t *mat2fv = (real32_t*)va_arg(args, int64_t);
        GLCALL(glUniformMatrix2fv(uniform, 1, GL_FALSE, mat2fv));
    }
    else if (type == RENDERER_UNIFORM_MAT3FV)
    {
        real32_t *mat3fv = (real32_t*)va_arg(args, int64_t);
        GLCALL(glUniformMatrix3fv(uniform, 1, GL_FALSE, mat3fv));
    }
    else if (type == RENDERER_UNIFORM_MAT4FV)
    {
        real32_t *mat4fv = (real32_t*)va_arg(args, int64_t);
        GLCALL(glUniformMatrix4fv(uniform, 1, GL_FALSE, mat4fv));
    }
    
    va_end(args);
}
void shader_free(shader_t *program)
{
    if (program->u_locations != NULL)
    {
        free(program->u_locations);
    }
    program->u_location_ids = 0;
    free(program->shaders.vshader);
    free(program->shaders.fshader);
    GLCALL(glDeleteProgram(program->program_id))
}

//****************************************************************************************************************************************************************
//* Texture

uint32_t texture_2dgen(texture_t *texture, const string_t filepath, uint32_t slot)
{
    stbi_set_flip_vertically_on_load(1);
    if (!(texture->texture = stbi_load(filepath, &(texture->width), &(texture->height), (int32_t*)(&(texture->bpp)), 4)))       //* 4: r-g-b-a
    {
        LOG_FATAL(EXIT_FAILURE, "unable to load %s", filepath)
    }

    texture->type = GL_TEXTURE_2D;
    GLCALL(glActiveTexture(GL_TEXTURE0 + slot))
    GLCALL(glGenTextures(1, &(texture->texture_id)))
    GLCALL(glBindTexture(GL_TEXTURE_2D, texture->texture_id))

    GLCALL(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR))    //? GL_LINEAR, GL_NEAREST, GL_NEAREST_MIPMAP_NEAREST, GL_LINEAR_MIPMAP_NEAREST, GL_NEAREST_MIPMAP_LINEAR, GL_LINEAR_MIPMAP_LINEAR
    GLCALL(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST))   //? GL_LINEAR, GL_NEAREST
    GLCALL(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_BORDER))   //? GL_CLAMP_TO_BORDER, GL_CLAMP_TO_EDGE, GL_REPEAT, GL_MIRRORED_REPEAT;
    GLCALL(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_BORDER))   //? GL_CLAMP_TO_BORDER, GL_CLAMP_TO_EDGE, GL_REPEAT, GL_MIRRORED_REPEAT;

    // rgba32_t bordercolor = { 1.0f, 1.0f, 1.0f, 1.0f };
    // glTextureParameterfv(texture->type, GL_TEXTURE_BORDER_COLOR, (real32_t*)&bordercolor);

    GLCALL(glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, texture->width, texture->height, 0, GL_RGBA, GL_UNSIGNED_BYTE, texture->texture))

    return texture->texture_id;
}
void texture_bind(texture_t *texture, uint32_t slot)
{
    GLCALL(glActiveTexture(GL_TEXTURE0 + slot))
    GLCALL(glBindTexture(GL_TEXTURE_2D, texture->texture_id))
}
void texture_free(texture_t *texture)
{
    stbi_image_free(texture->texture);
    GLCALL(glDeleteTextures(1, &(texture->texture_id)))
}

//****************************************************************************************************************************************************************
//* Resource Manager

void resourcemanager_init(resourcemanager_t *resourcemanager)
{
    resourcemanager->vaos          = NULL;
    resourcemanager->vao_count     = 0;
    resourcemanager->vbos          = NULL;
    resourcemanager->vbo_count     = 0;
    resourcemanager->ebos          = NULL;
    resourcemanager->ebo_count     = 0;
    resourcemanager->programs      = NULL;
    resourcemanager->program_count = 0;
    resourcemanager->textures      = NULL;
    resourcemanager->texture_count = 0;
}
//**********************
uint32_t resourcemanager_addvao(resourcemanager_t *resourcemanager)
{
    if (resourcemanager->vao_count != 0)
    {
        resourcemanager->vao_count++;
        resourcemanager->vaos = (vao_t*)realloc(resourcemanager->vaos, resourcemanager->vao_count * sizeof(vao_t));
    }
    else
    {
        resourcemanager->vao_count = 1;
        resourcemanager->vaos = (vao_t*)malloc(sizeof(vao_t));
    }

    return vao_gen(&(resourcemanager->vaos[resourcemanager->vao_count - 1]));
}
uint32_t resourcemanager_addvbo(resourcemanager_t *resourcemanager, uint32_t vbosize, const void *data, uint32_t usage, uint32_t vbotype, int32_t vapsize, int32_t stride, bool_t normalized)
{
    if (resourcemanager->vbo_count != 0)
    {
        resourcemanager->vbo_count++;
        resourcemanager->vbos = (vbo_t*)realloc(resourcemanager->vbos, resourcemanager->vbo_count * sizeof(vbo_t));
    }
    else
    {
        resourcemanager->vbo_count = 1;
        resourcemanager->vbos = (vbo_t*)malloc(sizeof(vbo_t));
    }
    vbo_gen(&(resourcemanager->vbos[resourcemanager->vbo_count - 1]), vbosize, data, usage);
    resourcemanager->vbos[resourcemanager->vbo_count - 1].type = vbotype;
    resourcemanager->vbos[resourcemanager->vbo_count - 1].stride = stride;
    resourcemanager->vbos[resourcemanager->vbo_count - 1].normalized = normalized;
    resourcemanager_vertexatribpointer(resourcemanager, resourcemanager->vbo_count - 1, vapsize, 0);

    return resourcemanager->vbos[resourcemanager->vbo_count - 1].vbo_id;
}
void resourcemanager_vertexatribpointer(resourcemanager_t *resourcemanager, uint32_t vbo, int32_t size, const void *pointer)
{
    GLCALL(glEnableVertexAttribArray(resourcemanager->program_layouts))
    GLCALL(glVertexAttribPointer(resourcemanager->program_layouts++, size, resourcemanager->vbos[vbo].type, resourcemanager->vbos[vbo].normalized, resourcemanager->vbos[vbo].stride, pointer));
}
uint32_t resourcemanager_addebo(resourcemanager_t *resourcemanager, uint32_t size, const uint32_t *data, uint32_t usage)
{
    if (resourcemanager->ebo_count != 0)
    {
        resourcemanager->ebo_count++;
        resourcemanager->ebos = (ebo_t*)realloc(resourcemanager->ebos, resourcemanager->ebo_count * sizeof(ebo_t));
    }
    else
    {
        resourcemanager->ebo_count = 1;
        resourcemanager->ebos = (ebo_t*)malloc(sizeof(ebo_t));
    }

    return ebo_gen(&(resourcemanager->ebos[resourcemanager->ebo_count - 1]), size, data, usage);
}
uint32_t resourcemanager_addprogram(resourcemanager_t *resourcemanager, const string_t filepath)
{
    if (resourcemanager->program_count != 0)
    {
        resourcemanager->program_count++;
        resourcemanager->programs = (shader_t*)realloc(resourcemanager->programs, resourcemanager->program_count * sizeof(shader_t));
    }
    else
    {
        resourcemanager->program_count = 1;
        resourcemanager->programs = (shader_t*)malloc(sizeof(shader_t));
    }

    return shader_gen(&(resourcemanager->programs[resourcemanager->program_count - 1]), filepath);
}
uint32_t resourcemanager_add2dtexture(resourcemanager_t *resourcemanager, const string_t filepath, uint32_t slot)
{
    if (resourcemanager->texture_count != 0)
    {
        resourcemanager->texture_count++;
        resourcemanager->textures = (texture_t*)realloc(resourcemanager->textures, resourcemanager->texture_count * sizeof(texture_t));
    }
    else
    {
        resourcemanager->texture_count = 1;
        resourcemanager->textures = (texture_t*)malloc(sizeof(texture_t));
    }

    return texture_2dgen(&(resourcemanager->textures[resourcemanager->texture_count - 1]), filepath, slot);
}
//**********************
void resourcemanager_free(resourcemanager_t *resourcemanager)
{
    while (resourcemanager->vao_count--)
    {
        GLCALL(glDeleteVertexArrays(1, &(resourcemanager->vaos[resourcemanager->vao_count].vao_id)))
    }
    free(resourcemanager->vaos);
    resourcemanager->vaos = NULL;
    resourcemanager->vao_count = 0;

    while (resourcemanager->vbo_count--)
    {
        GLCALL(glDeleteBuffers(1, &(resourcemanager->vbos[resourcemanager->vbo_count].vbo_id)))
    }
    free(resourcemanager->vbos);
    resourcemanager->vbos = NULL;
    resourcemanager->vbo_count = 0;

    while (resourcemanager->ebo_count--)
    {
        GLCALL(glDeleteBuffers(1, &(resourcemanager->ebos[resourcemanager->ebo_count].ebo_id)))
    }
    free(resourcemanager->ebos);
    resourcemanager->ebos = NULL;
    resourcemanager->ebo_count = 0;

    while (resourcemanager->program_count--)
    {
        shader_free(&(resourcemanager->programs[resourcemanager->program_count]));
    }
    free(resourcemanager->programs);
    resourcemanager->programs = NULL;
    resourcemanager->program_count = 0;

    while (resourcemanager->texture_count--)
    {
        texture_free(&(resourcemanager->textures[resourcemanager->texture_count]));
    }
    free(resourcemanager->textures);
    resourcemanager->textures = NULL;
    resourcemanager->texture_count = 0;
}

//****************************************************************************************************************************************************************
//* Entity

// uint32_t resourcemanager_addobject(resourcemanager_t *resourcemanager, uint32_t vao, uint32_t vbo, uint32_t ebo)
// {
//     if (resourcemanager->object_ids != 0)
//     {
//         resourcemanager->object_ids++;
//         resourcemanager->objects = (object_t*)realloc(resourcemanager->objects, resourcemanager->object_ids * sizeof(object_t));
//     }
//     else
//     {
//         resourcemanager->object_ids = 1;
//         resourcemanager->objects = (object_t*)malloc(sizeof(object_t));
//     }
//     resourcemanager->objects[resourcemanager->object_ids - 1].vao_ids = dlist_init();
//     resourcemanager->objects[resourcemanager->object_ids - 1].vbo_ids = dlist_init();
//     resourcemanager->objects[resourcemanager->object_ids - 1].ebo_ids = dlist_init();
//     dlist_pushhead(resourcemanager->objects[resourcemanager->object_ids - 1].vao_ids, resourcemanager->vaos[vao].vao_id);
//     dlist_pushhead(resourcemanager->objects[resourcemanager->object_ids - 1].vbo_ids, resourcemanager->vbos[vbo].vbo_id);
//     dlist_pushhead(resourcemanager->objects[resourcemanager->object_ids - 1].ebo_ids, resourcemanager->ebos[ebo].ebo_id);
//     glm_mat4_identity(resourcemanager->objects[resourcemanager->object_ids - 1].model);
    
//     return resourcemanager->object_ids;
// }
// uint32_t resourcemanager_setobject2dcolor(resourcemanager_t *resourcemanager, uint32_t object, uint32_t program)
// {
//     resourcemanager->objects[object].objecttype = RENDERER_OBJECT_2DCOLOR;
//     resourcemanager->objects[object].material.program_count = dlist_init();
//     dlist_pushhead(resourcemanager->objects[object].material.program_count, program);
//     resourcemanager->objects[object].material.texture_count = NULL;
// }
// uint32_t resourcemanager_setobject2dtexture(resourcemanager_t *resourcemanager, uint32_t object, uint32_t program, uint32_t texture)
// {
//     resourcemanager->objects[object].objecttype = RENDERER_OBJECT_2DTEXTURE;
//     resourcemanager->objects[object].material.program_count = dlist_init();
//     dlist_pushhead(resourcemanager->objects[object].material.program_count, program);
//     resourcemanager->objects[object].material.texture_count = dlist_init();
//     dlist_pushhead(resourcemanager->objects[object].material.texture_count, texture);
// }
//!

//****************************************************************************************************************************************************************
//* Camera

#define _2DMVP(camera_prt) ((mvp2d_t*)((camera_prt)->transform))
static mat4_t* camera_init2dmvp(camera_t *camera)
{
    camera->transform = malloc(sizeof(mvp2d_t));

    glm_ortho(-camera->widthaspectratio, camera->widthaspectratio, -camera->heightaspectratio, camera->heightaspectratio, -1.0f, 1.0f, _2DMVP(camera)->projection);
    glm_mat4_identity(_2DMVP(camera)->view);
    glm_mat4_mul(_2DMVP(camera)->projection, _2DMVP(camera)->view, _2DMVP(camera)->mvp);

    return &(_2DMVP(camera)->mvp);
}
static mat4_t* camera_update2dmvp(camera_t *camera, mat4_t model, void (*updateparameters)())
{
    updateparameters(&(_2DMVP(camera)->zoom), _2DMVP(camera)->vdir, _2DMVP(camera)->mdir);
    camera->widthaspectratio += camera->widthaspectratio * (_2DMVP(camera)->zoom);
    camera->heightaspectratio += camera->heightaspectratio * (_2DMVP(camera)->zoom);
    glm_ortho(-camera->widthaspectratio, camera->widthaspectratio, -camera->heightaspectratio, camera->heightaspectratio, -1.0f, 1.0f, _2DMVP(camera)->projection);
    glm_translate(_2DMVP(camera)->view, _2DMVP(camera)->vdir);
    glm_translate(model, _2DMVP(camera)->mdir);
    glm_mat4_mul(_2DMVP(camera)->projection, _2DMVP(camera)->view, _2DMVP(camera)->mvp);
    glm_mat4_mul(_2DMVP(camera)->mvp, model, _2DMVP(camera)->mvp);

    return &(_2DMVP(camera)->mvp);
}
// static void camera_2dmvpdelete(camera_t *camera)
// {
//     //!
// }
//**********************
static mat4_t* (*transform_init[])()     = {&camera_init2dmvp};
static mat4_t* (*transform_update[])()   = {&camera_update2dmvp};
// static void    (*transform_free[])()   = {&camera_2dmvpdelete};
//**********************
mat4_t* camera_init(camera_t *camera, uint32_t camerawidth, uint32_t cameraheight, uint32_t cameratype)
{
    camera->widthaspectratio = (real32_t)camerawidth / (real32_t)cameraheight;
    camera->heightaspectratio = 1.0f;
    camera->cameratype = cameratype;

    return transform_init[camera->cameratype](camera);
}
mat4_t* camera_update(camera_t *camera, mat4_t model, void (*transform_updateparameters)())
{
    return transform_update[camera->cameratype](camera, model, transform_updateparameters);
}
//**********************
void camera_free(camera_t *camera)
{
    // transform_free[camera->cameratype](camera);
    free(camera->transform);
}

//****************************************************************************************************************************************************************
//* Renderer

static void error_callback(int32_t error, const char *description)
{
    fprintf(stderr, "Renderer Error[%d]: %s\n", error, description); //!
}
static void framebuffer_size_callback(window_t *window, int32_t windowWindth, int32_t windowHeight)
{
    glViewport(0, 0, windowWindth, windowHeight);
}
//**********************
void renderer_init(renderer_t *renderer, int32_t windowwidth, int32_t windowheight, uint32_t cameratype, const string_t title, int32_t vsync, int32_t screenmode, bool_t blend)
{
    GLCALL(if (!glfwInit())
    {)
        LOG_FATAL(EXIT_FAILURE, "unable to init glfw")//!
    }

    GLCALL(glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3))
    GLCALL(glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3))
    GLCALL(glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE))

    renderer->windowwidth   = (screenmode == RENDERER_DEFAULT) ? windowwidth  : FULL_WIDTH;
    renderer->windowheight  = (screenmode == RENDERER_DEFAULT) ? windowheight : FULL_HEIGHT;
    monitor_t *monitor      = (screenmode == RENDERER_SCREEN_FULL) ? glfwGetPrimaryMonitor() : NULL;
    GLCALL(renderer->window = glfwCreateWindow(renderer->windowwidth, renderer->windowheight, title, monitor, NULL))

    if (renderer->window == NULL)
    {
        GLCALL(glfwTerminate())
        LOG_FATAL(EXIT_FAILURE, "unable to create window")//!
    }

    GLCALL(glfwMakeContextCurrent(renderer->window))

    if (blend == true)
    {
        GLCALL(glEnable(GL_BLEND))
        GLCALL(glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA))
    }

    GLCALL(glfwSwapInterval(vsync))

    GLCALL(if (glewInit() != GLEW_OK)
    {)
        GLCALL(glfwTerminate())
        LOG_FATAL(EXIT_FAILURE, "unable to init glew")//!
    }


    IFDEBUG (
        GLCALL(printf("Status: Using GL %s\n", glGetString(GL_VERSION)))
        GLCALL(printf("Status: Using GLEW %s\n\n\n", glewGetString(GLEW_VERSION)))
    )

    resourcemanager_init(&(renderer->resourcemanager));
    //! guiengine_init, camerawidth,height - menuewidth,height
    camera_init(&(renderer->camera), windowwidth, windowheight, cameratype);
    if (cameratype == RENDERER_CAMERA_2DMVP)
    {
        renderer->cameratransform = camera_2dmvptransform(&(renderer->camera));
    }
    mtime_update(&(renderer->timer));
    renderer->time0     = renderer->timer.secs;
    renderer->dtime     = 0.0;
    renderer->vsync     = 60.0/((real64_t)vsync + (real64_t)(!vsync));
}
//**********************
// uint32_t resourcemanager_addobject(resourcemanager_t *resourcemanager, uint32_t vao, uint32_t vbo, uint32_t ebo)
// {
//     if (resourcemanager->object_ids != 0)
//     {
//         resourcemanager->object_ids++;
//         resourcemanager->objects = (object_t*)realloc(resourcemanager->objects, resourcemanager->object_ids * sizeof(object_t));
//     }
//     else
//     {
//         resourcemanager->object_ids = 1;
//         resourcemanager->objects = (object_t*)malloc(sizeof(object_t));
//     }
//     resourcemanager->objects[resourcemanager->object_ids - 1].vao_ids = dlist_init();
//     resourcemanager->objects[resourcemanager->object_ids - 1].vbo_ids = dlist_init();
//     resourcemanager->objects[resourcemanager->object_ids - 1].ebo_ids = dlist_init();
//     dlist_pushhead(resourcemanager->objects[resourcemanager->object_ids - 1].vao_ids, resourcemanager->vaos[vao].vao_id);
//     dlist_pushhead(resourcemanager->objects[resourcemanager->object_ids - 1].vbo_ids, resourcemanager->vbos[vbo].vbo_id);
//     dlist_pushhead(resourcemanager->objects[resourcemanager->object_ids - 1].ebo_ids, resourcemanager->ebos[ebo].ebo_id);
//     glm_mat4_identity(resourcemanager->objects[resourcemanager->object_ids - 1].model);
    
//     return resourcemanager->object_ids;
// }
// uint32_t resourcemanager_setobject2dcolor(resourcemanager_t *resourcemanager, uint32_t object, uint32_t program)
// {
//     resourcemanager->objects[object].objecttype = RENDERER_OBJECT_2DCOLOR;
//     resourcemanager->objects[object].material.program_count = dlist_init();
//     dlist_pushhead(resourcemanager->objects[object].material.program_count, program);
//     resourcemanager->objects[object].material.texture_count = NULL;
// }
// uint32_t resourcemanager_setobject2dtexture(resourcemanager_t *resourcemanager, uint32_t object, uint32_t program, uint32_t texture)
// {
//     resourcemanager->objects[object].objecttype = RENDERER_OBJECT_2DTEXTURE;
//     resourcemanager->objects[object].material.program_count = dlist_init();
//     dlist_pushhead(resourcemanager->objects[object].material.program_count, program);
//     resourcemanager->objects[object].material.texture_count = dlist_init();
//     dlist_pushhead(resourcemanager->objects[object].material.texture_count, texture);
// }
//**********************
void renderer_prepare(renderer_t *renderer, keyfun_t callback)
{
    vao_unbind();
    vbo_unbind();
    ebo_unbind();
    shader_unuse();
    texture_unbind();

    GLCALL(glfwSetErrorCallback(error_callback))
    GLCALL(glfwSetFramebufferSizeCallback(renderer->window, framebuffer_size_callback));
    GLCALL(glfwSetKeyCallback(renderer->window, callback));
}
void renderer_deltatime(renderer_t *renderer)
{
    IFDEBUG (
        static uint64_t fps_count = 0;
        static real64_t ltime = 0.0;
    )
    static mtime_t ctime;

    mtime_update(&ctime);
    ctime.secs -= renderer->time0;
    renderer->dtime = (mtime_delta(renderer->timer, ctime)) * renderer->vsync;
    IFDEBUG (
        fps_count++;
        if (ctime.secs - ltime >= 1.0)
        {
            printf("FPS: %lu\n", fps_count);
            fps_count = 0;
            ltime = ctime.secs;
        }
    )
    renderer->timer = ctime;
}
void renderer_clear(real32_t r, real32_t g, real32_t b, real32_t a)
{
    GLCALL(glClear(GL_COLOR_BUFFER_BIT));
    GLCALL(glClearColor(r, g, b, a));
}
void renderer_bind(renderer_t *renderer, uint32_t vao, uint32_t program)
{
    vao_bind(&(renderer->resourcemanager.vaos[vao]));
    shader_use(&(renderer->resourcemanager.programs[program]));
}
void renderer_bindtexture(renderer_t *renderer, uint32_t texture, uint32_t slot)
{
    GLCALL(glActiveTexture(GL_TEXTURE0 + slot));
    GLCALL(glBindTexture(GL_TEXTURE_2D, renderer->resourcemanager.textures[texture].texture_id));
}
//**********************
void renderer_unbind()
{
    vao_unbind();
    vbo_unbind();
    ebo_unbind();
    shader_unuse();
    texture_unbind();
}
void renderer_free(renderer_t *renderer)
{
    camera_free(&(renderer->camera));
    resourcemanager_free(&(renderer->resourcemanager));
    GLCALL(glfwDestroyWindow(renderer->window));
    GLCALL(glfwTerminate());
}
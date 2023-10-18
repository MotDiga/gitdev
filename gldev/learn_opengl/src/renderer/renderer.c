#include "renderer.h"


//********************************************************************************************************************************************************************************
//* Shader

//? + static void shader_sized_parse(const string_t filepath, shadersources_t *sources, size_t shader_file_size)
static void shader_parse(const string_t filepath, shadersources_t *sources)
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
static uint32_t shader_compile(uint32_t type, const string_t *source)
{
    uint32_t shader = glCreateShader(type);
    glShaderSource(shader, 1, source, NULL);
    glCompileShader(shader);

    int32_t compilestatus;
    glGetShaderiv(shader, GL_COMPILE_STATUS, &compilestatus);
    if (compilestatus != GL_TRUE)
    {
        int32_t loglength = 0;
        char message[4096];
        glGetShaderInfoLog(shader, 4096, &loglength, message);
        glDeleteShader(shader);
        LOG_FATAL(EXIT_FAILURE, "In %s:\n%s", (type == GL_VERTEX_SHADER) ? "vertex shader" : ((type == GL_FRAGMENT_SHADER) ? "fragment shader" : "NULL"), message)
    }

    return shader;
}
static uint32_t shader_createprogram(shadersources_t *sources)
{
    uint32_t program = glCreateProgram();
    uint32_t vshader = shader_compile(GL_VERTEX_SHADER, &(sources->vshader));
    uint32_t fshader = shader_compile(GL_FRAGMENT_SHADER, &(sources->fshader));

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
        glDeleteProgram(program);
        LOG_FATAL(EXIT_FAILURE, "\n%s", message)
    }

    glValidateProgram(program);

    int32_t validatestatus;
    glGetProgramiv(program, GL_LINK_STATUS, &validatestatus);
    if (validatestatus != GL_TRUE)
    {
        int32_t loglength = 0;
        char message[4096];
        glGetProgramInfoLog(program, 4096, &loglength, message);
        glDeleteProgram(program);
        LOG_FATAL(EXIT_FAILURE, "\n%s", message)
    }

    glDeleteShader(vshader);
    glDeleteShader(fshader);

    return program;
}
//********************************************

uint32_t shader_gen(shader_t *shader, const string_t filepath)
{
    shader_parse(filepath, &(shader->sources));
    shader->shader_id = shader_createprogram(&(shader->sources));
    glUseProgram(shader->shader_id);

    return shader->shader_id;
}
void shader_free(shader_t *shader)
{
    free(shader->sources.vshader);
    free(shader->sources.fshader);
    glDeleteProgram(shader->shader_id);
}

//****************************************************************************************************************************************************************
//* Texture

uint32_t texture_2dgen(texture_t *texture, const string_t filepath, uint32_t unit, uint32_t minfp, uint32_t magfp, uint32_t wsp, uint32_t wtp)
{
    texture->type = GL_TEXTURE_2D;
    glActiveTexture(GL_TEXTURE0 + unit);
    glGenTextures(1, &(texture->texture_id));
    glBindTexture(GL_TEXTURE_2D, texture->texture_id);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, minfp); //? GL_LINEAR, GL_NEAREST, GL_NEAREST_MIPMAP_NEAREST, GL_LINEAR_MIPMAP_NEAREST, GL_NEAREST_MIPMAP_LINEAR, GL_LINEAR_MIPMAP_LINEAR
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, magfp); //? GL_LINEAR, GL_NEAREST
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, wsp);       //? GL_CLAMP_TO_BORDER, GL_CLAMP_TO_EDGE, GL_REPEAT, GL_MIRRORED_REPEAT;
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, wtp);       //? GL_CLAMP_TO_BORDER, GL_CLAMP_TO_EDGE, GL_REPEAT, GL_MIRRORED_REPEAT;

    // rgba32_t bordercolor = { 1.0f, 1.0f, 1.0f, 1.0f };
    // glTextureParameterfv(texture->type, GL_TEXTURE_BORDER_COLOR, (real32_t*)&bordercolor);

    stbi_set_flip_vertically_on_load(true);
    if (!(texture->texture = stbi_load(filepath, &(texture->width), &(texture->height), (int32_t*)(&(texture->bpp)), 4)))       //* 4: r-g-b-a
    {
        LOG_FATAL(EXIT_FAILURE, "unable to load %s", filepath)
    }

    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, texture->width, texture->height, 0, GL_RGBA, GL_UNSIGNED_BYTE, texture->texture);
    // glGenerateMipmap(GL_TEXTURE_2D);

    return texture->texture_id;
}
void texture_bind(texture_t *texture, uint32_t unit)
{
    glActiveTexture(GL_TEXTURE0 + unit);
    glBindTexture(GL_TEXTURE_2D, texture->texture_id);
}
void texture_free(texture_t *texture)
{
    stbi_image_free(texture->texture);
    glDeleteTextures(1, &(texture->texture_id));
}

//********************************************************************************************************************************************************************************
//* Renderer

void renderer_timer(renderer_t *renderer)
{
    static real64_t ltime = 0.0;
    static real64_t lframetime = 0.0;
    static real64_t ctime = 0.0;

    ltime = ctime;
    ctime = glfwGetTime();
    renderer->dtime = ctime - ltime;
    if (renderer->dtime > 0.03f)
    {
        renderer->dtime = 0.03f;
    }

    IFDEBUG (
    static uint16_t fpscount = 0;
        fpscount++;
        if (ctime - lframetime >= 1.0)
        {
            printf("Fps: %hu\n", fpscount);
            lframetime = ctime;
            fpscount = 0;
        }
    )
}
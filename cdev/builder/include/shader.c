#include "shader.h"

void gprogram_parseshader(gprogram_t *gprogram, const string_t shaderfilepath)
{
    gprogram->vshader = (string_t)malloc(4096 * sizeof(char_t));
    gprogram->vshader[0] = '\0';
    gprogram->fshader = (string_t)malloc(4096 * sizeof(char_t));
    gprogram->fshader[0] = '\0';

    FILE *shaderfile = fopen(shaderfilepath, "r");
    if (shaderfile == NULL)
    {
        log_fatal_plus(EXIT_FAILURE, "unable to open %s", shaderfilepath)
    }

    shadertype_t shadertype = NONE;
    uint32_t vmax = 4070, fmax = 4070;
    char_t buffer[128];

    while (fgets(buffer, 128, shaderfile) != NULL)
    {
        if (strlen(gprogram->vshader) > (vmax - 128))
        {
            vmax += 1024;
            gprogram->vshader = (string_t)realloc(gprogram->vshader, vmax + 26);
        }
        if (strlen(gprogram->fshader) > (fmax - 128))
        {
            fmax += 1024;
            gprogram->fshader = (string_t)realloc(gprogram->fshader, fmax + 26);
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
            straddstr(gprogram->vshader, vmax + 25, buffer);
        }
        else if (shadertype == FRAGMENT)
        {
            straddstr(gprogram->fshader, fmax + 25, buffer);
        }
    }
    fclose(shaderfile);

    IFDEBUG (
        printf("###############################################################################\n");
        printf("#Vertex Shader:\n%s\n#Fragment Shader:\n%s\n", gprogram->vshader, gprogram->fshader);
        printf("###############################################################################\n");
    )
}
uint32_t gprogram_compileshader(const uint32_t type, const shader_t *shader)
{
    uint32_t shader_id = glCreateShader(type);
    glShaderSource(shader_id, 1, shader, NULL);
    glCompileShader(shader_id);

    int32_t compileStatus;
    glGetShaderiv(shader_id, GL_COMPILE_STATUS, &compileStatus);
    if (compileStatus != GL_TRUE)
    {
        int32_t loglength = 0;
        char_t message[1024];
        glGetShaderInfoLog(shader_id, 1024, &loglength, message);
        glDeleteShader(shader_id);
        log_fatal_plus(EXIT_FAILURE, "In %s:\n%s", (type == GL_VERTEX_SHADER) ? "vertex shader" : ((type == GL_FRAGMENT_SHADER) ? "fragment shader" : "NULL"), message)
    }

    return shader_id;
}
uint32_t gprogram_create(gprogram_t *gprogram)
{
    uint32_t program_id = glCreateProgram();
    uint32_t vshader = gprogram_compileshader(GL_VERTEX_SHADER, &(gprogram->vshader));
    uint32_t fshader = gprogram_compileshader(GL_FRAGMENT_SHADER, &(gprogram->fshader));

    glAttachShader(program_id, vshader);
    glAttachShader(program_id, fshader);
    glLinkProgram(program_id);

    int32_t linkstatus;
    glGetProgramiv(program_id, GL_LINK_STATUS, &linkstatus);
    if (linkstatus != GL_TRUE)
    {
        int32_t loglength = 0;
        char_t message[4096];
        glGetProgramInfoLog(program_id, 4096, &loglength, message);
        log_fatal_plus(EXIT_FAILURE, "\n%s", message)
        glDeleteProgram(program_id);
    }

    glValidateProgram(program_id);

    int32_t validatestatus;
    glGetProgramiv(program_id, GL_LINK_STATUS, &validatestatus);
    if (validatestatus != GL_TRUE)
    {
        int32_t loglength = 0;
        char_t message[4096];
        glGetProgramInfoLog(program_id, 4096, &loglength, message);
        log_fatal_plus(EXIT_FAILURE, "\n%s", message)
        glDeleteProgram(program_id);
    }

    glDeleteShader(vshader);
    glDeleteShader(fshader);

    return program_id;
}
//*
uint32_t gprogram_gen(gprogram_t *gprogram, const string_t shaderfilepath)
{
    gprogram_parseshader(gprogram, shaderfilepath);
    gprogram->program_id = gprogram_create(gprogram);
    glUseProgram(gprogram->program_id);

    return gprogram->program_id;
}
void gprogram_free(gprogram_t *gprogram_t)
{
    free(gprogram_t->vshader);
    free(gprogram_t->fshader);
    glDeleteProgram(gprogram_t->program_id);
}
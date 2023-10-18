#ifndef   SANDBOX_H_INCLUDED
#define   SANDBOX_H_INCLUDED

#include <sandbox0/sandboxresources.h>

//********************************************
static void parseshader(const string_t filepath, shadersources_t *sources);
static uint32_t compileshader(uint32_t type, const string_t *source);
static uint32_t createprogram(shadersources_t *sources);

static void framebuffer_size_callback(window_t *window, int32_t windowwindth, int32_t windowheight);
static void key_callback(window_t *window, int32_t key, int32_t scancode, int32_t action, int32_t mods);
static void error_callback(int32_t error, const char *description);
// void static processInput(GLFWwindow *window);
static void logfps();

//********************************************
static uint32_t geometry = 0, geometrycounts = 0;
static bool_t geometrylock = false;
static uint32_t polygonemode = GL_FILL;

//********************************************
int32_t sandbox(int32_t argc, string_t argv[])
{
    //* Init Pipeline

    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    //? glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    monitor_t *monitor = NULL; // glfwGetPrimaryMonitor();
    // uint32_t windowwindth, windowheight;
    window_t *window   = glfwCreateWindow(960, 540, "LearnOpenGL", monitor, NULL);
    if (window == NULL)
    {
        glfwTerminate();
        LOG_FATAL(EXIT_FAILURE, "unable to init glfw")
    }
    glfwMakeContextCurrent(window);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glfwSwapInterval(0);

    if (glewInit() != GLEW_OK)
    {
        glfwTerminate();
        LOG_FATAL(EXIT_FAILURE, "unable to init glew")
    }
    // if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    // {
    //     LOG_FATAL(EXIT_FAILURE, "Failed to initialize GLAD")
    // }
    IFDEBUG (
        printf("Status: Using GL %s\n", glGetString(GL_VERSION));
        printf("Status: Using GLEW %s\n\n", glewGetString(GLEW_VERSION));
    )

    //* Vertex Inputs

    uint32_t triangle_vao;
    glGenVertexArrays(1, &triangle_vao);
    glBindVertexArray(triangle_vao);
    uint32_t triangle_vbo;
    glGenBuffers(1, &triangle_vbo);
    glBindBuffer(GL_ARRAY_BUFFER, triangle_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(triangle), (real32_t*)triangle, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 7 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, 7 * sizeof(real32_t), (void*)(3 * sizeof(real32_t)));
    glEnableVertexAttribArray(1);
    uint32_t triangle_ebo;
    glGenBuffers(1, &triangle_ebo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, triangle_ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(triangleindeces), (uint32_t*)triangleindeces, GL_STATIC_DRAW);
    geometrycounts++;

    uint32_t square_vao;
    glGenVertexArrays(1, &square_vao);
    glBindVertexArray(square_vao);
    uint32_t square_vbo;
    glGenBuffers(1, &square_vbo);
    glBindBuffer(GL_ARRAY_BUFFER, square_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(square), (real32_t*)square, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 7 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, 7 * sizeof(real32_t), (void*)(3 * sizeof(real32_t)));
    glEnableVertexAttribArray(1);
    uint32_t square_ebo;
    glGenBuffers(1, &square_ebo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, square_ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(squareindeces), (uint32_t*)squareindeces, GL_STATIC_DRAW);
    geometrycounts++;

    uint32_t hexagone_vao;
    glGenVertexArrays(1, &hexagone_vao);
    glBindVertexArray(hexagone_vao);
    uint32_t hexagone_vbo;
    glGenBuffers(1, &hexagone_vbo);
    glBindBuffer(GL_ARRAY_BUFFER, hexagone_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(hexagone), (real32_t*)hexagone, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 7 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, 7 * sizeof(real32_t), (void*)(3 * sizeof(real32_t)));
    glEnableVertexAttribArray(1);
    uint32_t hexagone_ebo;
    glGenBuffers(1, &hexagone_ebo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, hexagone_ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(hexagoneindeces), (uint32_t*)hexagoneindeces, GL_STATIC_DRAW);
    geometrycounts++;

    uint32_t octagone_vao;
    glGenVertexArrays(1, &octagone_vao);
    glBindVertexArray(octagone_vao);
    uint32_t octagone_vbo;
    glGenBuffers(1, &octagone_vbo);
    glBindBuffer(GL_ARRAY_BUFFER, octagone_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(octagone), (real32_t*)octagone, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 7 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, 7 * sizeof(real32_t), (void*)(3 * sizeof(real32_t)));
    glEnableVertexAttribArray(1);
    uint32_t octagone_ebo;
    glGenBuffers(1, &octagone_ebo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, octagone_ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(octagoneindeces), (uint32_t*)octagoneindeces, GL_STATIC_DRAW);
    geometrycounts++;

    uint32_t decagone_vao;
    glGenVertexArrays(1, &decagone_vao);
    glBindVertexArray(decagone_vao);
    uint32_t decagone_vbo;
    glGenBuffers(1, &decagone_vbo);
    glBindBuffer(GL_ARRAY_BUFFER, decagone_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(decagone), (real32_t*)decagone, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 7 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, 7 * sizeof(real32_t), (void*)(3 * sizeof(real32_t)));
    glEnableVertexAttribArray(1);
    uint32_t decagone_ebo;
    glGenBuffers(1, &decagone_ebo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, decagone_ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(decagoneindeces), (uint32_t*)decagoneindeces, GL_STATIC_DRAW);
    geometrycounts++;

    uint32_t monodecagone_vao;
    glGenVertexArrays(1, &monodecagone_vao);
    glBindVertexArray(monodecagone_vao);
    uint32_t monodecagone_vbo;
    glGenBuffers(1, &monodecagone_vbo);
    glBindBuffer(GL_ARRAY_BUFFER, monodecagone_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(monodecagone), (real32_t*)monodecagone, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 7 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, 7 * sizeof(real32_t), (void*)(3 * sizeof(real32_t)));
    glEnableVertexAttribArray(1);
    uint32_t monodecagone_ebo;
    glGenBuffers(1, &monodecagone_ebo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, monodecagone_ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(monodecagoneindeces), (uint32_t*)monodecagoneindeces, GL_STATIC_DRAW);
    geometrycounts++;

    shadersources_t color_shadersources;
    parseshader("src/sandbox0/shaders/color.shader", &color_shadersources);
    uint32_t color_program = createprogram(&color_shadersources);
    glUseProgram(color_program);
    free(color_shadersources.vshader);
    free(color_shadersources.fshader);

    // shadersources_t circle_shadersources;
    // parseshader("src/sandbox0/shaders/circle.shader", &circle_shadersources);
    // uint32_t circle_program = createprogram(&circle_shadersources);
    // glUseProgram(circle_program);
    // free(circle_shadersources.vshader);
    // free(circle_shadersources.fshader);

    //* Rendering loop

    glBindVertexArray(0);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
    // glUseProgram(0);

    glfwSetErrorCallback(error_callback);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    glfwSetKeyCallback(window, key_callback);

    uint32_t geometryindecescount = 0;
    while (!glfwWindowShouldClose(window))
    {
        IFDEBUG (
            logfps();
        )

        glClear(GL_COLOR_BUFFER_BIT);
        glClearColor(0.0f, 0.1f, 0.15f, 1.0f);

        if (geometry == 0 && !geometrylock)
        {
            glBindVertexArray(triangle_vao);
            geometryindecescount = 3;
            geometrylock = true;
        }
        else if (geometry == 1 && !geometrylock)
        {
            glBindVertexArray(square_vao);
            geometryindecescount = 3 * 2;
            geometrylock = true;
        }
        else if (geometry == 2 && !geometrylock)
        {
            glBindVertexArray(hexagone_vao);
            geometryindecescount = 3 * 4;
            geometrylock = true;
        }
        else if (geometry == 3 && !geometrylock)
        {
            glBindVertexArray(octagone_vao);
            geometryindecescount = 3 * 6;
            geometrylock = true;
        }
        else if (geometry == 4 && !geometrylock)
        {
            glBindVertexArray(decagone_vao);
            geometryindecescount = 3 * 8;
            geometrylock = true;
        }
        else if (geometry == 5 && !geometrylock)
        {
            glBindVertexArray(monodecagone_vao);
            geometryindecescount = 3 * 10;
            geometrylock = true;
        }
        glDrawElements(GL_TRIANGLES, geometryindecescount, GL_UNSIGNED_INT, NULL);

        glfwSwapBuffers(window);
        
        glfwWaitEvents();
    }
    IFDEBUG (
        printf("\nApplication run time: %lf\n", glfwGetTime());
        // int32_t nAttributes;
        // glGetIntegerv(GL_MAX_VERTEX_ATTRIBS, &nAttributes);
        // printf("Maximum nr of vertex attributes supported: %lu\n", nAttributes);
    )
    glfwTerminate();

    return 0;
}

//********************************************************************************************************************************************************************************
//* Static Function

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
//********************************************
static void framebuffer_size_callback(window_t *window, int32_t windowwindth, int32_t windowheight)
{
    glViewport(0, 0, windowwindth, windowheight);
}
static void key_callback(window_t *window, int32_t key, int32_t scancode, int32_t action, int32_t mods)
{
    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
    {
        glfwSetWindowShouldClose(window, GLFW_TRUE);
    }
    if (key == GLFW_KEY_F1 && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        printf("Current timer: %lf\n", glfwGetTime());
    }
    if (key == GLFW_KEY_RIGHT && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        geometry = (geometry + 1) % geometrycounts;
        geometrylock = false;
    }
    if (key == GLFW_KEY_LEFT && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        geometry = ((geometry+geometrycounts) - 1) % geometrycounts;
        geometrylock = false;
    }
    if (key == GLFW_KEY_F2 && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        if (polygonemode == GL_LINE)
        {
            glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
            polygonemode = GL_FILL;
        }
        else if (polygonemode == GL_FILL)
        {
            glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
            polygonemode = GL_LINE;
        }
    }
}
static void error_callback(int32_t error, const char *description)
{
    fprintf(stderr, "OpenGL Error[%d]: %s\n", error, description);
}
// static void processInput(GLFWwindow *window)
// {
//     if (glfwGetKey(window, GLFW_KEY_END) == GLFW_PRESS)
//     {
//         glfwSetWindowShouldClose(window, GLFW_TRUE);
//     }
// }
static void logfps()
{
    static real64_t ltime = 0.0;
    static uint16_t fpscount = 0;

    fpscount++;
    real64_t ctime = glfwGetTime();

    if (ctime - ltime >= 1.0)
    {
        printf("Fps: %hu\n", fpscount);
        ltime = ctime;
        fpscount = 0;
    }
}

#endif // SANDBOX_H_INCLUDED
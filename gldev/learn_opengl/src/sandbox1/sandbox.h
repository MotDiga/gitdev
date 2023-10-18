#ifndef   SANDBOX_H_INCLUDED
#define   SANDBOX_H_INCLUDED

#include <sandbox1/sandboxresources.h>
#include <renderer/renderer.h>

//********************************************

static void error_callback(int32_t error, const char *description);
static void framebuffer_size_callback(window_t *window, int32_t windowwindth, int32_t windowheight);
static void key_callback(window_t *window, int32_t key, int32_t scancode, int32_t action, int32_t mods);

//********************************************
static uint32_t geometry = 0, geometrycounts = 0;
static bool_t geometrylock = false;
static uint32_t polygonemode = GL_FILL;
static bool_t u_movx[2] = { false }, u_movy[2] = { false };
enum {_RIGHT, _LEFT};
enum {_UP,    _DOWN};


//********************************************************************************************************************************************************************************
//* Sandbox

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
    glfwSwapInterval(FPS_60);

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
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
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
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    uint32_t square_ebo;
    glGenBuffers(1, &square_ebo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, square_ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(squareindeces), (uint32_t*)squareindeces, GL_STATIC_DRAW);
    geometrycounts++;

    uint32_t octagone_vao;
    glGenVertexArrays(1, &octagone_vao);
    glBindVertexArray(octagone_vao);
    uint32_t octagone_vbo;
    glGenBuffers(1, &octagone_vbo);
    glBindBuffer(GL_ARRAY_BUFFER, octagone_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(octagone), (real32_t*)octagone, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    uint32_t octagone_ebo;
    glGenBuffers(1, &octagone_ebo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, octagone_ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(octagoneindeces), (uint32_t*)octagoneindeces, GL_STATIC_DRAW);
    geometrycounts++;

    uint32_t circle_vao;
    glGenVertexArrays(1, &circle_vao);
    glBindVertexArray(circle_vao);
    uint32_t circle_vbo;
    glGenBuffers(1, &circle_vbo);
    glBindBuffer(GL_ARRAY_BUFFER, circle_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(circle), (real32_t*)circle, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    uint32_t circle_ebo;
    glGenBuffers(1, &circle_ebo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, circle_ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(circleindeces), (uint32_t*)circleindeces, GL_STATIC_DRAW);
    geometrycounts++;

    shader_t color_shader;
    shader_gen(&color_shader, "src/sandbox1/shaders/color.shader");
    int32_t u_Transtate_location = shader_uniformlocation(&color_shader, "u_Translate");
    int32_t u_Color_location     = shader_uniformlocation(&color_shader, "u_Color");

    //* Rendering loop

    glBindVertexArray(0);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
    // shader_unuse();

    glfwSetErrorCallback(error_callback);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    glfwSetKeyCallback(window, key_callback);

    uint32_t geometryindecescount = 0;
    real32_t movx = 0.0f, movy = 0.0f;
    while (!glfwWindowShouldClose(window))
    {
        IFDEBUG (
            renderer_logfps();
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
            glBindVertexArray(octagone_vao);
            geometryindecescount = 3 * 6;
            geometrylock = true;
        }
        else if (geometry == 3 && !geometrylock)
        {
            glBindVertexArray(circle_vao);
            geometryindecescount = 3 * 46;
            geometrylock = true;
        }
        //!
        real32_t ctime = glfwGetTime();
#define M_2PIover3  M_PI*(2.0f/3.0f)
#define M_4PIover3  M_PI*(4.0f/3.0f)
        real32_t u_r = sin(ctime*0.75f);
        real32_t u_g = sin(ctime*0.75f + M_2PIover3);
        real32_t u_b = sin(ctime*0.75f + M_4PIover3);
        shader_updateuniform(u_Color_location, 3f, u_r, u_g, u_b);
        movx += (u_movx[_RIGHT] - u_movx[_LEFT]) * 0.0125f;
        movy += (u_movy[_UP]    - u_movy[_DOWN]) * 0.0215f;
        shader_updateuniform(u_Transtate_location, 2f, movx, movy);
        //!
        glDrawElements(GL_TRIANGLES, geometryindecescount, GL_UNSIGNED_INT, NULL);

        glfwSwapBuffers(window);
        
        glfwPollEvents();
    }
    IFDEBUG (
        printf("\nApplication run time: %lf\n", glfwGetTime());
        // int32_t nAttributes;
        // glGetIntegerv(GL_MAX_VERTEX_ATTRIBS, &nAttributes);
        // printf("Maximum nr of vertex attributes supported: %lu\n", nAttributes);
        // glGetIntegerv(GL_MAX_TEXTURE_IMAGE_UNITS, &nAttributes);
        // printf("Maximum nr of texture image units supported: %lu\n", nAttributes);
    )
    shader_free(&color_shader);
    glfwTerminate();

    return 0;
}

//********************************************************************************************************************************************************************************
//* Static Functions

static void error_callback(int32_t error, const char *description)
{
    fprintf(stderr, "OpenGL Error[%d]: %s\n", error, description);
}
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
    if (key == GLFW_KEY_W && action == GLFW_PRESS)
    {
        u_movy[_UP] = true;
    }
    if (key == GLFW_KEY_W && action == GLFW_RELEASE)
    {
        u_movy[_UP] = false;
    }
    if (key == GLFW_KEY_S && action == GLFW_PRESS)
    {
        u_movy[_DOWN] = true;
    }
    if (key == GLFW_KEY_S && action == GLFW_RELEASE)
    {
        u_movy[_DOWN] = false;
    }
    if (key == GLFW_KEY_D && action == GLFW_PRESS)
    {
        u_movx[_RIGHT] = true;
    }
    if (key == GLFW_KEY_D && action == GLFW_RELEASE)
    {
        u_movx[_RIGHT] = false;
    }
    if (key == GLFW_KEY_A && action == GLFW_PRESS)
    {
        u_movx[_LEFT] = true;
    }
    if (key == GLFW_KEY_A && action == GLFW_RELEASE)
    {
        u_movx[_LEFT] = false;
    }
}

#endif // SANDBOX_H_INCLUDED
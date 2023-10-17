#include "tests.h"


void shader_test()
{
    log_colorgreen("\nStarting Shader Test:\n\n");

    if (glfwInit() == 0)
    {
        log_fatal_plus(EXIT_FAILURE, "unable to init glfw");
    }
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    window_t *window = glfwCreateWindow(960, 540, "Window", NULL, NULL);
    if (window == NULL)
    {
        glfwTerminate();
        log_fatal_plus(EXIT_FAILURE, "unable to init glfw")
    }
    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);
    if (glewInit() != GLEW_OK)
    {
        glfwTerminate();
        log_fatal_plus(EXIT_FAILURE, "unable to init glew")
    }

    IFDEBUG (
        log_colorwhite("Status: Using GL %s\n", glGetString(GL_VERSION));
        log_colorwhite("Status: Using GLEW %s\n\n", glewGetString(GLEW_VERSION));
    )

    //* Vertex Inputs

    const real32_t triangle[9] = {
        -0.5f, -0.5f, 0.0f,
         0.0f,  0.5f, 0.0f,
         0.5f, -0.5f, 0.0f
    };
    const uint32_t triangleindeces[3] = { 0, 1, 2 };

    uint32_t vao;
    glGenVertexArrays(1, &vao);
    glBindVertexArray(vao);
    uint32_t triangle_vbo;
    glGenBuffers(1, &triangle_vbo);
    glBindBuffer(GL_ARRAY_BUFFER, triangle_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(triangle), triangle, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    uint32_t triangle_ebo;
    glGenBuffers(1, &triangle_ebo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, triangle_ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(triangleindeces), triangleindeces, GL_STATIC_DRAW);

    gprogram_t color_program;
    gprogram_gen(&color_program, "src/color.glsl");
    int32_t u_color = gprogram_uniformlocation(&color_program, "u_color");
    rgb_t u_rgb;
    #define M_2PI_3 3.14159265f*(2.0f/3.0f)
    #define M_4PI_3 3.14159265f*(4.0f/3.0f)

    //* Rendering loop

    while (!glfwWindowShouldClose(window))
    {
        glClear(GL_COLOR_BUFFER_BIT);
        glClearColor(0.0f, 0.1f, 0.15f, 1.0f);

        real32_t ctime = glfwGetTime();
        u_rgb.r = sin(ctime*0.75f);
        u_rgb.g = sin(ctime*0.75f + M_2PI_3);
        u_rgb.b = sin(ctime*0.75f + M_4PI_3);
        gprogram_updateuniform(u_color, 3f, u_rgb.r, u_rgb.g, u_rgb.b);

        glDrawElements(GL_TRIANGLES, 3, GL_UNSIGNED_INT, NULL);

        glfwSwapBuffers(window);
        
        glfwPollEvents();
    }
    gprogram_free(&color_program);
    glfwTerminate();
}
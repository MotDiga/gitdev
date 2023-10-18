#ifndef   TESTS_H_INCLUDED
#define   TESTS_H_INCLUDED

#include <stdmoh.h>
#include <stderr.h>
#include "shader.h"
#include "stdlog.h"

#define INITWIDTH   640.0
#define INITHEIGHT  640.0
#define INITXPOS    INITWIDTH/2.0
#define INITYPOS    INITHEIGHT/2.0

#define FPS_MAX 0
#define FPS_60  1
#define FPS_30  2

static void error_callback(int32_t error, const char *description);
static void framebuffersize_callback(window_t *window, int32_t windowwindth, int32_t windowheight);
static void key_callback(window_t *window, int32_t key, int32_t scancode, int32_t action, int32_t mods);
static void scroll_callback(window_t *window, real64_t xoffset, real64_t yoffset);
static void cursor_callback(window_t *window, real64_t xpos, real64_t ypos);
static void mousebutton_callback(window_t *window, int32_t button, int32_t action, int32_t mods);

real32_t offset_x = 0.0;
real32_t scale_x = 1.0;
int32_t mode = 0;

typedef struct point_t
{
    real32_t x;
    real32_t y;
} point_t;


int32_t sandbox(int32_t argc, string_t argv[])
{
    if (!glfwInit())
    {
        log_fatal_plus(EXIT_FAILURE, "Unable to init glfw");
    }
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    monitor_t *monitor = NULL; //glfwGetPrimaryMonitor();
    window_t *window   = glfwCreateWindow(INITWIDTH, INITHEIGHT, "Scientific Graph", monitor, NULL);
    if (window == NULL)
    {
        glfwTerminate();
        log_fatal_plus(EXIT_FAILURE, "Unable to init glfw")
    }
    glfwMakeContextCurrent(window);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glEnable(GL_DEPTH_TEST);
    glfwSwapInterval(FPS_MAX);

    if (glewInit() != GLEW_OK)
    {
        glfwTerminate();
        log_fatal_plus(EXIT_FAILURE, "Unable to init glew")
    }
    IFDEBUG (
        log_colorgreen("Status: Using GL %s\n", glGetString(GL_VERSION));
        log_colorgreen("Status: Using GLEW %s\n\n", glewGetString(GLEW_VERSION));
    )

    //!

    gprogram_t gprogram;
    gprogram_gen(&gprogram, "src/shaders/graph.glsl");

    int32_t attribute_coord2d;
    int32_t uniform_offset_x;
    int32_t uniform_scale_x;
    int32_t uniform_sprite;
    uint32_t texture_id;

    attribute_coord2d = gprogram_attriblocation(&gprogram, "coord2d");
    uniform_offset_x =  gprogram_uniformlocation(&gprogram, "offset_x");
    uniform_scale_x =   gprogram_uniformlocation(&gprogram, "scale_x");
    uniform_sprite =    gprogram_uniformlocation(&gprogram, "sprite");

    uint32_t vbo;
    glGenBuffers(1UL, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);

    #define POINTSNUM   1000000
    #define PRECISION   1000.0
    point_t graph[POINTSNUM];

    for (int32_t i = 0; i < POINTSNUM; i++)
    {
        real32_t x = (i - POINTSNUM/2.0) / PRECISION;
    
        graph[i].x = x/4.0;
        graph[i].y = (acos(x))/(4.0);
    }

    glBufferData(GL_ARRAY_BUFFER, sizeof(graph), graph, GL_STATIC_DRAW);

    //!

    glfwSetErrorCallback(error_callback);
    glfwSetFramebufferSizeCallback(window, framebuffersize_callback);
    glfwSetKeyCallback(window, key_callback);
    glfwSetScrollCallback(window, scroll_callback);
    glfwSetCursorPos(window, INITXPOS, INITYPOS);
    glfwSetCursorPosCallback(window, cursor_callback);
    glfwSetMouseButtonCallback(window, mousebutton_callback);

    log_trace("Use left/right to move horizontally.\n");
    log_trace("Use up/down to change the horizontal scale.\n");
    log_trace("Press home to reset the position and scale.\n");
    log_trace("Press F1 to draw lines.\n");
    log_trace("Press F2 to draw points.\n");

     while (!glfwWindowShouldClose(window))
    {
        glClearColor(0.0, 0.0, 0.0, 0.0);
        glClear(GL_COLOR_BUFFER_BIT);
        
        //!

        gprogram_use(&gprogram);

        gprogram_updateuniform(uniform_offset_x, 1f, offset_x);
        gprogram_updateuniform(uniform_scale_x, 1f, scale_x);

        glBindBuffer(GL_ARRAY_BUFFER, vbo);

        glEnableVertexAttribArray(attribute_coord2d);
        glVertexAttribPointer(attribute_coord2d, 2, GL_FLOAT, GL_FALSE, 0UL, NULL);

        switch (mode)
        {
        case 0:
            gprogram_updateuniform(uniform_sprite, 1f, 0);
            glDrawArrays(GL_LINE_STRIP, 0, POINTSNUM);
            break;
        case 1:
            gprogram_updateuniform(uniform_sprite, 1f, 1);
            glDrawArrays(GL_POINTS, 0, POINTSNUM);
            break;
        }

        //!

        glfwSwapBuffers(window);
        
        glfwWaitEvents();
    }

    IFDEBUG (
        log_colorgreen("\nApplication run time: %lf\n", glfwGetTime());
    )
    gprogram_free(&gprogram);
    glfwTerminate();

    return 0;
}
//********************************************************************************************************************************************************************************
//* Static Functions

static void error_callback(int32_t error, const char_t *description)
{
    fprintf(stderr, "OpenGL Error[%d]: %s\n", error, description);
}
static void framebuffersize_callback(window_t *window, int32_t windowwindth, int32_t windowheight)
{
    glViewport(0, 0, windowwindth, windowheight);
}
static void key_callback(window_t *window, int32_t key, int32_t scancode, int32_t action, int32_t mods)
{
    //* Close Event
    if (key == GLFW_KEY_ESCAPE && action == GLFW_REPEAT)
    {
        glfwSetWindowShouldClose(window, GLFW_TRUE);
    }

    //* Get Timer
    if (key == GLFW_KEY_F12 && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        printf("Current timer: %lf\n", glfwGetTime());
    }

    //* Switch Polygone Mode
    if (key == GLFW_KEY_F1 && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        mode = 0;
        log_trace("Now drawing using lines.\n");
    }
    if (key == GLFW_KEY_F2 && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        mode = 1;
        log_trace("Now drawing using points.\n");
    }

    //* Model Mouvement
    if (key == GLFW_KEY_RIGHT && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        offset_x += 0.1;
    }
    if (key == GLFW_KEY_LEFT && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        offset_x -= 0.1;
    }
    if (key == GLFW_KEY_UP && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        scale_x *= 1.5;
    }
    if (key == GLFW_KEY_DOWN && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        scale_x /= 1.5;
    }
    if (key == GLFW_KEY_HOME && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        offset_x = 0.0;
        scale_x = 1.0;
    }
}
static void scroll_callback(window_t *window, real64_t xoffset, real64_t yoffset)
{
    //!
}
static void cursor_callback(window_t *window, real64_t xpos, real64_t ypos)
{
    //!
}
static void mousebutton_callback(window_t *window, int32_t button, int32_t action, int32_t mods)
{
    //!
}


#endif // TESTS_H_INCLUDED
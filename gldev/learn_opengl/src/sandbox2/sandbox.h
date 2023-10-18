#ifndef   SANDBOX_H_INCLUDED
#define   SANDBOX_H_INCLUDED

#include <sandbox2/sandboxresources.h>
#include <renderer/renderer.h>


//********************************************
static uint32_t geometry = 0, geometrycounts = 0;
static bool_t geometrylock = false;
static uint32_t polygonemode = GL_FILL;
static bool_t model_gox[2] = { false }, model_goy[2] = { false };
static bool_t camera_gox[2] = { false }, camera_goy[2] = { false };
static bool_t model_yaw[2] = { false }, model_role[2] = { false }, model_pitch[2] = { false }, model_rotate[2] = { false };
static bool_t model_scale[2] = { false }, mvp_scale[2] = { false };
enum {_RIGHT, _LEFT};
enum {_UP,    _DOWN};
mat4_t scale      = GLM_MAT4_IDENTITY_INIT;
mat4_t rotate     = GLM_MAT4_IDENTITY_INIT;
mat4_t trans      = GLM_MAT4_IDENTITY_INIT;
mat4_t model      = GLM_MAT4_IDENTITY_INIT;
mat4_t view       = GLM_MAT4_IDENTITY_INIT;
mat4_t projection = GLM_MAT4_IDENTITY_INIT;
mat4_t mvp        = GLM_MAT4_IDENTITY_INIT;

//********************************************
static void error_callback(int32_t error, const char *description);
static void framebuffer_size_callback(window_t *window, int32_t windowwindth, int32_t windowheight);
static void key_callback(window_t *window, int32_t key, int32_t scancode, int32_t action, int32_t mods);


//********************************************************************************************************************************************************************************
//* Sandbox

int32_t sandbox(int32_t argc, string_t argv[])
{
    //* Init Pipeline

    if (!glfwInit())
    {
        LOG_FATAL(EXIT_FAILURE, "unable to init glfw")
    }
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    //? glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    monitor_t *monitor = NULL; // glfwGetPrimaryMonitor();
    uint32_t windowwindth = 960, windowheight = 540;
    real32_t widthaspectratio  = windowwindth/windowheight;
    real32_t heightaspectratio = 1.0f;
    window_t *window   = glfwCreateWindow(windowwindth, windowheight, "LearnOpenGL", monitor, NULL);
    if (window == NULL)
    {
        glfwTerminate();
        LOG_FATAL(EXIT_FAILURE, "unable to init glfw")
    }
    glfwMakeContextCurrent(window);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glEnable(GL_DEPTH_TEST);;
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
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(real32_t), (void*)(3 * sizeof(real32_t)));
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
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(real32_t), (void*)(3 * sizeof(real32_t)));
    glEnableVertexAttribArray(1);
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
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(real32_t), (void*)(3 * sizeof(real32_t)));
    glEnableVertexAttribArray(1);
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
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(real32_t), (void*)(3 * sizeof(real32_t)));
    glEnableVertexAttribArray(1);
    uint32_t circle_ebo;
    glGenBuffers(1, &circle_ebo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, circle_ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(circleindeces), (uint32_t*)circleindeces, GL_STATIC_DRAW);
    geometrycounts++;

    texture_t texture1;
    texture_2dgen(&texture1, "rcs/files/galaxy.png", 0, GL_LINEAR, GL_NEAREST, GL_CLAMP_TO_BORDER, GL_CLAMP_TO_BORDER);
    texture_t texture2;
    texture_2dgen(&texture2, "rcs/files/rose_galaxy.png", 1, GL_LINEAR, GL_NEAREST, GL_CLAMP_TO_BORDER, GL_CLAMP_TO_BORDER);

    shader_t color_shader;
    shader_gen(&color_shader, "src/sandbox2/shaders/color.shader");
    int32_t u_Transtate_location = shader_uniformlocation(&color_shader, "u_Translate");
    int32_t u_Color_location     = shader_uniformlocation(&color_shader, "u_Color");
    int32_t u_Texture1_location  = shader_uniformlocation(&color_shader, "u_Texture1");
    int32_t u_Texture2_location  = shader_uniformlocation(&color_shader, "u_Texture2");
    int32_t u_Mvp                = shader_uniformlocation(&color_shader, "u_Mvp");

    //* Rendering loop

    glBindVertexArray(0);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
    // texture_unbind();
    // shader_unuse();

    glfwSetErrorCallback(error_callback);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    glfwSetKeyCallback(window, key_callback);

    uint32_t geometryindecescount = 0;
    // real32_t movx = 0.0f, movy = 0.0f;
    // glm_ortho(-widthaspectratio, widthaspectratio, -heightaspectratio, heightaspectratio, -100.0f, 100.0f, projection);
    real32_t fov = M_PI/4.0f, nearplan = 0.01f, farplan = 100.0f;
    glm_perspective(fov, widthaspectratio, nearplan, farplan, projection);
    glm_translate(view, (vec3_t){ 0.0f, 0.0f, -tanf((M_PI - fov)/2) + nearplan});
    vec3_t scalevec = GLM_VEC3_ONE_INIT;
    mat4_t _model = GLM_MAT4_IDENTITY_INIT;
    glm_scale(_model, (vec3_t){ 0.5f, 0.5f, 1.0f });
    while (!glfwWindowShouldClose(window))
    {
        IFDEBUG (
            renderer_logfps();
        )

        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
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
        
        //* Uniform Update

        real32_t ctime = glfwGetTime();

#define M_2PIover3  M_PI*(2.0f/3.0f)
#define M_4PIover3  M_PI*(4.0f/3.0f)
        real32_t u_r = sin(ctime*0.75f);
        real32_t u_g = sin(ctime*0.75f + M_2PIover3);
        real32_t u_b = sin(ctime*0.75f + M_4PIover3);
        shader_updateuniform(u_Color_location, 3f, u_r, u_g, u_b);

        // movx += (model_gox[_RIGHT] - model_gox[_LEFT]) * 0.0125f;
        // movy += (model_goy[_UP]    - model_goy[_DOWN]) * 0.0215f;
        // shader_updateuniform(u_Transtate_location, 2f, movx, movy);

        shader_updateuniform(u_Texture1_location, 1i, 0);
        shader_updateuniform(u_Texture2_location, 1i, 1);

        glm_vec3_scale(GLM_VEC3_ONE, powf(1.02f, (mvp_scale[_UP] - mvp_scale[_DOWN])), scalevec);
        glm_scale(view, scalevec);

        glm_translate(view, (vec3_t){ (camera_gox[_LEFT] - camera_gox[_RIGHT]) * 0.0125f, (camera_goy[_LEFT] - camera_goy[_RIGHT]) * 0.0215f, 0.0f });
        glm_mat4_mul(projection, view, mvp);
        glm_rotate_x(model, M_PI/360.0f * (model_pitch[_UP]     - model_pitch[_DOWN]) , model);
        glm_rotate_y(model, M_PI/360.0f * (model_yaw[_RIGHT]    - model_yaw[_LEFT])   , model);
        glm_rotate_z(model, M_PI/360.0f * (model_role[_RIGHT]   - model_role[_LEFT])  , model);
        glm_rotate(  model, M_PI/360.0f * (model_rotate[_RIGHT] - model_rotate[_LEFT]), (vec3_t){ 0.577f, 0.577f, 0.577f });
        glm_vec3_scale(GLM_VEC3_ONE, powf(1.02f, (model_scale[_UP] - model_scale[_DOWN])), scalevec);
        glm_scale(model, scalevec);
        glm_translate(model, (vec3_t){ (model_gox[_RIGHT] - model_gox[_LEFT]) * 0.0125f, (model_goy[_UP] - model_goy[_DOWN]) * 0.0215f, 0.0f });
        glm_mat4_mul(mvp, model, mvp);
        shader_updateuniform(u_Mvp, Matrix4fv, 1, GL_FALSE, (real32_t*)mvp);
        //*

        glDrawElements(GL_TRIANGLES, geometryindecescount, GL_UNSIGNED_INT, NULL);

        //!
        glm_mat4_mul(projection, view, mvp);
        glm_rotate(_model, M_PI/360.0f * sin(glfwGetTime()), (vec3_t){ 0.0f, 0.0f, 1.0f });
        glm_mat4_mul(mvp, _model, mvp);
        shader_updateuniform(u_Mvp, Matrix4fv, 1, GL_FALSE, (real32_t*)mvp);

        glDrawElements(GL_TRIANGLES, geometryindecescount, GL_UNSIGNED_INT, NULL);
        //!

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
    texture_free(&texture1);
    texture_free(&texture2);
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
    //* Close Event
    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS && mods == GLFW_MOD_SHIFT)
    {
        glfwSetWindowShouldClose(window, GLFW_TRUE);
    }
    //* Get Timer
    if (key == GLFW_KEY_F1 && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        printf("Current timer: %lf\n", glfwGetTime());
    }
    //* Switch Geometries
    if (key == GLFW_KEY_X && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        geometry = (geometry + 1) % geometrycounts;
        geometrylock = false;
    }
    if (key == GLFW_KEY_Z && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        geometry = ((geometry+geometrycounts) - 1) % geometrycounts;
        geometrylock = false;
    }
    //* Switch Polygone Mode
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
    //* Model Mouvement
    if (key == GLFW_KEY_W && action == GLFW_PRESS)
    {
        model_goy[_UP] = true;
    }
    if (key == GLFW_KEY_W && action == GLFW_RELEASE)
    {
        model_goy[_UP] = false;
    }
    if (key == GLFW_KEY_S && action == GLFW_PRESS)
    {
        model_goy[_DOWN] = true;
    }
    if (key == GLFW_KEY_S && action == GLFW_RELEASE)
    {
        model_goy[_DOWN] = false;
    }
    if (key == GLFW_KEY_D && action == GLFW_PRESS)
    {
        model_gox[_RIGHT] = true;
    }
    if (key == GLFW_KEY_D && action == GLFW_RELEASE)
    {
        model_gox[_RIGHT] = false;
    }
    if (key == GLFW_KEY_A && action == GLFW_PRESS)
    {
        model_gox[_LEFT] = true;
    }
    if (key == GLFW_KEY_A && action == GLFW_RELEASE)
    {
        model_gox[_LEFT] = false;
    }
    //* Model Rotation
    if (key == GLFW_KEY_Q && action == GLFW_PRESS)
    {
        model_rotate[_RIGHT] = true;
    }
    if (key == GLFW_KEY_Q && action == GLFW_RELEASE)
    {
        model_rotate[_RIGHT] = false;
    }
    if (key == GLFW_KEY_E && action == GLFW_PRESS)
    {
        model_rotate[_LEFT] = true;
    }
    if (key == GLFW_KEY_E && action == GLFW_RELEASE)
    {
        model_rotate[_LEFT] = false;
    }
    if (key == GLFW_KEY_I && action == GLFW_PRESS)
    {
        model_pitch[_UP] = true;
    }
    if (key == GLFW_KEY_I && action == GLFW_RELEASE)
    {
        model_pitch[_UP] = false;
    }
    if (key == GLFW_KEY_K && action == GLFW_PRESS)
    {
        model_pitch[_DOWN] = true;
    }
    if (key == GLFW_KEY_K && action == GLFW_RELEASE)
    {
        model_pitch[_DOWN] = false;
    }
    if (key == GLFW_KEY_L && action == GLFW_PRESS)
    {
        model_yaw[_RIGHT] = true;
    }
    if (key == GLFW_KEY_L && action == GLFW_RELEASE)
    {
        model_yaw[_RIGHT] = false;
    }
    if (key == GLFW_KEY_J && action == GLFW_PRESS)
    {
        model_yaw[_LEFT] = true;
    }
    if (key == GLFW_KEY_J && action == GLFW_RELEASE)
    {
        model_yaw[_LEFT] = false;
    }
    if (key == GLFW_KEY_O && action == GLFW_PRESS)
    {
        model_role[_RIGHT] = true;
    }
    if (key == GLFW_KEY_O && action == GLFW_RELEASE)
    {
        model_role[_RIGHT] = false;
    }
    if (key == GLFW_KEY_U && action == GLFW_PRESS)
    {
        model_role[_LEFT] = true;
    }
    if (key == GLFW_KEY_U && action == GLFW_RELEASE)
    {
        model_role[_LEFT] = false;
    }
    //* Model Scaling
    if (key == GLFW_KEY_PAGE_UP && action == GLFW_PRESS)
    {
        model_scale[_UP] = true;
    }
    if (key == GLFW_KEY_PAGE_UP && action == GLFW_RELEASE)
    {
        model_scale[_UP] = false;
    }
    if (key == GLFW_KEY_PAGE_DOWN && action == GLFW_PRESS)
    {
        model_scale[_DOWN] = true;
    }
    if (key == GLFW_KEY_PAGE_DOWN && action == GLFW_RELEASE)
    {
        model_scale[_DOWN] = false;
    }
    //* Camera Mouvement
    if (key == GLFW_KEY_UP && action == GLFW_PRESS)
    {
        camera_goy[_UP] = true;
    }
    if (key == GLFW_KEY_UP && action == GLFW_RELEASE)
    {
        camera_goy[_UP] = false;
    }
    if (key == GLFW_KEY_DOWN && action == GLFW_PRESS)
    {
        camera_goy[_DOWN] = true;
    }
    if (key == GLFW_KEY_DOWN && action == GLFW_RELEASE)
    {
        camera_goy[_DOWN] = false;
    }
    if (key == GLFW_KEY_RIGHT && action == GLFW_PRESS)
    {
        camera_gox[_RIGHT] = true;
    }
    if (key == GLFW_KEY_RIGHT && action == GLFW_RELEASE)
    {
        camera_gox[_RIGHT] = false;
    }
    if (key == GLFW_KEY_LEFT && action == GLFW_PRESS)
    {
        camera_gox[_LEFT] = true;
    }
    if (key == GLFW_KEY_LEFT && action == GLFW_RELEASE)
    {
        camera_gox[_LEFT] = false;
    }
    //* Mvp Scaling
    if (key == GLFW_KEY_EQUAL && action == GLFW_PRESS)
    {
        mvp_scale[_UP] = true;
    }
    if (key == GLFW_KEY_EQUAL && action == GLFW_RELEASE)
    {
        mvp_scale[_UP] = false;
    }
    if (key == GLFW_KEY_MINUS && action == GLFW_PRESS)
    {
        mvp_scale[_DOWN] = true;
    }
    if (key == GLFW_KEY_MINUS && action == GLFW_RELEASE)
    {
        mvp_scale[_DOWN] = false;
    }
}

#endif // SANDBOX_H_INCLUDED
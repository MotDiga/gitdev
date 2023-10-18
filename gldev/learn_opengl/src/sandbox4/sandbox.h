#ifndef   SANDBOX_H_INCLUDED
#define   SANDBOX_H_INCLUDED

#include <sandbox4/sandboxresources.h>
#include <renderer/renderer.h>


//********************************************
renderer_t _renderer;
#define INITWIDTH  960.0f
#define INITHEIGHT 540.0f
#define INITXPOS INITWIDTH/2.0f
#define INITYPOS INITHEIGHT/2.0f
real32_t widthaspectratio, heightaspectratio = 1.0f;
static uint32_t geometry = 0, geometrycounts = 0;
static bool_t geometrylock = false;
static uint32_t texture = 0, texturecounts = 0;
static bool_t texturelock = false;
static uint32_t polygonemode = GL_FILL;
static real32_t camera_gox[2] = { 0.0f }, camera_goy[2] = { 0.0f }, camera_goz[2] = { 0.0f };
// static real32_t camera_yaw = 0.0f, camera_role = 0.0f, camera_pitch = 0.0f;
static real32_t camera_scale;
static real32_t model_gox[2] = { 0.0f }, model_goy[2] = { 0.0f }, model_goz[2] = { 0.0f };
static real32_t model_yaw[2] = { 0.0f }, model_role[2] = { 0.0f }, model_pitch[2] = { 0.0f };
static real32_t model_scale[2] = { 0.0f }, fov_scale[2] = { 0.0f };
enum {_RIGHT,   _LEFT};
enum {_UP,      _DOWN};
enum {_FORWARD, _BACK};
mat4_t scale      = GLM_MAT4_IDENTITY_INIT;
mat4_t rotate     = GLM_MAT4_IDENTITY_INIT;
mat4_t trans      = GLM_MAT4_IDENTITY_INIT;
mat4_t model      = GLM_MAT4_IDENTITY_INIT;
mat4_t view       = GLM_MAT4_IDENTITY_INIT;
mat4_t projection = GLM_MAT4_IDENTITY_INIT;
mat4_t mvp        = GLM_MAT4_IDENTITY_INIT;
//********************************************
vec3_t vec3_up = { 0.0f, 1.0f, 0.0f }, vec3_front = {0.0f, 0.0f, -1.0f};
vec3_st camera_pos, camera_target;

//********************************************
static void error_callback(int32_t error, const char *description);
static void framebuffersize_callback(window_t *window, int32_t windowwindth, int32_t windowheight);
static void key_callback(window_t *window, int32_t key, int32_t scancode, int32_t action, int32_t mods);
static void scroll_callback(window_t *window, real64_t xoffset, real64_t yoffset);
static void cursor_callback(window_t *window, real64_t xpos, real64_t ypos);
static void mousebutton_callback(window_t *window, int32_t button, int32_t action, int32_t mods);


//********************************************************************************************************************************************************************************
//* Sandbox

int32_t sandbox(int32_t argc, string_t argv[])
{
    //* Init Pipeline

    renderer_t *renderer = &_renderer;
    if (!glfwInit())
    {
        LOG_FATAL(EXIT_FAILURE, "unable to init glfw")
    }
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    //? glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    monitor_t *monitor = NULL; //glfwGetPrimaryMonitor();
    widthaspectratio  = 16.0f/9.0f;
    window_t *window   = glfwCreateWindow(INITWIDTH, INITHEIGHT, "LearnOpenGL", monitor, NULL);
    if (window == NULL)
    {
        glfwTerminate();
        LOG_FATAL(EXIT_FAILURE, "unable to init glfw")
    }
    glfwMakeContextCurrent(window);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glEnable(GL_DEPTH_TEST);
    glfwSwapInterval(FPS_MAX);

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

    uint32_t cube_vao;
    glGenVertexArrays(1, &cube_vao);
    glBindVertexArray(cube_vao);
    uint32_t cube_vbo;
    glGenBuffers(1, &cube_vbo);
    glBindBuffer(GL_ARRAY_BUFFER, cube_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(cube), (real32_t*)cube, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(real32_t), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(real32_t), (void*)(3 * sizeof(real32_t)));
    glEnableVertexAttribArray(1);
    uint32_t cube_ebo;
    glGenBuffers(1, &cube_ebo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, cube_ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(cubeindeces), (uint32_t*)cubeindeces, GL_STATIC_DRAW);
    geometrycounts++;

    texture_t textures[4];
    texture_2dgen(&textures[0], "rcs/files/galaxy.png",           0, GL_LINEAR, GL_NEAREST, GL_CLAMP_TO_BORDER, GL_CLAMP_TO_BORDER);
    texture_2dgen(&textures[1], "rcs/files/rose_galaxy.png",      1, GL_LINEAR, GL_NEAREST, GL_CLAMP_TO_BORDER, GL_CLAMP_TO_BORDER);
    texture_2dgen(&textures[2], "rcs/files/nebulae.png",          2, GL_LINEAR, GL_NEAREST, GL_CLAMP_TO_BORDER, GL_CLAMP_TO_BORDER);
    texture_2dgen(&textures[3], "rcs/files/wooden_container.png", 3, GL_LINEAR, GL_NEAREST, GL_CLAMP_TO_BORDER, GL_CLAMP_TO_BORDER);
    texturecounts += 4;

    shader_t color_shader;
    shader_gen(&color_shader, "src/sandbox3/shaders/color.shader");
    int32_t u_Texture_location = shader_uniformlocation(&color_shader, "u_Texture");
    int32_t u_Mvp              = shader_uniformlocation(&color_shader, "u_Mvp");

    //* Rendering loop

    glBindVertexArray(0);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
    // texture_unbind();
    // shader_unuse();

    glfwSetErrorCallback(error_callback);
    glfwSetFramebufferSizeCallback(window, framebuffersize_callback);
    glfwSetKeyCallback(window, key_callback);
    glfwSetScrollCallback(window, scroll_callback);
    glfwSetCursorPos(window, INITXPOS, INITYPOS);
    glfwSetCursorPosCallback(window, cursor_callback);
    glfwSetMouseButtonCallback(window, mousebutton_callback);

    uint32_t geometryindecescount = 0;

#define FOVP_MIN -0.897875634648741
    real32_t fov = M_PI_4, fovp = 1.53492854f, nearplan = 0.001f, farplan = 1000.0f;
    // glm_translate(view, (vec3_t){ 0.0f, 0.0f, -tanf((M_PI - fov)/2.0f)});
    camera_pos = (vec3_st){ 0.0f, 0.0f, tanf((M_PI - fov)/2.0f)}, camera_target = (vec3_st){ 0.0f, 0.0f, 0.0f };
    vec3_t scalevec3 = GLM_VEC3_ONE_INIT;
    mat4_st _model[16];
    for (uint32_t i = 0; i < 16; i++)
    {
        _model[i][0] = (vec4_st){ 1.0f, 0.0f, 0.0f, 0.0f };
        _model[i][1] = (vec4_st){ 0.0f, 1.0f, 0.0f, 0.0f };
        _model[i][2] = (vec4_st){ 0.0f, 0.0f, 1.0f, 0.0f };
        _model[i][3] = (vec4_st){ 0.0f, 0.0f, 0.0f, 1.0f };

        glm_translate((real32_t(*)[4])(_model)[i], (vec3_t){ 0.5f * (i/3) - 1.2f, 0.35f * (i*i % 6) - 0.75f, -0.5f * (i*i*i % 3) - 1.2f });
        glm_scale((real32_t(*)[4])(_model)[i], (vec3_t){ 0.25f , 0.25f , 0.25f });
        // glm_rotate_x((real32_t(*)[4])(_model)[i], M_PI/6.0f * (i), (real32_t(*)[4])(_model)[i]);
        // glm_rotate_y((real32_t(*)[4])(_model)[i], M_PI/6.0f * (i*i), (real32_t(*)[4])(_model)[i]);
        // glm_rotate_z((real32_t(*)[4])(_model)[i], M_PI/6.0f * (i*i*i), (real32_t(*)[4])(_model)[i]);
    }

    while (!glfwWindowShouldClose(window))
    {
        renderer_timer(renderer);

        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        glClearColor(0.0f, 0.1f, 0.15f, 1.0f);

        if (!geometrylock)
        {
            /*

            enum { _TRIANGLE, _SQUARE, _OCTAGONE, _CIRCLE, _CUBE }
            glBindVertexArray(vaos[geometry]);
            geometryindecescount = geometries[geometry].indecescount; // geometries[geometry].indecescount = sizeof(geometries[geometry].);

            */

            if (geometry == 0)
            {
                glBindVertexArray(triangle_vao);
                geometryindecescount = 3;
            }
            else if (geometry == 1)
            {
                glBindVertexArray(square_vao);
                geometryindecescount = 3 * 2;
            }
            else if (geometry == 2)
            {
                glBindVertexArray(octagone_vao);
                geometryindecescount = 3 * 6;
            }
            else if (geometry == 3)
            {
                glBindVertexArray(circle_vao);
                geometryindecescount = 3 * 46;
            }
            else if (geometry == 4)
            {
                glBindVertexArray(cube_vao);
                geometryindecescount = 3 * 12;
            }
            geometrylock = true;
        }

        if (!texturelock)
        {
            shader_updateuniform(u_Texture_location, 1i, texture);
            texturelock = true;
        }

        //* ViewProjection Matrix

        // glm_ortho(-widthaspectratio, widthaspectratio, -heightaspectratio, heightaspectratio, -100.0f, 100.0f, projection);  //* Orthografic Projection
        fovp += (fov_scale[_DOWN] - fov_scale[_UP]) * _renderer.dtime;
        fovp = !((fovp < FOVP_MIN) || (fovp > 35.0f))*fovp + !(fovp >= FOVP_MIN)*FOVP_MIN + !(fovp <= 35.0f)*35.0f;
        fov = powf(M_PI_2, 1.0f - fovp);
        glm_perspective(fov, widthaspectratio, nearplan, farplan, projection);  //* Perspective Projection

        //!? glm_vec3_add((real32_t*)&camera_target, vec3_front, (real32_t*)&camera_target);
        //!? printf("camera_target = <  %7.3f %7.3f %7.3f   >\n", ((real32_t*)&camera_target)[0], ((real32_t*)&camera_target)[1], ((real32_t*)&camera_target)[2]);
        //!? glm_vec3_add((real32_t*)&camera_pos, vec3_front, (real32_t*)&camera_pos);
        //!? glm_lookat((real32_t*)&camera_pos, (real32_t*)&camera_target, vec3_up, view);
        // printf("        _                                  _\n");
        // printf("       |  %7.3f %7.3f %7.3f %7.3f   |\n",   view[0][0], view[0][1], view[0][2], view[0][3]);
        // printf("       |  %7.3f %7.3f %7.3f %7.3f   |\n",   view[1][0], view[1][1], view[1][2], view[1][3]);
        // printf("view = |  %7.3f %7.3f %7.3f %7.3f   |\n",   view[2][0], view[2][1], view[2][2], view[2][3]);
        // printf("       |_ %7.3f %7.3f %7.3f %7.3f  _|\n\n", view[3][0], view[3][1], view[3][2], view[3][3]);
        glm_translate(view, (vec3_t){ (camera_gox[_LEFT] - camera_gox[_RIGHT]) * _renderer.dtime,
                                      (camera_goy[_LEFT] - camera_goy[_RIGHT]) * _renderer.dtime,
                                      (camera_goz[_FORWARD] - camera_goz[_BACK]) * _renderer.dtime });
        glm_vec3_scale(GLM_VEC3_ONE, powf(2.0f, camera_scale * _renderer.dtime), (real32_t*)&scalevec3);
        camera_scale = 0.0f;
        glm_scale(view, (real32_t*)&scalevec3);
        glm_mat4_mul(projection, view, mvp);

        glm_translate(model, (vec3_t){ (model_gox[_RIGHT] - model_gox[_LEFT]) * _renderer.dtime,
                                       (model_goy[_UP] - model_goy[_DOWN]) * _renderer.dtime,
                                       (model_goz[_BACK] - model_goz[_FORWARD]) * _renderer.dtime });
        glm_vec3_scale(GLM_VEC3_ONE, powf(2.0f, (model_scale[_UP] - model_scale[_DOWN]) * _renderer.dtime), (real32_t*)&scalevec3);
        glm_scale(model, (real32_t*)&scalevec3);
        // glm_rotate_x(model, (model_pitch[_UP]   - model_pitch[_DOWN]) * _renderer.dtime , model);
        // glm_rotate_y(model, (model_yaw[_RIGHT]  - model_yaw[_LEFT])   * _renderer.dtime , model);
        // glm_rotate_z(model, (model_role[_RIGHT] - model_role[_LEFT])  * _renderer.dtime , model);
        glm_mat4_mul(mvp, model, mvp);
        shader_updateuniform(u_Mvp, Matrix4fv, 1, GL_FALSE, (real32_t*)mvp);

        // glDrawElements(GL_TRIANGLES, geometryindecescount, GL_UNSIGNED_INT, NULL);
        glDrawElements(GL_TRIANGLES, geometryindecescount, GL_UNSIGNED_INT, NULL);

        for (uint32_t i = 0; i < 16; i++)
        {
            glm_mat4_mul(projection, view, mvp);
            // glm_rotate_x((real32_t(*)[4])(_model)[i], _renderer.dtime, (real32_t(*)[4])(_model)[i]);
            // glm_rotate_y((real32_t(*)[4])(_model)[i], -_renderer.dtime, (real32_t(*)[4])(_model)[i]);
            // glm_rotate_z((real32_t(*)[4])(_model)[i], _renderer.dtime, (real32_t(*)[4])(_model)[i]);
            glm_mat4_mul(mvp, (real32_t(*)[4])(_model)[i], mvp);
            shader_updateuniform(u_Mvp, Matrix4fv, 1, GL_FALSE, (real32_t*)mvp);

            // glDrawElements(GL_TRIANGLES, geometryindecescount, GL_UNSIGNED_INT, NULL);
            glDrawElements(GL_TRIANGLES, geometryindecescount, GL_UNSIGNED_INT, NULL);
        }

        glfwSwapBuffers(window);
        
        glfwPollEvents();
    }

    IFDEBUG (
        printf("\nApplication run time: %lf\n", glfwGetTime());
    )
    texture_free(&textures[0]);
    texture_free(&textures[1]);
    texture_free(&textures[2]);
    texture_free(&textures[3]);
    shader_free(&color_shader);
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
    widthaspectratio = ((real32_t)windowwindth)/((real32_t)windowheight);
}
static void key_callback(window_t *window, int32_t key, int32_t scancode, int32_t action, int32_t mods)
{
    //* Close Event
    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS && mods == GLFW_MOD_SHIFT) { glfwSetWindowShouldClose(window, GLFW_TRUE); }
    //* Get Timer
    if (key == GLFW_KEY_F1 && (action == GLFW_PRESS || action == GLFW_REPEAT))    { printf("Current timer: %lf\n", glfwGetTime()); }
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
    if (key == GLFW_KEY_RIGHT && action == GLFW_PRESS)           { model_gox[_RIGHT] = 0.75f; }
    if (key == GLFW_KEY_RIGHT && action == GLFW_RELEASE)         { model_gox[_RIGHT] = 0.0f; }
    if (key == GLFW_KEY_LEFT && action == GLFW_PRESS)            { model_gox[_LEFT] = 0.75f; }
    if (key == GLFW_KEY_LEFT && action == GLFW_RELEASE)          { model_gox[_LEFT] = 0.0f; }
    if (key == GLFW_KEY_RIGHT_SHIFT && action == GLFW_PRESS)     { model_goy[_FORWARD] = 1.29f; }
    if (key == GLFW_KEY_RIGHT_SHIFT && action == GLFW_RELEASE)   { model_goy[_FORWARD] = 0.0f; }
    if (key == GLFW_KEY_RIGHT_CONTROL && action == GLFW_PRESS)   { model_goy[_BACK] = 1.29f; }
    if (key == GLFW_KEY_RIGHT_CONTROL && action == GLFW_RELEASE) { model_goy[_BACK] = 0.0f; }
    if (key == GLFW_KEY_UP && action == GLFW_PRESS)              { model_goz[_UP] = 0.75f; }
    if (key == GLFW_KEY_UP && action == GLFW_RELEASE)            { model_goz[_UP] = 0.0f; }
    if (key == GLFW_KEY_DOWN && action == GLFW_PRESS)            { model_goz[_DOWN] = 0.75f; }
    if (key == GLFW_KEY_DOWN && action == GLFW_RELEASE)          { model_goz[_DOWN] = 0.0f; }
    //* Model Rotation
    if (key == GLFW_KEY_I && action == GLFW_PRESS)   { model_pitch[_UP] = 1.0f; }
    if (key == GLFW_KEY_I && action == GLFW_RELEASE) { model_pitch[_UP] = 0.0f; }
    if (key == GLFW_KEY_K && action == GLFW_PRESS)   { model_pitch[_DOWN] = 1.0f; }
    if (key == GLFW_KEY_K && action == GLFW_RELEASE) { model_pitch[_DOWN] = 0.0f; }
    if (key == GLFW_KEY_L && action == GLFW_PRESS)   { model_yaw[_RIGHT] = 1.0f; }
    if (key == GLFW_KEY_L && action == GLFW_RELEASE) { model_yaw[_RIGHT] = 0.0f; }
    if (key == GLFW_KEY_J && action == GLFW_PRESS)   { model_yaw[_LEFT] = 1.0f; }
    if (key == GLFW_KEY_J && action == GLFW_RELEASE) { model_yaw[_LEFT] = 0.0f; }
    if (key == GLFW_KEY_O && action == GLFW_PRESS)   { model_role[_RIGHT] = 1.0f; }
    if (key == GLFW_KEY_O && action == GLFW_RELEASE) { model_role[_RIGHT] = 0.0f; }
    if (key == GLFW_KEY_U && action == GLFW_PRESS)   { model_role[_LEFT] = 1.0f; }
    if (key == GLFW_KEY_U && action == GLFW_RELEASE) { model_role[_LEFT] = 0.0f; }
    //* Model Scaling
    if (key == GLFW_KEY_PAGE_UP && action == GLFW_PRESS)     { model_scale[_UP] = 1.5f; }
    if (key == GLFW_KEY_PAGE_UP && action == GLFW_RELEASE)   { model_scale[_UP] = 0.0f; }
    if (key == GLFW_KEY_PAGE_DOWN && action == GLFW_PRESS)   { model_scale[_DOWN] = 1.5f; }
    if (key == GLFW_KEY_PAGE_DOWN && action == GLFW_RELEASE) { model_scale[_DOWN] = 0.0f; }
    //* Camera Mouvement
    if (key == GLFW_KEY_D && action == GLFW_PRESS)              { camera_gox[_RIGHT] = 0.75f; }
    if (key == GLFW_KEY_D && action == GLFW_RELEASE)            { camera_gox[_RIGHT] = 0.0f; }
    if (key == GLFW_KEY_A && action == GLFW_PRESS)              { camera_gox[_LEFT] = 0.75f; }
    if (key == GLFW_KEY_A && action == GLFW_RELEASE)            { camera_gox[_LEFT] = 0.0f; }
    if (key == GLFW_KEY_SPACE && action == GLFW_PRESS)          { camera_goy[_UP] = 1.29f; }
    if (key == GLFW_KEY_SPACE && action == GLFW_RELEASE)        { camera_goy[_UP] = 0.0f; }
    if (key == GLFW_KEY_LEFT_CONTROL && action == GLFW_PRESS)   { camera_goy[_DOWN] = 1.29f; }
    if (key == GLFW_KEY_LEFT_CONTROL && action == GLFW_RELEASE) { camera_goy[_DOWN] = 0.0f; }
    if (key == GLFW_KEY_W && action == GLFW_PRESS)              { camera_goz[_FORWARD] = 0.75f; }
    if (key == GLFW_KEY_W && action == GLFW_RELEASE)            { camera_goz[_FORWARD] = 0.0f; }
    if (key == GLFW_KEY_S && action == GLFW_PRESS)              { camera_goz[_BACK] = 0.75f; }
    if (key == GLFW_KEY_S && action == GLFW_RELEASE)            { camera_goz[_BACK] = 0.0f; }
    //* FOV Scaling
    if (key == GLFW_KEY_0 && action == GLFW_PRESS && mods != GLFW_MOD_SHIFT)   { fov_scale[_UP] = 6.0f; }
    if (key == GLFW_KEY_0 && action == GLFW_RELEASE && mods != GLFW_MOD_SHIFT) { fov_scale[_UP] = 0.0f; }
    if (key == GLFW_KEY_9 && action == GLFW_PRESS && mods != GLFW_MOD_SHIFT)   { fov_scale[_DOWN] = 6.0f; }
    if (key == GLFW_KEY_9 && action == GLFW_RELEASE && mods != GLFW_MOD_SHIFT) { fov_scale[_DOWN] = 0.0f; }
    
    // const real32_t cameraSpeed = 0.05f; // adjust accordingly
    // if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
    // camera_pos += cameraSpeed * vec3_front;
    // if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
    // camera_pos -= cameraSpeed * vec3_front;
    // if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
    // camera_pos -= glm::normalize(glm::cross(vec3_front, cameraUp)) *
    // cameraSpeed;
    // if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
    // camera_pos += glm::normalize(glm::cross(vec3_front, cameraUp)) *
    // cameraSpeed;
}
static void scroll_callback(window_t *window, real64_t xoffset, real64_t yoffset)
{
    // LOG_TRACE("xoffset = %lf, yoffset = %lf", xoffset, yoffset)
    camera_scale = yoffset * 30.0;
}
static void cursor_callback(window_t *window, real64_t xpos, real64_t ypos)
{
    // // LOG_TRACE("xpos = %lf, ypos = %lf", xpos, ypos)
    // static real64_t lxpos = INITXPOS, lypos = INITYPOS;
    // // LOG_TRACE("lxpos = %lf, lypos = %lf", lxpos, lypos)

    // // camera_yaw = camera_pitch = camera_role = 0.0f;
    // // if (xpos > lxpos)      { camera_yaw   =  1.0f;}
    // // else if (xpos < lxpos) { camera_yaw   = -1.0f;}
    // // if (ypos > lypos)      { camera_pitch =  1.0f;}
    // // else if (ypos < lypos) { camera_pitch = -1.0f;}

    // if (xpos > lxpos)      { glm_rotate_y(view,  0.5f * _renderer.dtime , view); }
    // else if (xpos < lxpos) { glm_rotate_y(view, -0.5f * _renderer.dtime , view); }
    // if (ypos > lypos)      { glm_rotate_x(view,  0.5f * _renderer.dtime , view); }
    // else if (ypos < lypos) { glm_rotate_x(view, -0.5f * _renderer.dtime , view); }

    // lxpos = xpos, lypos = ypos;
}
static void mousebutton_callback(window_t *window, int32_t button, int32_t action, int32_t mods)
{
    //* Switch Geometries
    if (button == GLFW_MOUSE_BUTTON_5 && (action == GLFW_PRESS || action == GLFW_REPEAT)  && mods != GLFW_MOD_SHIFT)
    {
        geometry = (geometry + 1) % geometrycounts;
        geometrylock = false;
    }
    if (button == GLFW_MOUSE_BUTTON_4 && (action == GLFW_PRESS || action == GLFW_REPEAT) && mods != GLFW_MOD_SHIFT)
    {
        geometry = ((geometry + geometrycounts) - 1) % geometrycounts;
        geometrylock = false;
    }
    //* Switch Texture
    if (button == GLFW_MOUSE_BUTTON_5 && (action == GLFW_PRESS || action == GLFW_REPEAT) && mods == GLFW_MOD_SHIFT)
    {
        texture = (texture + 1) % texturecounts;
        texturelock = false;
    }
    if (button == GLFW_MOUSE_BUTTON_4 && (action == GLFW_PRESS || action == GLFW_REPEAT) && mods == GLFW_MOD_SHIFT)
    {
        texture = ((texture + texturecounts) - 1) % texturecounts;
        texturelock = false;
    }
    //* Reset Camera Scaling
    if (button == GLFW_MOUSE_BUTTON_3 && (action == GLFW_PRESS || action == GLFW_REPEAT)) { camera_scale = 0.0f; }
}

#endif // SANDBOX_H_INCLUDED
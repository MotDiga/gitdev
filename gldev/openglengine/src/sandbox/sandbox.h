#ifndef   SANDBOX_H_INCLUDED
#define   SANDBOX_H_INCLUDED

#include <sandbox/sandboxresources.h>
#include <event/event.h>


//TODO: ameliore rainbow
static void raimbow(real32_t *r, real32_t *g, real32_t *b);

int32_t sandbox(int32_t argc, string_t const argv[])
{
    for (int32_t i = 1; i < argc; i++)
    {
        //!
    }
    renderer_t *renderer = &_renderer;
    uint64_t windowwidth = 960, windowheight = 540;
    renderer_init(renderer, windowwidth, windowheight, RENDERER_CAMERA_2DMVP, "OpenGL Renderer", RENDERER_DEFAULT, RENDERER_SCREEN_MAX, true);

    renderer_addvbo(renderer, sizeof(frame), (void*)frame, GL_STATIC_DRAW, GL_FLOAT, 2, sizeof(point_t), GL_FALSE);
    renderer_addebo(renderer, sizeof(frameIndeces), (uint32_t*)frameIndeces, GL_STATIC_DRAW);
    renderer_addprogram(renderer, "rcs/shaders/frame.shader");

    renderer_addvbo(renderer, sizeof(square), (void*)square, GL_STATIC_DRAW, GL_FLOAT, 2, 2 * sizeof(point_t), GL_FALSE);
    renderer_vertexatribpointer(renderer, S_VB, 2, (void*)(sizeof(point_t)));
    renderer_addebo(renderer, sizeof(squareIndeces), (uint32_t*)squareIndeces, GL_STATIC_DRAW);
    renderer_add2dtexture(renderer, "rcs/textures/rose_galaxy_mini.png", SLOT0);
    // renderer_add2dtexture(renderer, "rcs/textures/galaxy_mini.png", SLOT0);
    // renderer_add2dtexture(renderer, "rcs/textures/nebulae_mini.png", SLOT0);
    renderer_addprogram(renderer, "rcs/shaders/square.shader");
    int32_t s_u_mvp   = renderer_shaderuniformlocation(renderer, S_PROGRAM, "u_mvp");
    int32_t u_texture = renderer_shaderuniformlocation(renderer, S_TEXTURE, "u_texture");

    renderer_addvbo(renderer, sizeof(octagone), (void*)octagone, GL_STATIC_DRAW, GL_FLOAT, 2, sizeof(point_t), GL_FALSE);
    renderer_addebo(renderer, sizeof(octagoneIndeces), (uint32_t*)octagoneIndeces, GL_STATIC_DRAW);
    renderer_addprogram(renderer, "rcs/shaders/octagone.shader");
    int32_t o_u_mvp = renderer_shaderuniformlocation(renderer, O_PROGRAM, "u_mvp");
    int32_t u_color = renderer_shaderuniformlocation(renderer, O_PROGRAM, "u_color");
    real32_t u_r = 0.0f, u_g = 0.6f, u_b = 0.6f;

    //* renderer_addcameramodel(renderer, 0);
    mat4_t model = GLM_MAT4_IDENTITY_INIT;  //!

    renderer_prepare(renderer, key_callback);
    while (!renderer_shouldclose(renderer))
    {
        renderer_deltatime(renderer);
        renderer_clear(renderer, 0.0f, 0.1f, 0.15f, 1.0f);

        renderer_updatecamera(renderer, model, camera_updateparameters);

        renderer_bind(renderer, VAO1, S_VB, S_IBO, S_PROGRAM);
        renderer_bindtexture(renderer, S_TEXTURE, SLOT0);
        GLCALL(glUniformMatrix4fv(s_u_mvp, 1, GL_FALSE, (camera_2dmvptransform(&renderer->camera))[0][0]));
        GLCALL(glUniform1i(u_texture, SLOT0));
        renderer_ebodrawelement(renderer, 0);

        renderer_bind(renderer, VAO1, O_VB, O_IBO, O_PROGRAM);
        raimbow(&u_r, &u_g, &u_b);
        GLCALL(glUniformMatrix4fv(o_u_mvp, 1, GL_FALSE, (camera_2dmvptransform(&renderer->camera))[0][0]));
        GLCALL(glUniform4f(u_color, u_r, u_g, u_b, 0.75f));
        renderer_ebodrawelement(renderer, O_IBO);

        renderer_bind(renderer, VAO1, F_VB, F_IBO, F_PROGRAM);
        renderer_ebodrawelement(renderer, F_IBO);

        glfwSwapBuffers(renderer->window);

        glfwPollEvents();
    }

    renderer_delete(renderer);

    return 0;
}

//*************************************************************************************************************************************************************************************************
//* Static functions

//TODO: ameliore rainbow
static void raimbow(real32_t *r, real32_t *g, real32_t *b)
{
    static real32_t dr = 0.01f, dg = 0.01f, db = -0.01f;

    if (*r > 1 || *r < 0.01f)
        dr *= -1;
    if (*g > 1 || *g < 0.01f)
        dg *= -1;
    if (*b > 1 || *b < 0.01f)
        db *= -1;

    *r += dr, *g += dg, *b += db;
}

#endif // SANDBOX_H_INCLUDED
#ifndef   EVENT_H_INCLUDED
#define   EVENT_H_INCLUDED

#include <sandbox1/sandboxresources.h>

static bool _zoom[2] = { false };
static bool _vdir[8] = { false };
static bool _mdir[8] = { false };
enum { F_D, B_D };      //* Forward, Backward
enum {
    Nw_D, N_D, Ne_D,    //* NordWest,  Nord,  NordEst
    W_D,       E_D,     //* West,             Est
    Sw_D, S_D, Se_D,    //* SouthWest, South, SouthEst
};
static uint32_t _polygonemode = GL_FILL;

void camera_updateparameters(real32_t *zoom, vec3 vdir, vec3 mdir)
{
    *zoom = (_zoom[F_D] * 0.01f - _zoom[B_D] * 0.01f) * (real32_t)_renderer.dtime;

    vdir[0] = (0.01f * _mdir[E_D] + 0.0071f * _mdir[Ne_D] + 0.0071f * _mdir[Se_D] - 0.01f * _mdir[W_D] - 0.0071f * _mdir[Nw_D] - 0.0071f * _mdir[Sw_D]) * (real32_t)_renderer.dtime;
    vdir[1] = (0.01f * _mdir[N_D] + 0.0071f * _mdir[Ne_D] + 0.0071f * _mdir[Nw_D] - 0.01f * _mdir[S_D] - 0.0071f * _mdir[Se_D] - 0.0071f * _mdir[Sw_D]) * (real32_t)_renderer.dtime;
    vdir[2] =  0.0f;

    mdir[0] = (0.01f * _vdir[W_D] + 0.0071f * _vdir[Nw_D] + 0.0071f * _vdir[Sw_D] - 0.01f * _vdir[E_D] - 0.0071f * _vdir[Ne_D] - 0.0071f * _vdir[Se_D]) * (real32_t)_renderer.dtime;
    mdir[1] = (0.01f * _vdir[S_D] + 0.0071f * _vdir[Se_D] + 0.0071f * _vdir[Sw_D] - 0.01f * _vdir[N_D] - 0.0071f * _vdir[Ne_D] - 0.0071f * _vdir[Nw_D]) * (real32_t)_renderer.dtime;
    mdir[2] =  0.0f;
}

void key_callback(window_t *window, int32_t key, int32_t scancode, int32_t action, int32_t mods)
{
    //* Exit
    if (key == GLFW_KEY_END && action == GLFW_PRESS)
    {
        glfwSetWindowShouldClose(window, GLFW_TRUE);
    }
    //* Print Time
    if (key == GLFW_KEY_F1 && (action == GLFW_PRESS || action == GLFW_REPEAT))
    {
        mtime_arrsec(&(_renderer.timer));
        mtime_printtime(_renderer.timer);
    }
    //* Change Polygone Mode
    if (key == GLFW_KEY_F2 && action == GLFW_PRESS)
    {
        if (_polygonemode == GL_LINE)
        {
            glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
            _polygonemode = GL_FILL;
        }
        else if (_polygonemode == GL_FILL)
        {
            glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
            _polygonemode = GL_LINE;
        }
    }
    // //* Add Entity
    // if (key == GLFW_KEY_EQUAL && mods == GLFW_MOD_SHIFT && action == GLFW_PRESS)
    // {
    //     // renderer_addvbo(renderer, sizeof(square), (void*)square, GL_STATIC_DRAW, GL_FLOAT, 2, 2 * sizeof(point_t), GL_FALSE);
    //     // renderer_vertexatribpointer(renderer, S_VB, 2, (void*)(sizeof(point_t)));
    //     // renderer_addebo(renderer, sizeof(squareIndeces), (uint32_t*)squareIndeces, GL_STATIC_DRAW);
    //     // renderer_add2dtexture(renderer, "rcs/textures/rose_galaxy_mini.png", SLOT0);
    //     // // renderer_add2dtexture(renderer, "rcs/textures/galaxy_mini.png", SLOT0);
    //     // // renderer_add2dtexture(renderer, "rcs/textures/nebulae_mini.png", SLOT0);
    //     // renderer_addprogram(renderer, "src/shaders/square.shader");
    //     // int32_t s_u_mvp   = renderer_shaderuniformlocation(renderer, S_PROGRAM, "u_mvp");
    //     // int32_t u_texture = renderer_shaderuniformlocation(renderer, S_TEXTURE, "u_texture");

    //     // renderer_addvbo(renderer, sizeof(octagone), (void*)octagone, GL_STATIC_DRAW, GL_FLOAT, 2, sizeof(point_t), GL_FALSE);
    //     // renderer_addebo(renderer, sizeof(octagoneIndeces), (uint32_t*)octagoneIndeces, GL_STATIC_DRAW);
    //     // renderer_addprogram(renderer, "src/shaders/octagone.shader");
    //     // int32_t o_u_mvp = renderer_shaderuniformlocation(renderer, O_PROGRAM, "u_mvp");
    //     // int32_t u_color = renderer_shaderuniformlocation(renderer, O_PROGRAM, "u_color");
    //     mtime_arrsec(&(_renderer.timer));
    //     mtime_printtime(_renderer.timer);
    // }
    //* Zoom
    if (key == GLFW_KEY_PAGE_DOWN && action == GLFW_PRESS)
    {
        _zoom[F_D] = true;
    }
    if (key == GLFW_KEY_PAGE_UP && action == GLFW_PRESS)
    {
        _zoom[B_D] = true;
    }
    if (key == GLFW_KEY_PAGE_DOWN && action == GLFW_RELEASE)
    {
        _zoom[F_D] = false;
    }
    if (key == GLFW_KEY_PAGE_UP && action == GLFW_RELEASE)
    {
        _zoom[B_D] = false;
    }
    //* View Direction
    if ((key == GLFW_KEY_UP && key == GLFW_KEY_LEFT) && action == GLFW_PRESS)
    {
        _vdir[Nw_D] = true;
    }
    if ((key == GLFW_KEY_UP && key == GLFW_KEY_RIGHT) && action == GLFW_PRESS)
    {
        _vdir[Ne_D] = true;
    }
    if ((key == GLFW_KEY_DOWN && key == GLFW_KEY_LEFT) && action == GLFW_PRESS)
    {
        _vdir[Sw_D] = true;
    }
    if ((key == GLFW_KEY_DOWN && key == GLFW_KEY_RIGHT) && action == GLFW_PRESS)
    {
        _vdir[Se_D] = true;
    }
    if (key == GLFW_KEY_UP && action == GLFW_PRESS)
    {
        _vdir[N_D] = true;
    }
    if (key == GLFW_KEY_DOWN && action == GLFW_PRESS)
    {
        _vdir[S_D] = true;
    }
    if (key == GLFW_KEY_LEFT && action == GLFW_PRESS)
    {
        _vdir[W_D] = true;
    }
    if (key == GLFW_KEY_RIGHT && action == GLFW_PRESS)
    {
        _vdir[E_D] = true;
    }
    if ((key == GLFW_KEY_UP && key == GLFW_KEY_LEFT) && action == GLFW_RELEASE)
    {
        _vdir[Nw_D] = false;
    }
    if ((key == GLFW_KEY_UP && key == GLFW_KEY_RIGHT) && action == GLFW_RELEASE)
    {
        _vdir[Ne_D] = false;
    }
    if ((key == GLFW_KEY_DOWN && key == GLFW_KEY_LEFT) && action == GLFW_RELEASE)
    {
        _vdir[Sw_D] = false;
    }
    if ((key == GLFW_KEY_DOWN && key == GLFW_KEY_RIGHT) && action == GLFW_RELEASE)
    {
        _vdir[Se_D] = false;
    }
    if (key == GLFW_KEY_UP && action == GLFW_RELEASE)
    {
        _vdir[N_D] = false;
    }
    if (key == GLFW_KEY_DOWN && action == GLFW_RELEASE)
    {
        _vdir[S_D] = false;
    }
    if (key == GLFW_KEY_LEFT && action == GLFW_RELEASE)
    {
        _vdir[W_D] = false;
    }
    if (key == GLFW_KEY_RIGHT && action == GLFW_RELEASE)
    {
        _vdir[E_D] = false;
    }
    //* Mouvement Direction
    if ((key == GLFW_KEY_W && key == GLFW_KEY_A) && action == GLFW_PRESS)
    {
        _mdir[Nw_D] = true;
    }
    if ((key == GLFW_KEY_W && key == GLFW_KEY_D) && action == GLFW_PRESS)
    {
        _mdir[Ne_D] = true;
    }
    if ((key == GLFW_KEY_S && key == GLFW_KEY_A) && action == GLFW_PRESS)
    {
        _mdir[Sw_D] = true;
    }
    if ((key == GLFW_KEY_S && key == GLFW_KEY_D) && action == GLFW_PRESS)
    {
        _mdir[Se_D] = true;
    }
    if (key == GLFW_KEY_W && action == GLFW_PRESS)
    {
        _mdir[N_D] = true;
    }
    if (key == GLFW_KEY_S && action == GLFW_PRESS)
    {
        _mdir[S_D] = true;
    }
    if (key == GLFW_KEY_A && action == GLFW_PRESS)
    {
        _mdir[W_D] = true;
    }
    if (key == GLFW_KEY_D && action == GLFW_PRESS)
    {
        _mdir[E_D] = true;
    }
    if ((key == GLFW_KEY_W && key == GLFW_KEY_A) && action == GLFW_RELEASE)
    {
        _mdir[Nw_D] = false;
    }
    if ((key == GLFW_KEY_W && key == GLFW_KEY_D) && action == GLFW_RELEASE)
    {
        _mdir[Ne_D] = false;
    }
    if ((key == GLFW_KEY_S && key == GLFW_KEY_A) && action == GLFW_RELEASE)
    {
        _mdir[Sw_D] = false;
    }
    if ((key == GLFW_KEY_S && key == GLFW_KEY_D) && action == GLFW_RELEASE)
    {
        _mdir[Se_D] = false;
    }
    if (key == GLFW_KEY_W && action == GLFW_RELEASE)
    {
        _mdir[N_D] = false;
    }
    if (key == GLFW_KEY_S && action == GLFW_RELEASE)
    {
        _mdir[S_D] = false;
    }
    if (key == GLFW_KEY_A && action == GLFW_RELEASE)
    {
        _mdir[W_D] = false;
    }
    if (key == GLFW_KEY_D && action == GLFW_RELEASE)
    {
        _mdir[E_D] = false;
    }
}

#endif // EVENT_H_INCLUDED
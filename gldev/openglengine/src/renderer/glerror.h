#ifndef   GLERROR_H_INCLUDED
#define   GLERROR_H_INCLUDED

#include <stdmoh.h>
#include <stderr.h>
#define GLEW_STATIC
#include <GL/glew.h>

#ifdef _DEBUG
    #define GLCALL(x) glClearError();     \
                      x;                  \
                      ASSERT(glLogCall());
#elif _RELEASE
    #define GLCALL(x) x;
#else
    #define GLCALL(x) x;
#endif // _DEBUG

static void glClearError()
{
    while (glGetError() != GL_NO_ERROR);
}
static bool_t glLogCall()
{
    uint64_t error;
    bool_t good = true;
    while ((error = glGetError()) != 0)
    {
        LOG_ERROR("[OpenGL Error] (%lu)", error)
        good = false;
    }

    return good;
}

#endif // GLERROR_H_INCLUDED
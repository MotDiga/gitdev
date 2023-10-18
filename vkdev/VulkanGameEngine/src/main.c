#include <stdmoh.h>
#include <stderr.h>
#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>
#include <cglm/cglm.h>

int32_t main(int32_t argc, string_t argv[])
{
    puts("Salam Alicom");

    glfwInit();
    glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);
    GLFWwindow *window = glfwCreateWindow(960, 540, "VulkanGameEngine", NULL, NULL);

    uint32_t extensionCount = 0;
    vkEnumerateInstanceExtensionProperties(NULL, &extensionCount, NULL);

    LOG_INFO("%u extensions supported", extensionCount);

    mat4 mat = GLM_MAT4_ZERO_INIT;
    vec4 vec = GLM_VEC4_ONE_INIT;
    vec4 test;
    glm_mat4_mulv(mat, vec, test);
    LOG_TRACE("test = mat * vec = {%.0f, %.0f, %.0f, %.0f}", test[0], test[1], test[2], test[3]);

    while (!glfwWindowShouldClose(window))
    {
        glfwPollEvents();
    }

    glfwDestroyWindow(window);
    glfwTerminate();

    return 0;
}
#include <iostream>
#include <string>
#include <fstream>
#include <sstream>
#include <unordered_map>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#define STB_IMAGE_IMPLEMENTATION
#include <stb_image/stb_image.h>

#define FPS_60 1
#define FPS_30 2

typedef struct
{
    const std::string VertexSource;
    const std::string FragmentSource;

} ShaderSource;

static ShaderSource ParseShader(const std::string& filePath)
{
    std::ifstream stream(filePath);

    enum class ShaderType
    {
        NONE = -1, VERTEX = 0, FRAGMENT = 1
    };

    std::string line;
    std::stringstream ss[2];
    ShaderType type = ShaderType::NONE;
    while (getline(stream, line))
    {
        if (line.find("#shader") != std::string::npos)
        {
            if (line.find("vertex") != std::string::npos)
            {
                type = ShaderType::VERTEX;
            }
            else if (line.find("fragment") != std::string::npos)
            {
                type = ShaderType::FRAGMENT;
            }
        }
        else
        {
            ss[(int)type] << line << std::endl;
        }
    }

    return { ss[0].str(), ss[1].str() };
}

static unsigned int CompileShader(unsigned int type, const std::string& source)
{
    unsigned int id = glCreateShader(type);
    const char* str = source.c_str();
    glShaderSource(id, 1, &str, NULL);
    glCompileShader(id);

    int result;
    glGetShaderiv(id, GL_COMPILE_STATUS, &result);
    if (result == GL_FALSE)
    {
        int length;
        glGetShaderiv(id, GL_INFO_LOG_LENGTH, &length);
        char* message = new char[length];
        glGetShaderInfoLog(id, length, &length, message);
        printf("Failed to compile %s shader\n%s\n", (type == GL_VERTEX_SHADER ? "vertex" : "fragment"), message);

        delete[] message;
        glDeleteShader(id);
        return 0;
    }

    return id;
}

static unsigned int CreateShader(const std::string& vertex_shader, const std::string& fragment_shader)
{
    unsigned int shader = glCreateProgram();
    unsigned int vs = CompileShader(GL_VERTEX_SHADER, vertex_shader);
    unsigned int fs = CompileShader(GL_FRAGMENT_SHADER, fragment_shader);

    glAttachShader(shader, vs);
    glAttachShader(shader, fs);
    glLinkProgram(shader);
    glValidateProgram(shader);

    glDeleteShader(vs);
    glDeleteShader(fs);

    return shader;
}

void rainbowRGBf(float &r, float &dr, float &g, float &dg, float &b, float &db)
{
    if (r < 0.0f || r > 1.0f)
        dr *= -1;
    r += dr;

    if (g < 0.0f || g > 1.0f)
        dg *= -1;
    g += dg;

    if (b < 0.0f || b > 1.0f)
        db *= -1;
    b += db;
}

int main(void)
{
    if (!glfwInit())
        return -1;

    GLFWwindow* window = glfwCreateWindow(960, 540, "Realities", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }

    int display_w, display_h;

    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    glfwMakeContextCurrent(window);

    glfwSwapInterval(FPS_60);

    unsigned int glewError = glewInit();
    if (glewError != GLEW_OK)
    {
        fprintf(stderr, "Error: %s\n", glewGetErrorString(glewError));
    }
    printf("Status: Using GL %s\n", glGetString(GL_VERSION));
    printf("Status: Using GLEW %s\n\n\n", glewGetString(GLEW_VERSION));

    // Object ( and its indeces )

    float points[] = {               // Octagone            // Squer
        -0.5f, -0.5f,  0.0f,  0.0f,  // 0                   // 0
         0.0f, -0.7f,  0.5f,  0.0f,  // 1
         0.5f, -0.5f,  1.0f,  0.0f,  // 2                   // 1
         0.7f,  0.0f,  1.0f,  0.5f,  // 3
         0.5f,  0.5f,  1.0f,  1.0f,  // 4                   // 2
         0.0f,  0.7f,  0.5f,  1.0f,  // 5
        -0.5f,  0.5f,  0.0f,  1.0f,  // 6                   // 3
        -0.7f,  0.0f,  0.5f,  0.0f   // 7
    };

    unsigned int octagone[] =
    {
        0, 1, 2,  // 0
        0, 2, 3,  // 1
        0, 3, 4,  // 2
        0, 4, 5,  // 3
        0, 5, 6,  // 4
        0, 6, 7   // 5
    };
    unsigned int squer[] =
    {
        0, 2, 4,  // 0
        4, 6, 0   // 1
    };

    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    //VertexArray va;
    unsigned int va_1;
    glGenVertexArrays(1, &va_1);
    //VertexBuffer vb(points, 4 * 8 * sizeof(float));
    unsigned int vb_1;
    glGenBuffers(1, &vb_1);
    glBindBuffer(GL_ARRAY_BUFFER, vb_1);
    glBufferData(GL_ARRAY_BUFFER, 8*4*sizeof(float), points, GL_STATIC_DRAW);

    //VertexBufferLayout layout;
    //layout.Push<float>(2);
    //layout.Push<float>(2);
    //va.AddBuffer(vb, layout);
    glBindVertexArray(va_1);
    glBindBuffer(GL_ARRAY_BUFFER, vb_1);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 2, GL_FLOAT, false, (2+2)*sizeof(float), 0);
    glEnableVertexAttribArray(1);
    glVertexAttribPointer(1, 2, GL_FLOAT, false, (2+2)*sizeof(float), (const void*)(2*sizeof(float)));

    //IndexBuffer ib_o(Octagone, 3 * 6);
    //IndexBuffer ib_s(Squer, 3 * 2);
    unsigned int ib_o;
    glGenBuffers(1, &ib_o);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ib_o);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, 6*3*sizeof(unsigned int), octagone, GL_STATIC_DRAW);
    unsigned int ib_s;
    glGenBuffers(1, &ib_s);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ib_s);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, 2*3*sizeof(unsigned int), squer, GL_STATIC_DRAW);

    glm::mat4 proj = glm::ortho(-5.333f * 0.333f, 5.333f * 0.333f, -3.0f * 0.333f, 3.0f * 0.333f, -1.0f, 1.0f);

    std::unordered_map<std::string, int> uniforms_location_b;
    //ShaderUtil shader_b("res/shaders/Basic.shader");
    //shader_b.Bind();
    //shader_b.GetUniformLocation("u_color");
    //shader_b.UnBind();
    ShaderSource source_b = ParseShader("rcs/shaders/Basic.shader");
    //printf("#SHADER vertex :\n%s#SHADER fragment :\n%s\n\n", source_b.VertexSource.c_str(), source_b.FragmentSource.c_str());
    unsigned int shader_b = CreateShader(source_b.VertexSource, source_b.FragmentSource);
    glUseProgram(shader_b);
    uniforms_location_b["u_color"] = glGetUniformLocation(shader_b, "u_color");

    std::unordered_map<std::string, int> uniforms_location_c;
    //ShaderUtil shader_c("res/shaders/Complex.shader");
    //shader_c.Bind();
    //shader_c.GetUniformLocation("u_texture");
    //shader_c.GetUniformLocation("u_MVP");
    //shader_c.SetUniformMat4f("u_MVP", proj);
    ShaderSource source_c = ParseShader("rcs/shaders/Complex.shader");
    //printf("#SHADER vertex :\n%s#SHADER fragment :\n%s\n\n", source_c.VertexSource.c_str(), source_c.FragmentSource.c_str());
    unsigned int shader_c = CreateShader(source_c.VertexSource, source_c.FragmentSource);
    glUseProgram(shader_c);
    uniforms_location_c["u_texture"] = glGetUniformLocation(shader_c, "u_texture");
    uniforms_location_c["u_MVP"] = glGetUniformLocation(shader_c, "u_MVP");
    glUniformMatrix4fv(uniforms_location_c["u_MVP"], 1, GL_FALSE, &proj[0][0]);

    //TextureUtil texture("res/textures/Galaxy.png");
    //texture.Bind(0);                        // Bind the Slot0
    //shader_c.SetUniform1i("u_texture", 0);  // Set  the Slot0
    const std::string& texture_path = "rcs/textures/Galaxy.png";
    //const char* texture_path = "Project/rcs/textures/Galaxy.png";
    int texture_width, texture_height, texture_BPP; // BPP = Byte Per Pixel
    stbi_set_flip_vertically_on_load(1);
    unsigned char* local_buffer = stbi_load(texture_path.c_str(), &texture_width, &texture_height, &texture_BPP, 4);

    unsigned int texture;
    glGenTextures(1, &texture);
    glBindTexture(GL_TEXTURE_2D, texture);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, texture_width, texture_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, local_buffer);
    glBindTexture(GL_TEXTURE_2D, 0);

    //if (local_buffer)
    //    stbi_image_free(local_buffer);

    unsigned int slot(0);                             // Slot = 0
    glActiveTexture(GL_TEXTURE0 + slot);              // Slot = 0
    glBindTexture(GL_TEXTURE_2D, texture);

    glUniform1i(uniforms_location_c["u_texture"], 0); // Slot = 0

    //va.UnBind();
    //vb.UnBind();
    //ib_o.UnBind();
    //ib_s.UnBind();
    //shader_c.UnBind();
    //texture.UnBind();
    glBindVertexArray(0);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
    glUseProgram(0);
    glBindTexture(GL_TEXTURE_2D, 0);



    float r = 0.0f, g = 0.667f, b = 0.667f, a = 0.5f, increment = 0.016f;
    float dr = increment, dg = increment, db = -increment;
    //shader_b.SetUniform4f("u_color", r, g, b, 0.5f);
    glUniform4f(uniforms_location_b["u_color"], r, g, b, 0.5f);

    while (!glfwWindowShouldClose(window))
    {
        glClear(GL_COLOR_BUFFER_BIT);

        glfwGetFramebufferSize(window, &display_w, &display_h);
        glViewport(0, 0, display_w, display_h);
        glClearColor(0.0f, 0.0f, 0.2f, 1.0f);

        //renderer.Draw(va, ib_s, shader_c);
        //texture.Bind(0);
        glBindVertexArray(va_1);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ib_s);
        glUseProgram(shader_c);
        glActiveTexture(GL_TEXTURE0 + slot);
        glBindTexture(GL_TEXTURE_2D, texture);

        glDrawElements(GL_TRIANGLES, 2*3, GL_UNSIGNED_INT, NULL);

        //renderer.Draw(va, ib_o, shader_b);
        //shader_b.SetUniform4f("u_color", r, g, b, 0.5f);
        glBindVertexArray(va_1);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ib_o);
        glUseProgram(shader_b);
        rainbowRGBf(r, dr, g, dg, b, db);
        glUniform4f(uniforms_location_b["u_color"], r, g, b, a);

        glDrawElements(GL_TRIANGLES, 6*3, GL_UNSIGNED_INT, NULL);

        glfwSwapBuffers(window);

        glfwPollEvents();
    }

    glDeleteVertexArrays(1, &va_1);
    glDeleteBuffers(1, &vb_1);
    glDeleteBuffers(1, &ib_o);
    glDeleteBuffers(1, &ib_s);
    glDeleteProgram(shader_b);
    glDeleteProgram(shader_c);
    glDeleteTextures(1, &texture);

    glfwDestroyWindow(window);
    glfwTerminate();

    return 0;
}

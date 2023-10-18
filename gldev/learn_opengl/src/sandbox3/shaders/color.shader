#shader vertex
#version 330 core

layout(location = 0) in vec3 point;
layout(location = 1) in vec2 u_TextureCoord;

out vec2 v_TextureCoord;
uniform mat4 u_Mvp;

void main()
{
    gl_Position = u_Mvp * vec4(point, 1.0f);
    v_TextureCoord = u_TextureCoord;
}

#shader fragment
#version 330 core

out vec4 color;

in vec2 v_TextureCoord;
uniform sampler2D u_Texture;

void main()
{
    color = texture(u_Texture, v_TextureCoord);
}
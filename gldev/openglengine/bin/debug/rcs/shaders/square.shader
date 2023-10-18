#shader vertex
#version 330 core

layout(location = 1) in vec4 position;
layout(location = 2) in vec2 textureCoord;

out vec2 v_TextureCoord;
uniform mat4 u_mvp;

void main()
{
    gl_Position = u_mvp * position;
    v_TextureCoord = textureCoord;
}

#shader fragment
#version 330 core

layout(location = 0) out vec4 color;

in vec2 v_TextureCoord;
uniform sampler2D u_texture;

void main()
{
    color = texture(u_texture, v_TextureCoord);
}
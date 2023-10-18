#shader vertex
#version 330 core

layout(location = 0) in vec3 point;
layout(location = 1) in vec2 u_TextureCoord;

// uniform vec2 u_Translate;
// out vec4 position;
out vec2 v_TextureCoord;
uniform mat4 u_Mvp;

void main()
{
    // gl_Position = vec4(point.x + u_Translate.x, point.y + u_Translate.y, point.z, 1.0f);
    // position = gl_Position;
    gl_Position = u_Mvp * vec4(point, 1.0f);
    v_TextureCoord = u_TextureCoord;
}

#shader fragment
#version 330 core

out vec4 color;

uniform vec3 u_Color;
// in vec4 position;
in vec2 v_TextureCoord;
uniform sampler2D u_Texture1;
uniform sampler2D u_Texture2;

void main()
{
    // color = vec4(u_Color, 1.0f);
    // color = vec4(position.xy/2.0f + 0.5f, 0.0f, 1.0f);
    // color = texture(u_Texture1, v_TextureCoord) * vec4(u_Color, 1.0f);
    color = mix(texture(u_Texture1, v_TextureCoord), texture(u_Texture2, v_TextureCoord), (u_Color.x + 1.0f)/2);
}
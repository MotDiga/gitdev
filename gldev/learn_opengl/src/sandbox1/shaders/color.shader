#shader vertex
#version 330 core

layout(location = 0) in vec3 point;

uniform vec2 u_Translate;
out vec4 position;

void main()
{
    position = vec4(point.x + u_Translate.x, point.y + u_Translate.y, point.z, 1.0f);
    gl_Position = position;
}

#shader fragment
#version 330 core

out vec4 color;

uniform vec3 u_Color;
in vec4 position;

void main()
{
    // color = vec4(u_Color, 1.0f);
    color = vec4(position.xy/2.0f + 0.5f, 0.0f, 1.0f);
}
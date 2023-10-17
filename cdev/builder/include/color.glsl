#shader vertex
#version 430 core

layout(location = 0) in vec3 point;

void main()
{
    gl_Position = vec4(point.x, point.y, point.z, 1.0f);
}

#shader fragment
#version 430 core

out vec4 color;

uniform vec3 u_color;

void main()
{
    color = vec4(u_color, 1.0f);
}
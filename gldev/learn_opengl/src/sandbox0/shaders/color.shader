#shader vertex
#version 330 core

layout(location = 0) in vec3 point;
layout(location = 1) in vec4 colors;

out vec4 pcolor;

void main()
{
    gl_Position = vec4(point.x, point.y, point.z, 1.0f);
    pcolor = colors;
}

#shader fragment
#version 330 core

out vec4 color;
in vec4 pcolor;

void main()
{
    color = pcolor;
}
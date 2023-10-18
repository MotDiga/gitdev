#shader vertex
#version 330 core

layout(location = 0) in vec3 point;
out vec3 uvcolor;

void main()
{
    gl_Position = vec4(point.x, point.y, point.z, 1.0f);
    uvcolor = point;
}

#shader fragment
#version 330 core

out vec4 color;
in vec3 uvcolor;

void main()
{
    // color = vec4(1.0f, 0.5f, 0.2f, 1.0f);
    color = vec4(uvcolor.x - uvcolor.y, uvcolor.y + 0.5f, - uvcolor.x - uvcolor.y, 1.0f);
}
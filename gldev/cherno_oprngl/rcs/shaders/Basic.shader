#shader vertex
#version 330

layout(location = 0)in vec4 position;

void main()
{
	gl_Position = position;
}

#shader fragment
#version 330

layout(location = 0)out vec4 color;

uniform vec4 u_color = vec4(0.5f, 0.5f, 0.5f, 0.5f);

void main()
{
	color = u_color;
}
#shader vertex
#version 330

layout(location = 0)in vec4 position;
layout(location = 1)in vec2 textCoor;

out vec2 v_textCoor;

uniform mat4 u_MVP;

void main()
{
	gl_Position = u_MVP * position;
	v_textCoor = textCoor;
}

#shader fragment
#version 330

layout(location = 0)out vec4 color;

in vec2 v_textCoor;

uniform sampler2D u_texture;

void main()
{
	vec4 textColor = texture(u_texture, v_textCoor);
	color = textColor;
}
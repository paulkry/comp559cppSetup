#version 430 core

in vec3 vNor;
layout(location = 0) out vec4 diffuseColor;

void main()
{
	vec3 normal = normalize(vNor);
	// Map normal in the range [-1, 1] to color in range [0, 1];
	vec3 color = 0.5*normal + 0.5;
	diffuseColor = vec4(color, 1.0);
}

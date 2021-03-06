#version 330 compatibility 

out vec2 texture_coordinate;

out vec3 P;
//varying out vec3 N;

layout(location=0) in vec4 position;
layout(location=8) in vec2 texcoord;

void main()
{
	//set the position of the current vertex
	P = (gl_ModelViewMatrix * position).xyz;
	gl_Position = gl_ModelViewProjectionMatrix * position;

	//transform the normal into eye space and normalize the result
	//N =  normalize(gl_NormalMatrix * gl_Normal); 

	texture_coordinate = texcoord; 
}
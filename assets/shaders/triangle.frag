#version 410 core

out vec4 FragColor;

in vec2 texCoords;

uniform Sampler2D tex;

void main()
{
    FragColor = texture(tex, texCoords);
}
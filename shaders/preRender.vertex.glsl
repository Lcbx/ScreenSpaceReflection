#version 330
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normals;
layout (location = 2) in vec2 textures;

out vec4 pos;
out vec4 normal;
out vec2 texCoord;
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    gl_Position = projection * view * model * vec4(position, 1.0f);
    pos = view * model * vec4(position, 1.0f);
    normal = view * model * vec4(normals, 1.0f);
    texCoord = textures;
}

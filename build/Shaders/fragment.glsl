#version 330 core
in vec2 vUV;
out vec4 FragColor;

uniform sampler2D uTex;
uniform vec3 lightColour;  

void main() {
    float ambientStrength = 0.3;      // 
    vec3 ambient = ambientStrength * lightColour;
    FragColor = texture(uTex, vUV) * vec4(ambient, 1.0);
}

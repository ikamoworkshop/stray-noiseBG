uniform float uTime;
uniform vec4 resolution;

varying vec2 vUv;
varying vec3 vPosition;

void main(){
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);
    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;

    gl_Position = projectionPosition;

    float timeFactor = sin(uTime);
    float hue = mod(timeFactor, 1.0);
    
    vPosition = position;
    vUv = uv;
}
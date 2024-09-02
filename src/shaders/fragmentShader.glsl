precision mediump float;
uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution.xy;
  
  // Calculate distance from mouse position
  float dist = distance(st, u_mouse / u_resolution);

  // Create a simple hover effect
  vec3 color = vec3(0.0);
  color += smoothstep(0.01, 0.1, dist) * vec3(1.0, 0.0, 0.0); // Red color effect
  
  gl_FragColor = vec4(color, 1.0);
}

precision mediump float;
uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

void main() {
  // Normalize the fragment coordinates based on the aspect ratio
  vec2 aspectRatio = vec2(u_resolution.x / u_resolution.y, 1.0);
  vec2 st = (gl_FragCoord.xy / u_resolution.xy) * aspectRatio;
  
  // Normalize the mouse coordinates
  vec2 mouse = (u_mouse / u_resolution.xy) * aspectRatio;

  // Calculate distance from mouse position
  float dist = distance(st, mouse);

  // Create the background color
  vec3 color = vec3(1.0, 0.5, 0.0); 
  
  // Create hover effect based on distance
  color = mix(vec3(1.0), color, smoothstep(0.01, 0.1, dist)); 
  
  gl_FragColor = vec4(color, 1.0);
}

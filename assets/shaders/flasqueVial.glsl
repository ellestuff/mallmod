uniform vec3 flasqueColour;
uniform float flasqueFill;
uniform float flasqueTimer;

vec3 col = vec3(121,31,31)/255.; // Colour of highlights

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords ) {
	vec4 c = Texel(texture, texture_coords);

	float flow = (sin(flasqueTimer+texture_coords.x*8.))*0.01;
	
	c = c.rgb==col ? (texture_coords.y+flow<flasqueFill ? vec4(0.) : vec4(flasqueColour,1.)) : c;
	return c*color;
}
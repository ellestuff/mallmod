uniform vec3 flasqueColour;
uniform float flasqueFill;
uniform float flasqueTimer;

// Sprite dims = 73x39

vec3 cTransparent = vec3(121,31,31)/255.; // Colour of transparent
vec3 cHighlight = vec3(255,75,75)/255.; // Colour of highlights

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords ) {
	vec4 c = Texel(texture, texture_coords);

	float flow = (sin(flasqueTimer+texture_coords.x*8.))*0.04;
	
	c = c.rgb==cHighlight ? vec4(flasqueColour,1.) : c;
	c = c.rgb==cTransparent ? (texture_coords.y+flow<flasqueFill ? vec4(0.) : vec4(flasqueColour*(texture_coords.y+flow-1./39.<flasqueFill ? 1. : .4),1.)) : c ;
	return c*color;
}
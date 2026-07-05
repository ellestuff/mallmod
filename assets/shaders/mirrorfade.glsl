vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords ) {
	vec4 c = Texel(texture, texture_coords);

	return c*color*vec4(1.,1.,1.,texture_coords.y);
}
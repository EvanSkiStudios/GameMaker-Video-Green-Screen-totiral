//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	
	vec4 base = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 colorgreen = vec4(15., 223., 93., 255.) / 255.;
	
	if (base.g >= colorgreen.g) discard;
	
    gl_FragColor = base;
}

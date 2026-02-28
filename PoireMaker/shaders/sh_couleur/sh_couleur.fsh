//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 u_vColor;

void main()
{
    gl_FragColor = u_vColor * texture2D( gm_BaseTexture, v_vTexcoord );
}

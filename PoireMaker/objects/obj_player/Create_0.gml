padding = 20

function reset(){
	x = room_width/2
	y = room_height/2
	image_angle = 0
}

r = 1.0
g = 1.0
b = 1.0

u_color = shader_get_uniform(sh_couleur, "u_vColor"); 
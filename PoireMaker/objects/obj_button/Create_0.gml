selected = false
temps = 0
rot = 0
is_visible = true

show_helper_text = false

sprite_icon = noone
index_icon = 0

helper_text = ""

depth -= 1

function onHovered(){
	image_index = 1
	show_helper_text = true
}

function onNotHovered(){
	image_index = 0
}

function onClicked(){
	//code redéfini dans l'enfant
}

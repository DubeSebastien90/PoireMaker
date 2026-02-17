if MAKING{
	if keyboard_check_pressed(ord("Q")) {
		var player = instance_create_layer(room_width/2,room_height/2,"Instances",obj_player)
		obj_image_picker.selectPlayer(player)
	}

	if keyboard_check_pressed(ord("W")) {
		obj_image_picker.selectBackground()
	}
} else{
	if keyboard_check_released(vk_escape){
		MAKING = true
	}
}


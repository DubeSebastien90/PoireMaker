//controls
if MAKING{
	if keyboard_check_pressed(ord("Q")) {
		instance_destroy(obj_player)
		var player = instance_create_layer(room_width/2,room_height/2,"Instances",obj_player)
		obj_image_picker.selectPlayer(player)
	}

	if keyboard_check_pressed(ord("W")) {
		var background = instance_create_layer(room_width/2,room_height/2,"back",obj_background)
		obj_image_picker.selectBackground(background)
	}
	
	if keyboard_check_pressed(ord("E")) {
		obj_image_picker.selectMusic()
	}
} else{
	if keyboard_check_released(vk_escape){
		end_game()
	}
}

//utils
if keyboard_check_released(vk_tab){
	window_set_fullscreen(!window_get_fullscreen())
}


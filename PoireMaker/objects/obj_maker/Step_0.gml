//controls
if MAKING{
	if keyboard_check_pressed(ord("Q")) {
		setup_player("")
	}

	if keyboard_check_pressed(ord("W")) {
		setup_background("")
	}
	
	if keyboard_check_pressed(ord("E")) {
		setup_music("")
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


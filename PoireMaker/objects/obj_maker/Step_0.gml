//controls
if MAKING{
} else{
	if keyboard_check_released(vk_escape){
		end_game()
	}
}

//utils
if keyboard_check_released(vk_tab){
	window_set_fullscreen(!window_get_fullscreen())
}


//controls
if MAKING{
} else{
	if keyboard_check_released(vk_escape) && obj_project.DEV{
		end_game()
	}
	timer += 1
}


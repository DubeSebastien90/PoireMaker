if keyboard_check_pressed(ord("N")) {
	prompt_id = get_string_async("Enter the name of your project:", "");
}

if keyboard_check_pressed(ord("L")){
	//load project
	read_json_project_file()
}
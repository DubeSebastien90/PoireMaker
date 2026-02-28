// In the Asynchronous Dialog Event
var _id = ds_map_find_value(async_load, "id");

if (_id == prompt_id) {
	var result_map = async_load;
	if (ds_map_find_value(result_map, "status")) {
		var user_input = ds_map_find_value(result_map, "result");
		project_name = user_input;
	
		show_message("Select the directory of your project")
	
		var _path = get_save_filename("Project File|*.json",  + "save_project.json");
    
		if (_path != "") {
			var _selected_dir = filename_dir(_path); 
        
			if (!directory_exists(_selected_dir)) {
				directory_create(_selected_dir);
			}
       
			dir = _selected_dir + "/";
		
			obj_main_menu.stop_music()
		
			room_goto(RoomGame)
		}
	
	}
}
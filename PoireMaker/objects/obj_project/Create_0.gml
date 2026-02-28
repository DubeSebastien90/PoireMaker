prompt_id = ""
project_name = ""

DEV = true

enum dataType {
	PLAYER,
	BACKGROUND,
	MUSIC,
	MESSAGE
}

function reset_memory(){
	data = {
		player_path: "",
		background_path: "",
		music_path: "",
		character_message: ""
	};
}


function save_json_project_file(){
	var _json_string = json_stringify(data, true);
	var _file = file_text_open_write(dir + project_name + "/save_project.json");
	file_text_write_string(_file, _json_string);
	file_text_close(_file);
	
	show_debug_message("Project saved: " + dir)
}

function edit_json_project_file(field, newData){
	if field = dataType.PLAYER{
		data.player_path = newData
	}
	if field = dataType.BACKGROUND{
		data.background_path = newData
	}
	if field = dataType.MUSIC{
		data.music_path = newData
	}
	if field = dataType.MESSAGE{
		data.character_message = newData
	}
	save_json_project_file()
}

function read_json_project_file(){
    var path = get_open_filename("Save|*.json", "");

    if (path != "" && file_exists(path)) {
        var _file = file_text_open_read(path);
        var _json_string = "";
        
        while (!file_text_eof(_file)) {
            _json_string += file_text_readln(_file);
        }
        file_text_close(_file);
        
        var _parsed_data = json_parse(_json_string);
        

        if (variable_struct_exists(_parsed_data, "player_path")) data.player_path = _parsed_data.player_path;
        if (variable_struct_exists(_parsed_data, "background_path")) data.background_path = _parsed_data.background_path;
        if (variable_struct_exists(_parsed_data, "music_path")) data.music_path = _parsed_data.music_path;
		if (variable_struct_exists(_parsed_data, "character_message")) data.character_message = _parsed_data.character_message;
		
		var _dir = filename_dir(path);

		project_name = filename_name(_dir);
		
		var _root_dir = filename_dir(_dir);
		
		dir = _root_dir + "\\"
		
		show_debug_message("Project loaded !");

		obj_main_menu.stop_music()

		room_goto(RoomGame)
    }
}

reset_memory()
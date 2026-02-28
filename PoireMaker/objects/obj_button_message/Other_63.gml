// In the Asynchronous Dialog Event
var _id = ds_map_find_value(async_load, "id");

if (_id == message_id) {
	var result_map = async_load;
	if (ds_map_find_value(result_map, "status")) {
		var user_input = ds_map_find_value(result_map, "result");
		obj_maker.character_message = user_input
		obj_project.edit_json_project_file(dataType.MESSAGE,user_input)
	}
}
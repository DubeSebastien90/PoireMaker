// In the Asynchronous Dialog Event
var result_map = async_load;
if (ds_map_find_value(result_map, "status")) {
    var user_input = ds_map_find_value(result_map, "result");
    project_name = user_input;
	room_goto(RoomGame)
}
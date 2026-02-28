MAKING = true

//audio
audio_stream = -1
audio = noone

function start_game(){
	MAKING = false
	if audio_stream != -1{
		audio = audio_play_sound(audio_stream,0,true)
	}
}

function end_game(){
	MAKING = true
	audio_stop_sound(audio)
	if instance_exists(obj_player){
		obj_player.reset()
	}
}

function setup_player(path){
	instance_destroy(obj_player)
	var player = instance_create_layer(room_width/2,room_height/2,"Instances",obj_player)
	obj_asset_picker.selectPlayer(player, path)
}

function setup_background(path){
	instance_destroy(obj_background)
	var background = instance_create_layer(room_width/2,room_height/2,"back",obj_background)
	obj_asset_picker.selectBackground(background, path)
}

function setup_music(path){
	obj_asset_picker.selectMusic(path)
}

function load_data(){
	if obj_project.data.player_path != ""{
		setup_player(obj_project.dir+obj_project.project_name+"\\"+obj_project.data.player_path)
	}
	if obj_project.data.background_path != ""{
		setup_background(obj_project.dir+obj_project.project_name+"\\"+obj_project.data.background_path)
	}
	if obj_project.data.music_path != ""{
		setup_music(obj_project.dir+obj_project.project_name+"\\"+obj_project.data.music_path)
	}
}

//ui
bs = sprite_get_width(spr_button)
tbp = 5 //top bar padding
tbbs = 3 //top bar button size

tbs = bs*tbbs + 2*tbp //top bar size

start_button = instance_create_layer(tbp + (bs*tbbs) /2,tbp + (bs*tbbs) /2,"ui",obj_button_start)


game_surface = -1;
view_surface_id[0] = game_surface;

load_data()
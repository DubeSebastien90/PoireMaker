MAKING = obj_project.DEV

//audio
audio_stream = -1
audio = noone

//message
character_message = ""

//timer
timer = 0

function start_game(){
	MAKING = false
	if audio_stream != -1{
		audio = audio_play_sound(audio_stream,0,true)
	}
	timer = 0
}

function end_game(){
	MAKING = true
	audio_stop_sound(audio)
	if instance_exists(obj_player){
		obj_player.reset()
	}
	timer = 0
}

function setup_player(path){
	var player = instance_create_layer(room_width/2,room_height/2,"Instances",obj_player)
	if obj_asset_picker.selectPlayer(player, path){
		var _new_id = player.id; // On stocke l'ID du petit nouveau
		with(obj_player) {
            if (id != _new_id) { 
                instance_destroy(); 
            }
        }
	} else{
		instance_destroy(player)
	}
}

function setup_background(path){
	var background = instance_create_layer(room_width/2,room_height/2,"back",obj_background)
	if obj_asset_picker.selectBackground(background, path){
		var _new_id = background.id; // On stocke l'ID du petit nouveau
		with(obj_background) {
            if (id != _new_id) { 
                instance_destroy(); 
            }
        }
	} else{
		instance_destroy(background)
	}
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
	if obj_project.data.character_message != ""{
		character_message = obj_project.data.character_message
	}
}

//ui
bs = sprite_get_width(spr_button)
tbp = 5 //top bar padding
tbbs = 3 //top bar button size

tbs = bs*tbbs + 2*tbp //top bar size

start_button = instance_create_layer(tbp + (bs*tbbs) /2,tbp + (bs*tbbs) /2,"ui",obj_button_start)
import_player_button = instance_create_layer(tbp*2 + (bs*tbbs)/2 + bs*tbbs,tbp + (bs*tbbs) /2,"ui",obj_button_import_player)
import_player__button = instance_create_layer(tbp*3 + (bs*tbbs)/2 + bs*tbbs*2,tbp + (bs*tbbs) /2,"ui",obj_button_import_background)
import_player__button = instance_create_layer(tbp*4 + (bs*tbbs)/2 + bs*tbbs*3,tbp + (bs*tbbs) /2,"ui",obj_button_import_music)
message_button =  instance_create_layer(tbp*5 + (bs*tbbs)/2 + bs*tbbs*4,tbp + (bs*tbbs) /2,"ui",obj_button_message)
exit_button = instance_create_layer(room_width - tbp - (bs*tbbs) /2,tbp + (bs*tbbs) /2,"ui",obj_button_exit)


game_surface = -1;
view_surface_id[0] = game_surface;

load_data()
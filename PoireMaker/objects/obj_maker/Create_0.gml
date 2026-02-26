MAKING = true

//audio
audio_stream = noone
audio = noone

function start_game(){
	MAKING = false
	if audio_stream != noone{
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

//ui
bs = sprite_get_width(spr_button)
tbp = 5 //top bar padding
tbbs = 3 //top bar button size

tbs = bs*tbbs + 2*tbp //top bar size

start_button = instance_create_layer(tbp + (bs*tbbs) /2,tbp + (bs*tbbs) /2,"ui",obj_button_start)


game_surface = -1;
view_surface_id[0] = game_surface;
cooldownPoireMax = 60
cooldownPoire = 0

randomise()

menu_music = audio_play_sound(snd_music_menu,10,true)

function stop_music(){
	audio_stop_sound(menu_music)
}
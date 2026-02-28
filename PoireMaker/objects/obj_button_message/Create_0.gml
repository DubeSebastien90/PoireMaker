/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Inherit the parent event
event_inherited();

image_xscale = 3
image_yscale = 3

sprite_icon = spr_icon
index_icon = 6

helper_text = "Write character message"

//overide
function onClicked(){
	message_id = get_string_async("Write your character's message","")
}
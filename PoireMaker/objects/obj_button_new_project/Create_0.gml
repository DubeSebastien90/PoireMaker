/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Inherit the parent event
event_inherited();

image_xscale = 15
image_yscale = 3

x = room_width/2
y = room_height/2 - 50

if obj_project.DEV = false{
	x = -1000
}


helper_text = "Create new game"

text_button = true

//overide
function onClicked(){
	obj_project.prompt_id = get_string_async("Enter the name of your project:", "");
}
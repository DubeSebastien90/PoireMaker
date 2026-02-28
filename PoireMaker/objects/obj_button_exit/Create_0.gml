/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Inherit the parent event
event_inherited();

image_xscale = 3
image_yscale = 3

sprite_icon = spr_icon
index_icon = 2

helper_text = "Save and exit to menu"

//overide
function onClicked(){
	obj_project.save_json_project_file()
	obj_project.reset_memory()
	room = RoomMenu
}
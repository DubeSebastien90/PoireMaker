/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Inherit the parent event
event_inherited();

image_xscale = 15
image_yscale = 3

x = room_width/2
y = room_height/2 + 50


helper_text = "Load existing project"

text_button = true

//overide
function onClicked(){
	show_message("Select the save_project.json file of your project")
	obj_project.read_json_project_file()
}
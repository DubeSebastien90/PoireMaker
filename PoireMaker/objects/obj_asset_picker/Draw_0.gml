draw_set_halign(fa_middle);
draw_set_valign(fa_center);
    
// On dessine par rapport au milieu de la surface (surf_w/2)
// et non par rapport à la room_width
if obj_maker.MAKING{
	draw_text(room_width / 2, room_height / 2, obj_project.project_name+"\nPress S to save\nPress Q to import a player image\nPress W to import a background\nPress E to import a music");
}
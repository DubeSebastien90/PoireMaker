var display_w = window_get_width();
var display_h = window_get_height();

// 2. Définir la zone d'affichage (Le "Layout")
var view_x = 0;
var view_y = 0;
var view_w = display_w;
var view_h = display_h;

if (MAKING) {
    
    // Dessiner le fond de l'UI (Menu de côté)
    draw_set_color(c_dkgray);
    draw_rectangle(0, 0, display_w, tbs, false);
    draw_set_color(c_white);

} else {
	if obj_project.DEV{
		draw_set_valign(fa_top)
		draw_set_halign(fa_left)
		var s = "Press escape to end"
	
		draw_set_color(c_dkgray);
		draw_rectangle(0, 0, string_width(s)+6, string_height(s)+6, false);
		draw_set_color(c_white);
		draw_text(3,3,s)
	}
}

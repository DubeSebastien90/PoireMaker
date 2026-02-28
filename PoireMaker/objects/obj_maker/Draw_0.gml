var display_w = window_get_width();
var display_h = window_get_height();

//message
if character_message != ""{
	draw_set_halign(fa_middle)
	draw_set_valign(fa_center)
	draw_set_color(c_dkgray);
	var _h = string_height(character_message)/2
	var _w = string_width(character_message)/2
	draw_set_alpha(0.7)
	draw_rectangle(room_width/2-_w-3,room_height-100-_h-3, room_width/2 + _w+3,room_height-100 + _h+3, false);
	draw_set_alpha(1)
	draw_set_color(c_white);
	draw_text(room_width/2,room_height-100, character_message)
}

//timer
draw_set_color(c_dkgray);
var t = "Timer: " + string_format(timer/60, 0, 2);
var _h = string_height(t)
var _w = string_width(t)
draw_set_alpha(0.7)
draw_rectangle(0,0,_w+6,_h+6, false);
draw_set_alpha(1)
draw_set_colour(c_white)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_text(3,3, t)

if (MAKING) {
    //UI making
    draw_set_color(c_dkgray);
    draw_rectangle(0, 0, display_w, tbs, false);
    draw_set_color(c_white);

} else {
	//UI dev mode
	if obj_project.DEV{
		draw_set_valign(fa_top)
		draw_set_halign(fa_right)
		var s = "Press escape to end"
	
		draw_set_color(c_dkgray);
		draw_rectangle(room_width, 0, room_width-(string_width(s)+6), string_height(s)+6, false);
		draw_set_color(c_white);
		draw_text(room_width-3,3,s)
	}
}


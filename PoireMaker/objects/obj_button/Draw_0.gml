if is_visible{
	draw_self()
	if text_button{
		draw_set_halign(fa_middle)
		draw_set_valign(fa_center)
		draw_text_transformed(x,y,helper_text,1,1,image_angle)
	} else{
		if (sprite_icon != noone){
			draw_sprite_ext(sprite_icon,index_icon,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
		}
		if show_helper_text{
		
			draw_set_valign(fa_top)
			draw_set_halign(fa_center)
			var _w = string_width(helper_text)/2 + 5
			var _x = min(room_width-_w,x)
			_x = max(_w,x)
		
			draw_set_color(c_dkgray);
			draw_rectangle(_x-_w-3, y+27, _x+_w+3, y+55, false);
			draw_set_color(c_white);
		
			draw_text(_x,y+30,helper_text)
		}
	}
}
if !obj_maker.MAKING{
	if place_meeting(x,y,obj_mouse){
		while(place_meeting(x,y,obj_mouse)){
			x = random_range(padding,room_width-padding)
			y = random_range(padding,room_height-padding)
		}
		image_angle = random_range(-10,10)
		r = irandom(127)/255 + 0.5
		g = irandom(127)/255 + 0.5
		b = irandom(127)/255 + 0.5
	}
}
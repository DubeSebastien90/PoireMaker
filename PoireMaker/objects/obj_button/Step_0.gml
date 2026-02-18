is_visible = obj_maker.MAKING

if position_meeting(mouse_x,mouse_y,self) && is_visible{
	onHovered()
	if mouse_check_button_pressed(mb_left){
		onClicked()
	}
	temps += 10
	rot = dsin(temps)*3
} else {
	onNotHovered()
	rot = lerp(0,rot,0.1)
	temps = 0
}

image_angle = rot
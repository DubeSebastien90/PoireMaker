cooldownPoire -= 1

if cooldownPoire < 0{
	cooldownPoire = cooldownPoireMax + random_range(-30,30)
	side = choose(0,1,2,3)
	if side == 0{
		var poire = instance_create_depth(-50,random_range(50,room_height-50),depth,poire_launcher)
		poire.direction = random_range(-35,35)
	}
	if side == 1{
		var poire = instance_create_depth(room_width+50,random_range(50,room_height-50),depth,poire_launcher)
		poire.direction = random_range(180-35,180+35)
	}
	if side == 2{
		var poire = instance_create_depth(random_range(50,room_width-50),-50,depth,poire_launcher)
		poire.direction = random_range(-90-35,-90+35)
	}
	if side == 3{
		var poire = instance_create_depth(random_range(50,room_width-50),room_height+50,depth,poire_launcher)
		poire.direction = random_range(90-35,90+35)
	}
}
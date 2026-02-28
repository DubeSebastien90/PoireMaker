image_angle = random_range(0,360)

angle_dir = choose(-1,1)*random_range(2,6)

life = 60*10

scale = random_range(3,8)
speed = random_range(3,5) * 5/(scale/3)


image_xscale = scale
image_yscale = scale

color = make_color_rgb(irandom(255), irandom(255), irandom(255));
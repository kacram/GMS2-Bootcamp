

x += (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * spd;
y += (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * spd;

image_angle = point_direction(x,y,mouse_x,mouse_y);

if(mouse_check_button_pressed(mb_left)){

	var proj = instance_create_layer(x, y, layer, obj_projectile);

	proj.speed = 10;
	proj.direction = image_angle;
	proj.image_angle = image_angle;

}

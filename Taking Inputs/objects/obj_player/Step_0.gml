
//moves the player left and right
x += (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * spd;

//moves the player up and down
y += (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * spd;


//sets the player's image_angle to point the player at the mouse
image_angle = point_direction(x,y,mouse_x,mouse_y);


//whenever the player clicks shoot a bullet at the mouse
if(mouse_check_button_pressed(mb_left)){
	
	
	//create the bullet and save it's id in _proj
	var _proj = instance_create_layer(x, y, layer, obj_projectile);
	
	//set the projectile speed to 10 pixels per frame
	_proj.speed = 10;
	//set the direction of the bullet to point towards the mouse
	_proj.direction = image_angle;
	//set the direction of the bullet sprite to point towards the mouse
	_proj.image_angle = image_angle;

}

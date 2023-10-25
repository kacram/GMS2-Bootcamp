/// @description Insert description here
// You can write your code in this editor

#region movement


hspd = spd * (keyboard_check(ord("D")) - keyboard_check(ord("A")));
vspd = spd * (keyboard_check(ord("S")) - keyboard_check(ord("W")));



if(place_meeting(x + hspd, y, obj_tile)){
	
	hspd = 0;
	
}

if(place_meeting(x, y + vspd, obj_tile)){
	
	vspd = 0;
	
}


x += hspd;
y += vspd;


#endregion


if(mouse_check_button_pressed(mb_left)){
	
	item_drop(mouse_x, mouse_y, item_create());
	
}

if(mouse_check_button_pressed(mb_right)){
	
	var _o = collision_point(mouse_x, mouse_y, obj_item, false, true);
	
	if(_o != noone){
	
		inv[0] = item_pickup(_o);
	
	}
	
}
/// @description Insert description here
// You can write your code in this editor


x += spd * dir;

if(place_meeting(x + spd * dir, y, obj_tile)){
	
	dir = -dir;
	
}

if(!place_meeting(x + spd * dir + sprite_width * dir, y + 5, obj_tile)){
	
	dir = -dir;
	
}








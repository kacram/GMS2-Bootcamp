/// @description Insert description here
// You can write your code in this editor


//add speed to the player left and right when a key is pressed
hspd += (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * spd;

//if the player presses the jump key
if(keyboard_check_pressed(ord("W")) && place_meeting(x, y + 3, obj_tile)){
	
	//add velocity to the player so they jump up
	vspd = -jump_height;

}


#region collisions

if(place_meeting(x + hspd, y, obj_tile)){

	for(var _i = 0; _i < abs(hspd); _i++){
	
		if(place_meeting(x + sign(hspd),y,obj_tile)){
	
			hspd = 0;
			break;
	
		}else{
		
			x += sign(hspd);
		
		}
	
	}

}


if(place_meeting(x, y + vspd, obj_tile)){

	for(var _i = 0; _i < abs(vspd); _i++){
	
		if(place_meeting(x,y + sign(vspd),obj_tile)){
	
			vspd = 0;
			break;
	
		}else{
		
			y += sign(vspd);
		
		}
	
	}

}

#endregion


//if the player's speed is above max, set it to max
hspd = min(hspd,  spd_max);
//if the player's speed is below min, set it to min
hspd = max(hspd, -spd_max);

//move the player as far as they have speed
x += hspd;
//move the player as far as they have vertical speed
y += vspd;

//reduce player's speed by friction
hspd *= frict;

//add gravity to the player's vertical speed
vspd += grav;


if(hspd != 0){
	
	image_xscale = sign(hspd);
	
}






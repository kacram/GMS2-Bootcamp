
//if the bullet is outside the horizontal screen boundaries
if(x > room_width || x < 0){
	
	//delete the bullet when it leaves the room
	instance_destroy(self);
	
}

//if the bullet is outside the vertical screen boundaries
if(y > room_height || y < 0){
	
	//delete the bullet when it leaves the room
	instance_destroy(self);
	
}




//execute the following code on 3% of frames
if(random_range(0,1) > 0.97){
	
	//create an enemy object in a random place in the room
	instance_create_layer(irandom(room_width), irandom(room_height), layer, obj_player_mouse);
	
}


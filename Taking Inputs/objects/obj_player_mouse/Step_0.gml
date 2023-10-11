


//move left and right towards the player
x += spd * dcos(point_direction(x, y, obj_player.x, obj_player.y));
//move up and down towards the player
y -= spd * dsin(point_direction(x, y, obj_player.x, obj_player.y));

//point the sprite to face the player
image_angle = point_direction(x, y, obj_player.x, obj_player.y);


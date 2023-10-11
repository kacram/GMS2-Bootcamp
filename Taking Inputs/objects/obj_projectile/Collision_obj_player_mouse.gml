
//add a point
points++;

//delete the enemy the bullet hit
instance_destroy(other);
//delete the bullet so it doesn't pierce
instance_destroy(self);


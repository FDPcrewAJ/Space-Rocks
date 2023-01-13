/// @desc

lives -= 1;

instance_destroy();

repeat(10) {
	instance_create_layer(x,y,"Instances", obj_debris);
}
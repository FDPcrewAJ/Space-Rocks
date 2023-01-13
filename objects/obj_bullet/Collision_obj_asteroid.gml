/// @desc Bullet with asteroid collision
// Score Counting
score += 10;

instance_destroy();

//What asteroid is being destroyed? Properly split or destoy based on that
with(other) {
	instance_destroy();
	
	if(sprite_index == spr_asteroid_large) {
		repeat(2) {
			var new_asteroid = instance_create_layer(x,y,"Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_medium;
		}
	} 
	else if(sprite_index == spr_asteroid_medium) {
		repeat(2) {
			var new_asteroid = instance_create_layer(x,y,"Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_small;
		}
	}
		
		repeat(10){
			instance_create_layer(x,y,"Instances", obj_debris);
		}
}

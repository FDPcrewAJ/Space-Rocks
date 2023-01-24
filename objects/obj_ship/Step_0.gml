/// @desc Ship Movement

// Basic Movement
image_speed = 1;

if (keyboard_check(vk_left)) {
	sprite_index = spr_ship_left;
	image_angle = image_angle + 5;
}
else if (keyboard_check(vk_right)) {
	sprite_index = spr_ship_right;
	image_angle = image_angle - 5;
}
else if (keyboard_check(vk_up)) {
	motion_add(image_angle, 0.05);
	sprite_index = spr_ship_forward;
}
else {
	sprite_index = spr_ship_still;	
}

move_wrap(true,true,sprite_width/2);

// Bullet Shooting
if (keyboard_check_pressed(vk_space)) {
	var x_adj = cos(degtorad(image_angle)) * sprite_width/2;
	var y_adj = -sin(degtorad(image_angle)) * sprite_width/2;
	var inst= instance_create_layer(x + x_adj, y + y_adj, "Instances", obj_bullet);
	inst.direction = image_angle;
	audio_play_sound(snd_shoot, 1, false);
}
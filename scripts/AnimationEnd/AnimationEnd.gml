/// @desc

function AnimationEnd(){
	var sprite = sprite_index;
	var image = image_index;
	if(argument_count > 0) sprite = argument[0];
	if(argument_count > 1) image = argument[1];
	var type = sprite_get_speed_type(sprite_index);
	var spd = sprite_get_speed(sprite_index) * image_speed;
	if(type == spritespeed_framespersecond)
	spd = spd / room_speed;
	if(argument_count > 2) spd = argument[2];
	return image + spd >= sprite_get_number(sprite);
}
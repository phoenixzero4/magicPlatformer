
if(instance_exists(o_player)){
x = o_player.x +20;
y = o_player.bbox_top + 20;


	if(keyboard_check_pressed(vk_down)){
	
	//	audio_play_sound(shoot_sound, 5, false);
	//	image_angle = point_direction(x, y, mouse_x, mouse_y);

		if(o_player.image_xscale == -1){
			image_angle = 180;
		}else if(o_player.image_xscale == 1){
			image_angle = 0;
		}
	
		with(instance_create_layer(x, y, "Object_Layer", o_magic_fire)){
			spd = 15;
			direction = other.image_angle;
			image_angle = direction;
		}
	}
}else{
	instance_destroy();
}
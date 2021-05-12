//  @description

x = owner.x + 30;
y = owner.y - 20;

can_shoot--;
Print(can_shoot);

if(instance_exists(o_player)){
	if(can_shoot < 0){
		with(o_boss_pagan){
			using_magic = true;
			hsp = 0;
			sprite_index = s_boss_pagan_magic_lightning;
		}
		
		if(point_distance(o_player.x, o_player.y, x, y) < 600){
			image_angle = point_direction(x, y, o_player.x, o_player.y);
			countdown--;
			if(countdown <= 0){
				countdown = countdown_rate;
				if(!collision_line(x, y, o_player.x, o_player.y, o_wall, false, false)){
				
				// bullet code
				 if(!global.sound_off){
		audio_play_sound(lightning,5,false);
	  }
	//firingdelay = 5;
	with(instance_create_layer(x, y, "Object_Layer", o_magic_lightning)){
		
		spd = 10;
		direction = other.image_angle;// + random_range(-3, 3); // ***** dont know if i care for this *****
		image_angle = direction;
	}
	can_shoot = room_speed * 4;
	with(o_boss_pagan){
		sprite_index = s_boss_pagan_walk;
		using_magic = false;
		hsp = walk_speed;
	}
	}
			}
		}
	}
}
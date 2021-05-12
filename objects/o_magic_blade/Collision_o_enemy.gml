
instance_change(o_magic_fire_explode, true);
	with(o_enemy){
		hp--;
		hit_now = true;
		flash = 3;
		hit_from = other.direction;
	}
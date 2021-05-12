
instance_change(o_magic_fire_explode, true);
	var enemy = instance_place(x, y, o_enemy);
	with(enemy){
		EnemyHit(2);
	}
	
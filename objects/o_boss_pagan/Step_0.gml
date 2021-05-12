// Inherit the parent event
event_inherited();

if(hp <= 0){
	with(o_gun_lightning){
		instance_destroy();
	}
	instance_change(o_boss_pagan_dead, true);
}
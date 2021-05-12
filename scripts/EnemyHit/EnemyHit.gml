/// @desc Decrease enemy hp by argument
/// @arg {integer} _damage

function EnemyHit(damage){
if(!hit_now){
		// temp invincibility after taking a hit
		hit_now = true;
		hsp = 0;
		Print("alarm triggered, should be invincible and unable to attack");
		alarm[0] = room_speed;
	//	instance_change(othishurt, false);
		var _damage = argument0;
		hp -= _damage;
		
		flash = 3;
	}
	
}
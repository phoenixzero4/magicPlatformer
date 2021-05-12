/// @desc Decrease player hp by argument
/// @arg {integer} _damage

function PlayerHit(damage){
	if(!hit_now){
		audio_play_sound(hurt_1, 0, false);
		// temp invincibility after taking a hit
		alarm[0] = room_speed * 4;
		sprite_index = s_player_hurt;	
		var _damage = argument0;
		hp -= _damage;
		hit_now = true;
		flash = 3;
	}
	
}
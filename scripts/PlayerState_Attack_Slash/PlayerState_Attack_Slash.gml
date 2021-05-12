///desc
function PlayerState_Attack_Slash(){

hsp = (move * walk_speed);

vsp += grav;

can_jump-=1;


// horizontal collision
if (place_meeting(x+hsp, y, o_wall)){
	while(!place_meeting(x+sign(hsp), y, o_wall)){
		x += sign(hsp);
	}
	hsp = 0;
}
// vertical collision
if (place_meeting(x, y + vsp, o_wall)){
	while(!place_meeting(x, y + sign(vsp), o_wall)){
		y += sign(vsp);
	}
	vsp = 0;
	if(jumped_high) jumped_high = false;
	if(jumped) jumped = false;
}

x += hsp;
y += vsp;




	ProcessAttack(s_player_attack, s_player_attack_slash_hitbox, 1);
	
	if(key_attack && image_index > 2 && !jumped && !jumped_high){
		state = PLAYERSTATE.ATTACK_COMBO;
	}
	
	if(AnimationEnd()){
		sprite_index = s_player;
		state = PLAYERSTATE.FREE;
	}
}
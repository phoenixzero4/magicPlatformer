/// @desc 

function PlayerState_Attack_Combo(){

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

if(!place_meeting(x, y+1, o_wall)){	
	vsp += grav;
	if(sign(vsp) > 0){
		image_index = 3;
	}else {
		image_index = 0;
	}
	was_in_air = true;

}else{
	can_jump = 10;
	if(was_in_air){
		
		was_in_air = false;
	}
		
}	
x += hsp;
y += vsp;



		
if(hsp != 0){
	image_xscale = sign(hsp);
}



if(y > room_height){
	instance_destroy(o_player);
	
}


	ProcessAttack(s_player_attack_combo, s_player_attack_combo_hitbox, 1);

	
	if(AnimationEnd()){
		sprite_index = s_player;
		state = PLAYERSTATE.FREE;
	}
}
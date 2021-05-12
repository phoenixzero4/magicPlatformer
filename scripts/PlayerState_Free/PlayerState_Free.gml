///desc
function PlayerState_Free(){




hsp = (move * walk_speed);
vsp += grav;
can_jump-=1;



// cheats for testing
if(super_speed){
	hsp *= 2;
}

if(can_jump > 0  && (super_jump && key_jump) ){
	vsp = -12;
	can_jump = 0;
	jumped_high = true;
}else if(can_jump > 0 && key_jump){
	vsp = -9;
	can_jump = 0;
	jumped = true;
}

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


if(!place_meeting(x, y+1, o_wall)){	
	
	if(sign(vsp) > 0 && !key_attack && sprite_index != s_player_super_jump){
//		image_index = 3;
	}else {
	//	image_index = 0;
	}
	was_in_air = true;

}else{
	can_jump = 10;
		if(was_in_air){
			if(!global.sound_off){
			audio_sound_pitch(landing_sound, choose(0.8, 1.0, 1.2));
			audio_play_sound(landing_sound, 4, false);
			}
		
			was_in_air = false;
		}	
}	
// Animation

if(hp <= 0){
	//KillPlayer();
	//hit_now = false;
	state = PLAYERSTATE.none;
}

 


	
if(key_attack && hsp != 0 && super_speed){
	state = PLAYERSTATE.RUN_ATTACK;
}else if(key_attack && hsp != 0){
	state = PLAYERSTATE.WALK_ATTACK;
}else if(key_attack && hsp == 0){
	state = PLAYERSTATE.ATTACK_SLASH;
}else if(vsp != 0 && jumped_high){
	sprite_index = s_player_super_jump;
}else if(vsp != 0 && jumped){
	sprite_index = s_player_jump;
}else if(hsp != 0 && super_speed){
	sprite_index = s_player_run;
}else if(hsp != 0){
	sprite_index = s_player_walk;
}else if(hsp == 0){
	sprite_index = s_player;
}




if(hsp != 0){
	image_xscale = sign(hsp);
}




if(y > room_height){
	instance_destroy(o_player);
	
}





}


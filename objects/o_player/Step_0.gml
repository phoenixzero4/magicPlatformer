
if(has_control){
	

	
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check(vk_up) || keyboard_check(ord("W"));
x_attack = keyboard_check_pressed(vk_down);
super_jump =  keyboard_check(vk_alt) || keyboard_check(vk_alt) || gamepad_button_check(0, gp_shoulderl);
super_speed = keyboard_check(vk_shift);
key_attack = keyboard_check(vk_space) || mouse_check_button(mb_left);




// check to see if we are using a gamepad or the keyboard 
if(key_left) || (key_right) || (key_jump){
	controller = 0;
}

if(abs(gamepad_axis_value(0, gp_axislh)) > 0.2){
	key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
	key_right = max(gamepad_axis_value(0, gp_axislh), 0);
	controller = 1;
}

if(gamepad_button_check_pressed(0, gp_face1)){
	key_jump = 1;
	controller = 1;
}

}else{ // end hascontrol check
	key_left = 0;
	key_jump = 0;
	key_right = 0;
}

move = key_right - key_left;

switch(state){
	case PLAYERSTATE.none: instance_change(o_player_dead, true); break;
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash(); break;
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_Attack_Combo(); break;
	case PLAYERSTATE.RUN_ATTACK: PlayerState_Run_Attack(); break;
	case PLAYERSTATE.WALK_ATTACK: PlayerState_Walk_Attack(); break;	
	case PLAYERSTATE.DEAD: PlayerState_Dead(); break;
}

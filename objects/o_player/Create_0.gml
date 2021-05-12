
controller = 0;
has_control = true;
hp = 2;
move = 0;
jumped = false;
jumped_high = false;
hit_now = false;
flash = 0;


state = PLAYERSTATE.FREE;
hit_by_attack = ds_list_create();
enum PLAYERSTATE{
	FREE, ATTACK_SLASH, ATTACK_COMBO, RUN_ATTACK, WALK_ATTACK, DEAD, none
}	

has_key = false;

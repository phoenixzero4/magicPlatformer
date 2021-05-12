hp = 3;
strength = 4;
flash = 0;
hit_now = false;
hit_player = ds_list_create();

attack_range = 50;

thiswalk = s_dino_walk
thisdead = o_dino_dead;
thisidle = s_dino_idle;
thisdamage = strength;
thishurt = s_dino_hurt;
thishitbox = s_dino_attack_hitbox;
thisattack = s_dino_attack;
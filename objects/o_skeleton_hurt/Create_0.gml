hp = 3;
strength = 4;
flash = 0;
hit_now = false;
hit_player = ds_list_create();

attack_range = 80;

othiscreature = o_skeleton;
othishurt = o_skeleton_hurt;
thiswalk = s_skeleton_walk;
thisdead = o_skeleton_dead;
thisidle = s_skeleton_idle;
thisdamage = strength;
thishurt = s_skeleton_hurt;
thishitbox = s_skeleton_attack_hitbox;
thisattack = s_skeleton_attack;
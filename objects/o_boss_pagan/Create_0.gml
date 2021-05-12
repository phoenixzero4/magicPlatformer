
hit_player = ds_list_create();

othiscreature = o_boss_pagan;
othisdead = o_boss_pagan_dead;
othishurt = o_boss_pagan_hurt;

thiswalk = s_boss_pagan_walk;
thisidle = s_boss_pagan_idle;
thisdamage = strength;
thishurt = s_boss_pagan_hurt;
thishitbox = s_boss_pagan_attack_hitbox;
thisattack = s_boss_pagan_attack;
thismagic = s_boss_pagan_magic_lightning;

mygun = instance_create_layer(x, y, "Object_Layer", o_gun_lightning);
with(mygun){
	owner = other.id;
}
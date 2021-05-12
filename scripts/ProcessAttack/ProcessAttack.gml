/// @desc Generic attack for objects

function ProcessAttack(argument0, argument1){

if(instance_exists(o_player)){
	
if(sprite_index != argument0){
		sprite_index = argument0;
		image_index = 0;
		ds_list_clear(hit_by_attack);
	}
	
	mask_index = argument1;
	var hit_by_attack_now = ds_list_create();
	var hits = instance_place_list(x, y, o_enemy, hit_by_attack_now, false);
	if(hits > 0){
		for(var i = 0; i < hits; i++){
			
			var hit_id = hit_by_attack_now[| i];
			if(ds_list_find_index(hit_by_attack, hit_id) == -1){
				ds_list_add(hit_by_attack, hit_id);
				with(hit_id){
					EnemyHit(argument[2]); 
				}
			}
		}
	}
	ds_list_destroy(hit_by_attack_now);
	mask_index = s_player;
}
}
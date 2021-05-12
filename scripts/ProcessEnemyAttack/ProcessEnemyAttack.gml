/// @desc Generic attack for objects
/// @arg {sprite_index}
/// @arg {image_index}
/// @arg {integer} optional argument for damage
/// @arg {sprite_index} sprite to return to
function ProcessEnemyAttack(argument0, argument1, argument2, argument3){


	
if(sprite_index != argument0){
		sprite_index = argument0;
		image_index = 0;
		ds_list_clear(hit_player);
	}
	
	mask_index = argument1;
	var hit_player_now = ds_list_create();
	var hits = instance_place_list(x, y, o_player, hit_player_now, false);
	if(hits > 0){
		for(var i = 0; i < hits; i++){
			
			var hit_id = hit_player_now[| i];
			if(ds_list_find_index(hit_player, hit_id) == -1){
				ds_list_add(hit_player, hit_id);
				Print("hitting: " , hit_id);
				with(hit_id){
					PlayerHit(argument[2]); 
				}
			}
		}
	}
	
	ds_list_destroy(hit_player_now);
	mask_index = argument[3];

}
///desc
function KillPlayer(){
	
	if(instance_exists(o_gun)){
		with(o_gun){
			instance_destroy();
		}
	}
	audio_play_sound(explosion_long, 0, false);
	instance_destroy();
	instance_create_layer(x, y, "Player_Layer", o_player_dead);	
	
}
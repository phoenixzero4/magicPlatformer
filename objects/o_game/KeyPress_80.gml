/// @desc Gets enemies moving or pauses the game



if(!global.isPaused){
	instance_deactivate_all(true);
	
}else{
	instance_activate_all();
	
}
global.isPaused = !global.isPaused;
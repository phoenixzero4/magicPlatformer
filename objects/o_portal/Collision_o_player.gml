/// @desc move to the next room

with(o_player){
	if(has_control){
		has_control = false;
		Slide(TRANS_MODE.GOTO, other.target);
	}
}
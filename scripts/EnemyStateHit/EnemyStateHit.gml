/// @desc

function EnemyStateHit(){
	var _damage = argument0;
	
	hp -= _damage;
	
	if(hp > 0){
		state = ENEMYSTATE.FREE;
	}else{
		state = ENEMYSTATE.DEAD;
	}
}
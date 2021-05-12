

vsp += grav;
var forward = bbox_right;
// prevent enemy from walking off ledge


 if(sign(hsp) < 0)  forward = bbox_left;



if(grounded && afraid_of_heights && !place_meeting(forward, bbox_bottom + 1, o_wall)){

	hsp = -hsp;
}
	


// horizontal collision
if (place_meeting(x+hsp, y, o_wall)){
	while(!place_meeting(x+sign(hsp), y, o_wall)){
		x += sign(hsp);
	}
	hsp = -hsp;
}
// vertical collision
if (place_meeting(x, y + vsp, o_wall)){
	while(!place_meeting(x, y + sign(vsp), o_wall)){
		y += sign(vsp);
	}
	vsp = 0;
}

x += hsp;
y += vsp;

if(!place_meeting(x, bbox_bottom+1, o_wall) && !place_meeting(forward, bbox_bottom+1, o_wall)){
	grounded = false;
}
else{
	grounded = true;
	if(!hit_now)
	{				
		
		image_speed = 1;
		if(instance_exists(o_player) && point_in_circle(x, y, o_player.x, o_player.y, attack_range)){
			hsp = 0;
			ProcessEnemyAttack(thisattack, thishitbox, thisdamage, thiswalk);
			alarm[1] = room_speed * .5;
			
		}else if(hsp == 0)
		{
			sprite_index = thisidle;
		}
		else
		{
			sprite_index = thiswalk;
		}
	}
	else{
		if (hp <= 0){
			instance_change(othisdead, true);
		//	hit_now = false;	
		}else{
		//	flash = 3;
		//	sprite_index = thishurt;
		//	hit_now = false;
			
			}
	}
}
		if(hsp != 0){
			image_xscale = sign(hsp) * size;
			image_yscale = size;
		}

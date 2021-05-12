
    // update destination
	if(instance_exists(follow)){
		xto = follow.x;
		yto = follow.y;
	}
	
	// update object position
	x += (xto - x) / 25;
	y += (yto - y) / 25;
	
	x = clamp(x, w_half, room_width - w_half);
	y = clamp(y, h_half, room_height - h_half);
	
	
	// update camera view
	camera_set_view_pos(cam, x - w_half, y - h_half);
	
	if(layer_exists(mountains)){
		layer_x(clouds_back, x);
		layer_x(clouds_middle, x);
		layer_x(clouds_small, x * .88); 
		layer_x(mountains, x * .75);
		layer_x(trees, x * .5);
	}
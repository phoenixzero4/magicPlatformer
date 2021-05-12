
cam = view_camera[0];
follow = o_player;
w_half = camera_get_view_width(cam) * .5;
h_half = camera_get_view_height(cam) * .5;

xto = xstart;
yto = ystart;

floorlayer = layer_get_id("Ruins_floor_layer");
lowlayer = layer_get_id("Ruins_low_layer");
chainslayer = layer_get_id("Chains_layer");
mainlayer = layer_get_id("Ruins_main_layer");
closerlayer = layer_get_id("Ruins_closer_layer");
spotlayer = layer_get_id("Ruins_spot_layer");


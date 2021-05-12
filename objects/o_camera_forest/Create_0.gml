
cam = view_camera[0];
follow = o_player;
w_half = camera_get_view_width(cam) * .5;
h_half = camera_get_view_height(cam) * .5;

xto = xstart;
yto = ystart;

sky_color = layer_get_id("BSkyColor");
clouds_back = layer_get_id("BCloudsBack");
clouds_middle = layer_get_id("BCloudsMiddle");
clouds_small = layer_get_id("BCloudsSmall");
mountains = layer_get_id("BMountains");
trees = layer_get_id("BTrees");


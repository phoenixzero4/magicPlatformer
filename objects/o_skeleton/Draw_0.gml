
if(flash > 0){
	draw_sprite(thishurt, 0, x, y);
	flash--;
	shader_set(sh_white);
	draw_sprite(thishurt, 0, x, y);
	shader_reset();
}else{
	draw_self();
}
/// @desc
/// @param {string} color
/// @param {string} font
/// @param halign
/// @param valign

function DrawText(argument0, argument1, argument2, argument3){
	draw_set_color(argument0);
	draw_set_font(argument1);
	draw_set_halign(argument2);
	draw_set_valign(argument3);
}

/// @desc Debugging facilitator, prints comma separated arguments
/// @arg {any} value_to_print

function Print(){
		
	var str = "";
	
	for ( var i = 0; i < argument_count; i++)
	{
			str += string(argument[i]) + " ";
	}
	
	show_debug_message(str);
}

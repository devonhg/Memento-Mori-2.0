/// @description Draw Debug Information

if( game_debug_mode ){

	draw_line_color( room_width/2, 0, room_width/2, room_height, c_red, c_red );
	draw_line_color( 0, room_height/2, room_width, room_height/2, c_red, c_red );

	draw_set_font( fnt_main );
	draw_set_halign( fa_center );
	draw_set_valign( fa_middle );

	draw_set_valign( fa_top );
	draw_set_halign( fa_left );
	draw_set_font( fnt_debug_font );
}

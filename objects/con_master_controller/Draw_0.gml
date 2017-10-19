/// @description Draw Debug Information
// You can write your code in this editor

//draw_box_scaled( x_at_fraction( 6 ), y_at_fraction( 6 ), 6, 1, c_red, c_green, 8 );

//draw_sprite( spr_x, 0, x_at_fraction( 6 ), y_at_fraction( 6 ) ); 

//width_at_fraction( 6 );

//show_message( string( x_at_fraction( 6 ) ) + " | " + string( y_at_fraction( 6 ) ) );

if( game_debug_mode ){

	draw_line_color( room_width/2, 0, room_width/2, room_height, c_red, c_red );
	draw_line_color( 0, room_height/2, room_width, room_height/2, c_red, c_red );

	draw_set_font( fnt_main );
	draw_set_halign( fa_center );
	draw_set_valign( fa_middle );

	//text_at_fraction( x_at_fraction(6), y_at_fraction(6), "Test Text", y_at_fraction( 3 ), x_at_fraction(10), c_black );

	draw_set_valign( fa_top );
	draw_set_halign( fa_left );
	draw_set_font( fnt_debug_font );

}
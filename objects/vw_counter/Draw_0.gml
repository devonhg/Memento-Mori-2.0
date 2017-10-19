/// @description Insert description here
//Declare Temporary Variables
var _days_left = scr_calculate_days_left();
var _day_plural = "days";

//Set to singular if neccessary
if( _days_left == 1 || _days_left == 1 ){
    _day_plural = "day";
}

var _days_text = _day_plural + " remaining";

//Calculate days since death day
if( sign( _days_left ) == -1 ){
    _days_text = _day_plural + " since";
}
//show_debug_message( _days_left );

_days_left = abs( _days_left );



draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/*
draw_set_alpha( .8 );
draw_rectangle_colour(view_xview[0], y - 30, view_xview[0] + view_wview[0], y + 45, c_white, c_white, c_gray, c_gray, 0);
draw_set_alpha( 1 );
*/

//show_message( camera_get_view_width(view_camera[0]) )

//draw_line_color( 0, room_height/3, room_width/2, room_height/3, c_green, c_green )

dt_track( "Y_at", height_at_fraction(2) )

draw_set_color( c_black );
    draw_set_font( fnt_main );
    /*
	draw_text_ext_transformed( x, y-20, string( _days_left ), 0, 400, .25, .25, 0 );
    draw_text_ext_transformed( x, y + 10, _days_text, 0, 700, .1, .1, 0 );
    draw_text_ext_transformed( x, y + 28, "Death Day : " + string(global.deathdate[1])+"/"+string(global.deathdate[2])+"/"+string(global.deathdate[0]), 0, 1200, .05, .05, 0 );
	*/
	
	//draw_sprite( spr_x, 0, room_width/2, room_height/2 ); 
	text_at_fraction( x_at_fraction( 6 ), y_at_fraction(2), string( _days_left ), height_at_fraction( 1 ), width_at_fraction( 11 ), c_black ); 
	text_at_fraction( x_at_fraction( 6 ), y_at_fraction(2.5), _days_text, height_at_fraction( .5 ), width_at_fraction( 11 ), c_black ); 
	
	draw_set_font( fnt_debug_font ); 
    draw_set_font( -1 ); 
draw_set_color( c_black ); 

draw_set_halign( fa_left ); 
draw_set_valign(fa_top);
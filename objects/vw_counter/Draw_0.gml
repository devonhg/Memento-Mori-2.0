/// @description Insert description here
//Declare Temporary Variables
var _days_left = scr_calculate_days_left();
var _day_plural = "days";
var _black = global.co_black;
var _death_day = scr_md_get_dd();//string(global.deathdate[1]) + "/" + string(global.deathdate[2]) + "/" + string(global.deathdate[0]);

//draw_rectangle_color(0, y_at_fraction(1), x_at_fraction(12), y_at_fraction(3), _black, _black,_black,_black, false);
/*
draw_set_alpha(.7);
draw_rectangle_color(0, y - height_at_fraction(1.3), x_at_fraction(12), y + height_at_fraction(1.3), _black, _black,_black,_black, false);
draw_set_alpha(1);
*/
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

dt_track( "Y_at", height_at_fraction(2) )

draw_set_color( global.co_prim );
    draw_set_font( global.font );
	
	//draw_sprite( spr_x, 0, room_width/2, room_height/2 ); 
	//var _h_adj = -100; 
	var _col = global.co_prim;
	var _txt_h_adj = .5;
	text_at_fraction( x, y, string( _days_left ), height_at_fraction( 1 + _txt_h_adj ), width_at_fraction( 11 ), _col ); 
	text_at_fraction( x, y+height_at_fraction(0.7), _days_text, height_at_fraction( .1 + _txt_h_adj ), width_at_fraction( 11 ), _col ); 
	text_at_fraction( x, y+height_at_fraction(1.5), _death_day, height_at_fraction( .05 + _txt_h_adj ), width_at_fraction( 11 ), _col ); 
	
	draw_set_font( fnt_debug_font ); 
    draw_set_font( -1 ); 
draw_set_color( c_black ); 

draw_set_halign( fa_left ); 
draw_set_valign(fa_top);
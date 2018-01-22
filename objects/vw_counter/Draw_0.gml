/// @description Draw the counter
//Declare Temporary Variables
var _days_left = scr_calculate_days_left();
var _day_plural = "days";

var _death_day = scr_md_get_dd();

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
	
	//Accented days
	draw_set_alpha(.9);
	text_at_fraction( x, y-height_at_fraction(2), string( _days_left+2 ), height_at_fraction( .6 + _txt_h_adj ), width_at_fraction( 11 ), _col );
	draw_box_scaled(x, y-height_at_fraction(2), width_at_fraction(12), height_at_fraction( .6 + _txt_h_adj ), global.co_sec, global.co_sec, 0);
	draw_set_alpha(.7);
	text_at_fraction( x, y-height_at_fraction(1), string( _days_left+1 ), height_at_fraction( .8 + _txt_h_adj ), width_at_fraction( 11 ), _col ); 
	draw_box_scaled(x, y-height_at_fraction(1), width_at_fraction(12), height_at_fraction( .8 + _txt_h_adj ), global.co_sec, global.co_sec, 0);
	draw_set_alpha(1);
	//Actual Days
	text_at_fraction( x, y, string( _days_left ), height_at_fraction( 1 + _txt_h_adj ), width_at_fraction( 11 ), _col ); 
	text_at_fraction( x, y+height_at_fraction(0.7), _days_text, height_at_fraction( .1 + _txt_h_adj ), width_at_fraction( 11 ), _col ); 
	text_at_fraction( x, y+height_at_fraction(1.5), _death_day, height_at_fraction( .05 + _txt_h_adj ), width_at_fraction( 11 ), _col ); 
	
	draw_set_font( fnt_debug_font ); 
    draw_set_font( -1 ); 
draw_set_color( c_black ); 

draw_set_halign( fa_left ); 
draw_set_valign(fa_top);
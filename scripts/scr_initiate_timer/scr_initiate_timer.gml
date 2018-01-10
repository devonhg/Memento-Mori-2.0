///@description Initiate a timer popup
///@param Time The amount of time in minutes

var _t = argument[0]; 
var _pu = scr_create_popup("Meditation", "Meditate for the duration of this timer.", "", "PopUps");
var _tmr = instance_create_layer( x_at_fraction( 6 ), y_at_fraction(6), "PopUps", vw_timer );
	_tmr.depth -= 1; 
	_tmr.minutes = _t; 

//var _play_pause = scr_add_button( x_at_fraction(6), y_at_fraction(9), "Start/Stop", width_at_fraction(8), height_at_fraction(1), global.co_black, global.co_black, global.co_light_grey, 4, scr_btn_med_play, "PopUps", 6, _pu );
//	_play_pause.depth -=1; 
scr_add_button(x_at_fraction(6), y_at_fraction(9), "Start/Stop", scr_btn_med_play, 0, _pu);
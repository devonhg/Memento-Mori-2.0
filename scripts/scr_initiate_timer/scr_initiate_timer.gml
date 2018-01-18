///@description Initiate a timer popup
///@param Time The amount of time in minutes

var _t = argument[0]; 
var _pu = scr_create_popup("Meditation", "Meditate for the duration of this timer.", "", "PopUps");
var _tmr = instance_create_layer( x_at_fraction( 6 ), y_at_fraction(6), "PopUps", vw_timer );
	_tmr.depth -= 1; 
	_tmr.minutes = _t; 

scr_add_button(x_at_fraction(6), y_at_fraction(9), "Start/Stop", scr_call, 0, _pu, "timer_ss");
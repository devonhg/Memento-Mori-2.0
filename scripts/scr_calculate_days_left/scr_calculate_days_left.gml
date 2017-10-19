///scr_calculate_days_left();
/*
    This script returns the number of days until death day. 
*/

var c = date_current_datetime(); 
var d = date_create_datetime( global.deathdate[0], global.deathdate[1], global.deathdate[2], 12, 0, 0 ); 

var comp = date_compare_date( d, c ); 

var o = floor( date_day_span( d, c ) ) * comp; 

return o; 
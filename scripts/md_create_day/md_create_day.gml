///@description Creates the next day, based on the globally specified alert time.

if( global.notify_time != -1 ){
	var _incr = argument[0]; 

	var _now = date_current_datetime();
	var _tomorrow = date_inc_day( _now, _incr );
	var _next_notification = date_create_datetime( 
								date_get_year( _tomorrow ),  
								date_get_month( _tomorrow ),
								date_get_day( _tomorrow ),
								global.notify_time,
								0,
								0
	);

	return _next_notification; 
}else{
	scr_debug_msg("PUSH", "ERROR! Notify time not defined!");
	return -1; 
}
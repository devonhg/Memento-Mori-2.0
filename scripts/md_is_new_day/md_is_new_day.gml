///@descrption Check if it's a new day or not. 

ini_open(global.db);

var _new_day = false; 
var _curr_day = date_get_day(date_current_datetime());
//ini_write_real( "Date", "cur_day", 0 );	//Testing, comment out later

if( ini_key_exists("Date", "cur_day") ){//We've clearly set the day at some point
	var _prev_day = ini_read_real("Date", "cur_day", _curr_day);
	var _date_comp = _prev_day == _curr_day;
	
	//Debug
	scr_debug_msg( "DATE", "Current Day is " + string(_curr_day) );
	scr_debug_msg( "DATE", "Previous Day is " + string(_prev_day) );
	
	if( !_date_comp ){
		scr_debug_msg( "DATE", "We have a new day, writing " + string(_curr_day) + " to DB." );
		ini_write_real( "Date", "cur_day", _curr_day );
		_new_day = true;  
	}
}else{//Otherwise, set as today.
	ini_write_real( "Date", "cur_day", string(_curr_day) );
	ini_write_real( "Date", "not_time", 8 );
	_new_day = true;
	scr_debug_msg( "DATE", "Fresh new start, day set." );
}



global.notify_time = ini_read_real( "Date", "not_time", 8 );

ini_close(); 

scr_debug_msg( "DATE", "New day checked, new day is " + string( _new_day )  );

return _new_day; 
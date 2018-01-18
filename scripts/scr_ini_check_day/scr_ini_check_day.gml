/*
	This script checks if the day had been set previously, and if not sets the current day to today.
	This script is also crucial in telling the app whether we are in a new day or not. 
*/

ini_open(global.db);
//show_message("running");

ini_write_real( "Date", "cur_day", date_create_datetime(2017, 12, 10, 0, 0, 0) );	//Testing, comment out later

if( ini_key_exists("Date", "cur_day") ){//We've clearly set the day at some point
	var _curr_day = date_get_day(date_current_datetime());
	var _prev_day = ini_read_real("Date", "cur_day", _curr_day);
	var _date_comp = date_compare_date(_prev_day, _curr_day);
	
	if( _date_comp != 0 ){
		ini_write_real( "Date", "prev_day", _prev_day);
		ini_write_real( "Date", "cur_day", date_get_day(date_current_datetime()) );
		global.new_day = true;  
	}
}else{//Otherwise, set as today.
	ini_write_real( "Date", "cur_day", date_get_day(date_current_datetime()) );	
	global.new_day = true;
}

//show_message( global.new_day );

ini_close(); 
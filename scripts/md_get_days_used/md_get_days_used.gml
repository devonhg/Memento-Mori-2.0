///@description Get the number of days the user has been using the app. 

var _days = -1;
var _c = date_current_datetime(); 
//_c = date_inc_day(_c, 3);
var _ld = -1; 
ini_open(global.db);
    if (ini_key_exists("Tracking", "Launch_date")) {		
		_ld = ini_read_real("Tracking", "Launch_date", 0);
        _days = floor( date_day_span( _ld, _c ) );
    } else {
		_days = 0; 
        ini_write_real("Tracking", "Launch_date", _c);
    }
ini_close();

scr_debug_msg("DATE", "Days in use: " + string( _days ) );

return _days;

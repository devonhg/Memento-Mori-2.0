
#region Initiate Core Stuff
	draw_set_font( fnt_debug_font );
	randomize(); 
#endregion
	
#region Declare core globals
	global.db = "database.ini";//Local database
	global.qdb = "quotes.ini";//Quotes database
	global.new_day = false;//New Day
	global.qod = "null";
	global.first_run = false; 
#endregion

#region Check Data
	ini_open(global.db);

	if( !ini_key_exists( "death_date", "year" ) ){
	    global.first_run = true; 
	    new_death_day = date_inc_year(date_current_datetime(), 10); 
	    var _year = date_get_year( new_death_day ),
	        _month = date_get_month( new_death_day ),
	        _day = date_get_day( new_death_day );
    
	    ini_write_real(  "death_date", "year", _year );
	    ini_write_real(  "death_date", "month", _month );
	    ini_write_real(  "death_date", "day", _day );
	}

	scr_md_refresh_dd(); 
	//global.qod = ini_read_string( "Quotes", "qod", "" );

	scr_md_set_dd(scr_md_get_dd());

	ini_close(); 

	scr_call_bymorte_qotd(); 
#endregion

#region Check Day
	ini_open(global.db);

	ini_write_real( "Date", "cur_day", date_create_datetime(2017, 12, 10, 0, 0, 0) );	//Testing, comment out later

	if( ini_key_exists("Date", "cur_day") ){//We've clearly set the day at some point
		var _curr_day = date_get_day(date_current_datetime());
		var _prev_day = ini_read_real("Date", "cur_day", _curr_day);
		var _date_comp = date_compare_date(_prev_day, _curr_day);
	
		if( _date_comp != 0 ){
			ini_write_real( "Date", "prev_day", _prev_day);
			ini_write_real( "Date", "cur_day", date_get_day(date_current_datetime()) );
			vw_on_new_day(); 
			global.new_day = true;  
		}
	}else{//Otherwise, set as today.
		ini_write_real( "Date", "cur_day", date_get_day(date_current_datetime()) );	
		global.new_day = true;
	}

	ini_close(); 
#endregion

#region Globals

	//deathdate is to be an array containing each date piece of the day of death. 
	global.version = "2.2.2";
	global.version_rank = "Alpha";
	global.menu_open = false; 
	global.days_left = scr_calculate_days_left(); 
	global.qdb = -1;//Quote Database
	global.qod = "";//The quote of the day

	global.update_dd = -1; 

	global.co_light_grey = make_colour_rgb(221, 221, 221);
	global.co_black = make_colour_rgb(0, 0, 0);
	global.co_dark_grey = make_colour_rgb(51, 51, 51);

	global.tray_open = false; 

#endregion

//Initiate master controller	
instance_create_depth( 0,0,0, con_master_controller );

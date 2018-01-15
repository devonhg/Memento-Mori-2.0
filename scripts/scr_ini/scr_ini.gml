var _cat = "INI"; 
#region Initiate Core Stuff
	draw_set_font( fnt_debug_font );
	randomize(); 
#endregion
	
#region Declare core globals
	//App Specific
		global.version = "2.3.1";
		global.version_rank = "Alpha";
		global.first_run = false; 

	//Database Specific
		global.db = "database.ini";//Local database
		global.qdb = "quotes.ini";//Quotes database
		global.new_day = false;//New Day
			global.qod[0] = "null";//0 = ID
			global.qod[1] = "null";//1 = Quote
			global.qod[2] = "null";//2 = Author
			global.qod[3] = "null";//3 = Link
		global.qdb = -1;//Quote Database
		global.qod = "";//The quote of the day
		
		global.font = fnt_main_2; 
	
	//Colors
		global.co_prim = make_colour_rgb(128,128,128);//Grey
		global.co_sec = make_colour_rgb(249,249,249);//Whiteish
		global.co_tert = make_colour_rgb(189,230,189);//Green
		
	//Async
		global.http_async = -1; 
		global.update_dd = -1; 
		global.push_async = -1; 
		global.wipe_data = -1; 
		
	//Options
		global.notify_time = -1;//Defined when checking data; 
		
	//Tutorial	
		global.tut_meditation = false;
		global.tut_qotd = false; 
		global.tut_menu = false; 
		global.tut_settings = false; 
		
	
	scr_debug_msg( _cat, "Core Globals Declared"  );
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
	scr_md_set_dd(scr_md_get_dd());
	ini_close(); 
	scr_call_bymorte_qotd(); 
	//global.first_run = true; //Testing, comment out otherwise
	scr_debug_msg( _cat, "Data checked, first run is " + string( global.first_run )  );
	
#endregion

#region Check Day
	
	global.new_day = md_is_new_day();
	//global.new_day = true;
	
#endregion

#region Dynamic Globals

	global.days_left = scr_calculate_days_left(); 
	
	
#endregion

#region Initiate Push Notifications
	
	if( global.new_day ){
		md_process_push_notifications();
	}
	
#endregion


//Initiate master controller	
instance_create_depth( 0,0,450, con_master_controller );


//global.first_run = true; 
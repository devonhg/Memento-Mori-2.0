/// @description Initiate full window script

scr_fullwindow( 1000 );

/// @description Initiate objects

#region //Main Room 
	if( room == rm_main ){
		//Adjuster
			var _adjust = 1; 
			var _drawer_btn_width = width_at_fraction(10);
			var _drawer_btn_height = height_at_fraction(1);
			
			//scr_md_set_dd( "11/9/2017" ); 
			
			
		//Populate main objects
			instance_create_layer( x_at_fraction(6), y_at_fraction(3), "Instances_Overlay", vw_counter );
			instance_create_layer( x_at_fraction(6), y_at_fraction(10), "Instances", vw_pendulum );
			instance_create_layer( x_at_fraction(6), y_at_fraction(.8), "Instances_Overlay", vw_top_menu );
			instance_create_layer( x_at_fraction(6), y_at_fraction(.5), "Instances", md_data_async );
			instance_create_layer( x_at_fraction(6), y_at_fraction(.5), "Instances", vw_notices); 

		//Populate Main Buttons
			scr_add_button( x_at_fraction(6), y_at_fraction(11), "Meditate", width_at_fraction(8), height_at_fraction(1), global.co_light_grey, global.co_black, global.co_black, 4, scr_call_meditate, "Instances", 6 ); 
	
	
		//Initiate our settings drawer
			var _drwer_settings = scr_drawer( "Drawers", false, "Settings", "Tweak the app to your liking." );
			scr_add_button( 0, y_at_fraction(-1.2 + _adjust), "Change Day", _drawer_btn_width, _drawer_btn_height, global.co_light_grey, global.co_black, global.co_black, 4, scr_btn_update_dd, "Drawers_Objects", 6, _drwer_settings );
			
		//Initiate our menu drawer
			var _drwer_menu = scr_drawer( "Drawers", false, "Menu", "Access Features" );
			scr_add_button( 0, y_at_fraction(-1.2 + _adjust), "Todays Quote", _drawer_btn_width, _drawer_btn_height, global.co_light_grey, global.co_black, global.co_black, 4, scr_btn_test, "Drawers_Objects", 6, _drwer_menu );
			scr_add_button( 0, y_at_fraction(0 + _adjust), "Feedback", _drawer_btn_width, _drawer_btn_height, global.co_light_grey, global.co_black, global.co_black, 4, scr_call_feedback, "Drawers_Objects", 6, _drwer_menu );
			scr_add_button( 0, y_at_fraction(1.2 + _adjust), "About", _drawer_btn_width, _drawer_btn_height, global.co_light_grey, global.co_black, global.co_black, 4, scr_call_about, "Drawers_Objects", 6, _drwer_menu );
			
		//Initiate our Meditation drawer
			var _drawer_meditation = scr_drawer( "Drawers", true, "Meditate", "Take a few minutes to reflect on your time." );
			scr_add_button( 0, y_at_fraction(-1.2 + _adjust), "10 Minutes", _drawer_btn_width, _drawer_btn_height, global.co_light_grey, global.co_black, global.co_black, 4, scr_btn_med_10, "Drawers_Objects", 6, _drawer_meditation );
			scr_add_button( 0, y_at_fraction(0 + _adjust), "20 Minutes", _drawer_btn_width, _drawer_btn_height, global.co_light_grey, global.co_black, global.co_black, 4, scr_btn_med_20, "Drawers_Objects", 6, _drawer_meditation );
			scr_add_button( 0, y_at_fraction(1.2 + _adjust), "30 Minutes", _drawer_btn_width, _drawer_btn_height, global.co_light_grey, global.co_black, global.co_black, 4, scr_btn_med_30, "Drawers_Objects", 6, _drawer_meditation );

	}
#endregion
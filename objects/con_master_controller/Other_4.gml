/// @description Initiate full window script

scr_fullwindow( 1000 );

/// @description Initiate objects

#region //Main Room 
	if( room == rm_main ){
		//Adjuster
			var _adjust = 1; 
			
		//Populate main objects
			instance_create_layer( x_at_fraction(6), y_at_fraction(4), "Instances", vw_counter );
			instance_create_layer( x_at_fraction(6), y_at_fraction(9), "Instances", vw_pendulum );

		//Populate Main Buttons
			scr_add_button( x_at_fraction(6), y_at_fraction(10), "Meditate", width_at_fraction(8), height_at_fraction(1), global.co_light_grey, global.co_black, global.co_black, 4, scr_call_meditate, "Instances", 6 ); 
	
	
		//Initiate our settings drawer
			var _drwer_settings = scr_drawer( "Drawers", false, "Settings", "Tweak the app to your liking." );
			
		//Initiate our Meditation drawer
			var _drawer_meditation = scr_drawer( "Drawers", true, "Meditate", "Take a few minutes to reflect on your time." );
			scr_add_button( 0, y_at_fraction(-1.2 + _adjust), "10 Minutes", width_at_fraction(10), height_at_fraction(1), global.co_light_grey, global.co_black, global.co_black, 4, scr_btn_med_10, "Drawers_Objects", 6, _drawer_meditation );
			scr_add_button( 0, y_at_fraction(0 + _adjust), "20 Minutes", width_at_fraction(10), height_at_fraction(1), global.co_light_grey, global.co_black, global.co_black, 4, scr_btn_med_20, "Drawers_Objects", 6, _drawer_meditation );
			scr_add_button( 0, y_at_fraction(1.2 + _adjust), "30 Minutes", width_at_fraction(10), height_at_fraction(1), global.co_light_grey, global.co_black, global.co_black, 4, scr_btn_med_30, "Drawers_Objects", 6, _drawer_meditation );
		
		//scr_add_sprite_button()
		
		//Testing
			//scr_create_popup( "Meditate", "Meditate during this time.", "This is content for meditation", "PopUps", "Awesome", scr_btn_test );
			//scr_initiate_timer( 10 );
	}
#endregion
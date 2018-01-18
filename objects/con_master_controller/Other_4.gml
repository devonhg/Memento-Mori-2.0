/// @description Initiate Objects and Window Script

scr_fullwindow( 1000 );//Configure the screen dimensions

#region Main Room 
	if( room == rm_main ){
		//Adjuster
			var _adjust = 1; 
			var _drawer_btn_width = width_at_fraction(10);
			var _drawer_btn_height = height_at_fraction(1);			
			
		//Populate main objects
			instance_create_layer( x_at_fraction(6), y_at_fraction(9), "Instances_Overlay", vw_counter );
			instance_create_layer( x_at_fraction(6), y_at_fraction(-.05), "Instances", vw_pendulum );
			instance_create_layer( x_at_fraction(6), 48, "Instances_Overlay", vw_top_menu );
			instance_create_layer( x_at_fraction(6), y_at_fraction(.5), "Instances", md_data_async );
			
		//Initiate our settings drawer
			var _drwer_settings = scr_drawer( "Drawers", false, "Settings", "Tweak the app to your liking." );
			scr_add_button( 0, y_at_fraction(-1.2 + _adjust), "Change Day", scr_call, 1, _drwer_settings, "update_dd" );
			scr_add_button( 0, y_at_fraction(0 + _adjust), "Feedback", scr_call, 1, _drwer_settings, "feedback" );
			scr_add_button( 0, y_at_fraction(1.2 + _adjust), "About", scr_call, 1, _drwer_settings, "about" );	
		
		//Initiate our menu drawer
			var _drwer_menu = scr_drawer( "Drawers", false, "Menu", "Access Features" );
			scr_add_button( 0, y_at_fraction(-1.2 + _adjust), "Todays Quote", scr_call, 0, _drwer_menu, "call_qotd" );
			scr_add_button(  0, y_at_fraction(0 + _adjust), "Meditate", scr_call, 2, _drwer_menu, "call_meditate");
	
		//Initiate our Meditation drawer
			var _drawer_meditation = scr_drawer( "Drawers", true, "Meditate", "Take a few minutes to reflect on your time." );
			scr_add_button( 0, y_at_fraction(1.2 + _adjust), "30 Minutes", vw_call_timer, 0, _drawer_meditation, 30 );
			scr_add_button( 0, y_at_fraction(0 + _adjust), "20 Minutes", vw_call_timer, 0, _drawer_meditation, 20 );
			scr_add_button( 0, y_at_fraction(-1.2 + _adjust), "10 Minutes", vw_call_timer, 0, _drawer_meditation, 10 );

	}
#endregion

#region New Day
	if( global.new_day and !global.first_run ){
		//var _sec = 3;//Number of seconds to delay the new day delayed script
		//alarm[0] = room_speed * _sec; //New Day Delayed				 
	}else{//We still need to reset the new day value. 
		global.new_day = false;
	}
	
#endregion

#region First Run
	if( global.first_run ){	
		scr_create_popup("Welcome!", "We are very excited to see you on board", "ByMorte is dedicated to helping you discover your best self as quickly as possible. Through the thought and consideration of what's to come you will grow faster than you've ever imagined.", "PopUps");
		
		scr_create_popup( 
		"Legal", 
		"The Legal Stuff", 
		"By using ByMorte you agree to our Privacy Policy and our Usage Agreement.",
		"PopUps",
		"Read Terms",
		scr_call,
		"Legal"
		);		
	
		scr_create_popup( 
		"Introduction", 
		"Usage Tutorial", 
		"Go ahead and experiment with the app, such as hitting the menu and settings buttons at the top left and right. As you experiement we will explain each piece of the app.",
		"PopUps"
		);
	}

#endregion

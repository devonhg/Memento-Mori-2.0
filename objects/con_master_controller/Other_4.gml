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
			//instance_create_layer( x_at_fraction(6), y_at_fraction(.5), "Instances", vw_notices); 

		//Populate Main Buttons
			//scr_add_button( x_at_fraction(6), y_at_fraction(11), "Meditate", scr_call_meditate, 2 );
			
		//Initiate our settings drawer
			var _drwer_settings = scr_drawer( "Drawers", false, "Settings", "Tweak the app to your liking." );
			scr_add_button( 0, y_at_fraction(-1.2 + _adjust), "Change Day", scr_btn_update_dd, 1, _drwer_settings );
			scr_add_button( 0, y_at_fraction(0 + _adjust), "Feedback", scr_call_feedback, 1, _drwer_settings );
			scr_add_button( 0, y_at_fraction(1.2 + _adjust), "About", scr_call_about, 1, _drwer_settings );			
		
		//Initiate our menu drawer
			var _drwer_menu = scr_drawer( "Drawers", false, "Menu", "Access Features" );
			scr_add_button( 0, y_at_fraction(-1.2 + _adjust), "Todays Quote", vw_btn_call_qotd, 0, _drwer_menu );
			scr_add_button(  0, y_at_fraction(0 + _adjust), "Meditate", scr_call_meditate, 2, _drwer_menu );
			//scr_add_button( 0, y_at_fraction(0 + _adjust), "Feedback", scr_call_feedback, 0, _drwer_menu );
			//scr_add_button( 0, y_at_fraction(1.2 + _adjust), "About", scr_call_about, 0, _drwer_menu );
	
		//Initiate our Meditation drawer
			var _drawer_meditation = scr_drawer( "Drawers", true, "Meditate", "Take a few minutes to reflect on your time." );
			scr_add_button( 0, y_at_fraction(1.2 + _adjust), "30 Minutes", scr_btn_med_30, 0, _drawer_meditation );
			scr_add_button( 0, y_at_fraction(0 + _adjust), "20 Minutes", scr_btn_med_20, 0, _drawer_meditation );
			scr_add_button( 0, y_at_fraction(-1.2 + _adjust), "10 Minutes", scr_btn_med_10, 0, _drawer_meditation );

	}
#endregion

#region New Day
	if( global.new_day and !global.first_run ){
		var _sec = 3;//Number of seconds to delay the new day delayed script
		alarm[0] = room_speed * _sec; //New Day Delayed				 
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
		"By using ByMorte you agree to our Terms of Service and our Usage Agreement.",
		"PopUps",
		"Read Terms",
		scr_call,
		"Legal"
		);		
		/*
		scr_create_popup( 
		"Introduction", 
		"About ByMorte", 
		"ByMorte is simply an app that tracks how much time you have left until a fictitious 'death day'. This is designed to pressure you to accelerate your life's ambitions.",
		"PopUps",
		)
		*/
	
		//scr_create_popup("Introduction", "About ByMorte", "Using ByMorte is very simple. Simply check ByMorte every day and reflect on your time you have left.", "PopUps");
		scr_create_popup( 
		"Introduction", 
		"Usage Tutorial", 
		"Go ahead and experiment with the app, such as hitting the menu and settings buttons at the top left and right. As you experiement we will explain each piece of the app.",
		"PopUps"
		);
	}

#endregion

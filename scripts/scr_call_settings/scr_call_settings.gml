if( global.first_run && !global.tut_settings ){
		scr_create_popup( 
		"Tutorial", 
		"Settings", 
		"The settings button lets you manage your Death Day, submit feedback and learn more about ByMorte.",
		"PopUps",
		)		
		global.tut_settings = true; 
}

scr_btn_toggle_drawer( "Settings" );	
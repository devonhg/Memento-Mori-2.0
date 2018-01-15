if( global.first_run && !global.tut_menu ){
		scr_create_popup( 
		"Tutorial", 
		"The Menu", 
		"The Menu Button gives you access to ByMorte's primary features, including the Quote Of The Day and Meditation Timer.",
		"PopUps",
		)		
		global.tut_menu = true; 
}

scr_btn_toggle_drawer( "Menu" );	
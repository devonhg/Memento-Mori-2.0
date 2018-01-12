/*
	Toggle the meditation drawer
*/

if( global.first_run && !global.tut_meditation ){
		scr_create_popup( 
		"Tutorial", 
		"Meditation", 
		"The ByMorte Meditation Timer is a highly recomended daily activity. At least once per day take some time to meditate to put space between stimulation and response. The timer also syncs with ByMortes 'ticking' sound, and is a great thing to focus your mind one while you meditate.",
		"PopUps",
		)		
		global.tut_meditation = true; 
}


scr_btn_toggle_drawer( "Meditate" );	

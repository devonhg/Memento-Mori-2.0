///@description The master button call script.
///@param Button The name index of the button to call. 

var _index = argument[2];

switch( _index ){
	#region Legal
		case "Legal":
			url_open("http://bymorte.com/legal/");
		break;
	#endregion
	
	#region Meditation
		case "Meditation":
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
		break;
	#endregion
	
	#region default
		default:
			scr_debug_msg("BUTTON", "Error, script " + string(argument[2]) + " doesn't exist." );
		break
	#endregion
}

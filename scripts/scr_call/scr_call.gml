///@description The master button call script.
///@param Button The name index of the button to call. 

var _index; 

if( argument_count = 1 ){
	_index = argument[0];	
}else{
	_index = argument[2];
}

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
					"The ByMorte Meditation Timer is a highly recomended daily activity. At least once per day take some time to meditate to put space between stimulation and response. The timer also syncs with ByMortes 'ticking' sound, and is a great thing to focus your mind on while you meditate.",
					"PopUps",
					)		
					global.tut_meditation = true; 
			}
			scr_btn_toggle_drawer( "Meditate" );	
		break;
	#endregion
	
	#region Call Quote Of The Day
		case "CallQOTD":
			if( global.first_run && !global.tut_qotd ){
					scr_create_popup( 
					"Tutorial", 
					"The Quote Of The Day", 
					"Every day you will get a new 'Quote of The Day' from really insightful people and authors. This is to help promote learning and growth as you work though ByMorte as well as give you opportunities to check out great sources of knowledge. Go ahead and hit next to view todays quote.",
					"PopUps",
					)		
					global.tut_qotd = true; 
			}
			//show_message( global.qod[0] );
			if( global.qod[0] != "null" ){
				scr_create_popup( 
					"Quote", 
					"By: " + global.qod[2], 
					global.qod[1],
					"PopUps",
					"The Author",
					scr_open_link,
					global.qod[3]
					)
				google_analytics_event("QOTD", "Viewing", 1, global.appID);
			}else{
				scr_debug_msg("QOTD", "Quote not set, getting one.")
				scr_call_bymorte_qotd(true);
				//global.call_qotd = true;
			}
		break;
	#endregion

	#region About
		case "about":
			scr_create_popup( 
			"ByMorte", 
			"The 'high stakes' productivity app", 
			"ByMorte is simply an app that tracks how much time you have left until a fictitious 'death day'. This is designed to put pressure onto you to accelerate your life’s ambitions.",
			"PopUps",
			"Learn More",
			scr_call,
			"about_yes"
			)
		break;
	#endregion

	#region About Yes
		case "about_yes":
			url_open("http://bymorte.com/getting-started/");
		break;
	#endregion
	
	#region Feedback
		case "feedback":
			url_open( "https://playfreytechnologies.typeform.com/to/CmrA0C" );
		break;
	#endregion
	
	#region Update Death Day
		case "update_dd":
			global.update_dd = get_string_async("Edit your Death Day, note that it can't be more than 20 years into the future.", scr_md_get_dd()); 
		break;
	#endregion
	
	/*
	#region Call QOTD
		case "call_qotd":
			if( global.first_run && !global.tut_qotd ){
					scr_create_popup( 
					"Tutorial", 
					"The Quote Of The Day", 
					"Every day you will get a new 'Quote of The Day' from really insightful people and authors. This is to help promote learning and growth as you work though ByMorte as well as give you opportunities to check out great sources of knowledge. Go ahead and hit next to view todays quote.",
					"PopUps",
					)		
					global.tut_qotd = true; 
			}

			if( global.qod[0] != "null" ){
				scr_create_popup( 
					"Quote", 
					"By: " + global.qod[2], 
					global.qod[1],
					"PopUps",
					"The Author",
					scr_open_link,
					global.qod[3]
					)
			}
		break;
	#endregion
	*/
	
	
	#region Call Meditate Drawer
		case "call_meditate":
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
	
	#region Start/Stop Timer
		case "timer_ss":
			if( instance_exists(vw_timer) ){
				vw_timer.play = !vw_timer.play; 
				vw_timer.synced = false; 
			}
		break;
	#endregion
	
	#region default
		default:
			scr_debug_msg("BUTTON", "Error, script " + string(argument[2]) + " doesn't exist." );
		break
	#endregion
}

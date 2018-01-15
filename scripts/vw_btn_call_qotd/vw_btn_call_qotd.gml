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
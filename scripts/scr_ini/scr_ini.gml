//Initiate Core Stuff
	draw_set_font( fnt_debug_font );
	randomize(); 
	
//Call ini scripts
	scr_ini_check_data(); 
	scr_ini_globals(); 

//Initiate controllers
	instance_create_depth( 0,0,0, con_master_controller );
	
//Lock Rotation
if os_type == os_android || os_type == os_ios{
	//os_
   //os_lock_orientation(true);
}

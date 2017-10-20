/// @description Initiate full window script

scr_fullwindow( 1000 );

/// @description Initiate objects

if( room == rm_main ){
	//show_message("ran")
	instance_create_layer( x_at_fraction(6), y_at_fraction(4), "Instances", vw_counter );
	//instance_create_layer( room_width/2, room_height/2, "Instances", vw_counter );
	scr_add_button( x_at_fraction(6), y_at_fraction(10), "Meditate", width_at_fraction(8), height_at_fraction(1), global.co_light_grey, global.co_black, global.co_black, 4, scr_btn_test, "Instances", 6 ); 
	
	
	
	//scr_add_sprite_button( x_at_fraction(6), y_at_fraction(9), spr_drawer_btn, scr_btn_test, "Instances" ); 
	
	
	//Initiate our settings drawer
	scr_drawer( "drawers", false, "Settings" );
	//scr_add_sprite_button()
}
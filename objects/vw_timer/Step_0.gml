/// @description Insert description here
// You can write your code in this editor
if( !scr_is_popup_open() ){
	instance_destroy();	
}

if( !synced and play ){
	if( vw_pendulum.timer == 180 || vw_pendulum.timer == 360 ){
		synced = true; 	
		timer = dt_nth_round( timer, second );
	}
}
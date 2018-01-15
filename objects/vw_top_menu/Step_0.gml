/// @description Wipe Data
var _point = point_in_rectangle(mouse_x, mouse_y, 0, 0, room_width, height_at_fraction(2));
var _mouse = mouse_check_button(mb_left);

if( _point && _mouse ){
	wipe_counter++;
	scr_debug_msg("MEM", "Counting to wipe.." + string(wipe_counter)); 
	if( wipe_counter > room_speed * 3 ){
		global.wipe_data = get_string_async("Type 'delete' to delete your data", "");
		wipe_counter = 0; 
	}
}else{
	wipe_counter = 0; 	
}

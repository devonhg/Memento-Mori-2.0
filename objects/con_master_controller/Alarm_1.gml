/// @description Regular Check
if( md_is_new_day() ){
	vw_btn_call_qotd(); 	
	md_process_push_notifications();
}

alarm[1] = check_time;

scr_debug_msg("TMR", "Regular Check Done.");
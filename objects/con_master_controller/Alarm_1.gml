/// @description Regular Check
if( md_is_new_day() ){	
	global.new_death_day = true; 
	scr_call_bymorte_qotd();
	md_process_push_notifications();
}

alarm[1] = check_time;

scr_debug_msg("TMR", "Regular Check Done.");
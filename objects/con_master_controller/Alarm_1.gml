/// @description Regular Check
global.new_day = md_is_new_day();//Check if new day
if( global.new_day ){//Check every 3 seconds if it's a new day
	//global.new_death_day = true; 
	scr_call_bymorte_qotd();
	md_process_push_notifications();
}
global.days_used = md_get_days_used(); 

alarm[1] = check_time;

scr_debug_msg("TMR", "Regular Check Done.");
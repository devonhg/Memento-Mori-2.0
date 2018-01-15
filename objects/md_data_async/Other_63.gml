/// @description Insert description here
// You can write your code in this editor

var i_d = ds_map_find_value(async_load, "id");

if( i_d == global.update_dd ){
   if( ds_map_find_value(async_load, "status") ){
      if( ds_map_find_value(async_load, "result") != "" ){
		 scr_md_set_dd(  ds_map_find_value(async_load, "result") ); 
      }
   }
}
if( i_d == global.wipe_data ){
   if( ds_map_find_value(async_load, "status") ){
      if( ds_map_find_value(async_load, "result") == "delete" ){
		
		if file_exists(global.db){
			file_delete(global.db);
		}
		
		md_wipe_notifications();
		
		scr_debug_msg("MEM", "data wiped");
		game_end(); 
      }
   }
}


global.wipe_data = -1; 
global.update_dd = -1; 
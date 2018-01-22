/// @description Insert description here
// You can write your code in this editor

var _dbg_msg = "Nothing Processed, " + string( ds_map_find_value(async_load, "status") ) ;

var _json = -1; 
var _data = -1;
var _ret_str = "";

scr_debug_msg("HTTP", "IDS: " + string(ds_map_find_value(async_load, "id")) + ", " + string(global.http_async));

if ds_map_find_value(async_load, "id") == global.http_async{	
	scr_debug_msg("HTTP", "Processing QOTD");	
	
	if ds_map_find_value(async_load, "status") == 0{
		
		_ret_str = ds_map_find_value(async_load, "result");
		_json = json_decode(_ret_str);
		
		if( _json != -1 ){
			_data = ds_map_find_value( _json,  "data" );
			
			global.qod[0] = _data[? "id"];
			global.qod[1] = _data[? "quote"];
			global.qod[2] = _data[? "author"];
			global.qod[3] = _data[? "link"];
			
			//show_message( "Success: New QOTD assigned." );
			scr_debug_msg("HTTP", "Success: New QOTD assigned.");
			scr_debug_msg("HTTP", "Call Status: " + string(global.new_day) + " " + string(global.call_qotd));
			
			_dbg_msg = "Async - HTTP Successful";
			
			if( global.new_day || global.call_qotd ){
				scr_call("CallQOTD");
				//global.new_death_day = false; 
				global.call_qotd = false; 
				global.new_day = false; 
			}
		}else{			
			_dbg_msg = "Async - JSON Parse Failed!";
		}
	}else{
		r_str = "null";
	}
}


//global.http_async = -1; 

scr_debug_msg("HTTP", _dbg_msg + ", " + string(global.call_qotd));
/// @description Insert description here
// You can write your code in this editor

var type = ds_map_find_value(async_load, "type");
var status = ds_map_find_value(async_load, "status");
var _debug_cat = "PUSH";
if( status == 0 ){
   //error of some kind
   var error = ds_map_find_value(async_load, "error");
   scr_debug_msg( _debug_cat, "Error: " + string( string(error) ) );
}else{
	scr_debug_msg( _debug_cat, "Type: " + type );

	//The code to put out more notifications goes
	//here when the app grows up.
}

global.push_async = -1; 
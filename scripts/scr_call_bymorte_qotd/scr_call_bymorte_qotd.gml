//@param Call_New Set to true to call a new QOTD from the API

if !instance_exists( md_data_async ) instance_create_depth(0,0,0,md_data_async); 

var _get_qotd = false;
if( argument_count > 0 ) _get_qotd = argument[0]; 
global.call_qotd = _get_qotd;

global.http_async = http_get("http://api.bymorte.com/quote");

scr_debug_msg("HTTP", "Sent for new QOTD")
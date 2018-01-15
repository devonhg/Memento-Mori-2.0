if !instance_exists( md_data_async ) instance_create_depth(0,0,0,md_data_async); 

global.http_async = http_get("http://api.bymorte.com/quote");

scr_debug_msg("HTTP", "Sent for new QOTD")
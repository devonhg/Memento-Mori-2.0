///Reach out the the airtable API, and retrieve the 30 latest records by default, or all. 

var _get_all = false;
var _max_records = 100;

if !instance_exists( md_data_async ) instance_create_depth(0,0,0,md_data_async); 

if( argument_count > 0 ){
	_get_all = argument[0]; 	
}

if( !_get_all ) _max_records = 100;

get = http_get("https://api.airtable.com/v0/appLC9ED9AJzdnyKx/Quotes?api_key=keyRrtQU8hhUiynMf&maxRecords=" + string(_max_records) + "&view=Latest");
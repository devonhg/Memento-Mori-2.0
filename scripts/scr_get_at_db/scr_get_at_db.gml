///@description Take the data returned by the airtable api and return it as a nice two dimensional array
///@param Result The result of the api call, in json format.

var _payload = json_decode( argument[0] );//Map
var _payload_list = _payload[? "records"];//List
var _payload_list_length = ds_list_size(_payload_list);

var _payload_item = -1;

var _op = -1; 

for( i = 0; i < _payload_list_length; i++ ){
	_payload_item = _payload_list[| i];
	_payload_item = _payload_item[? "fields"];//Map
	
	_op[i,0] = _payload_item[? "ID"];//Integer
	_op[i,1] = _payload_item[? "Author"];//String
	_op[i,2] = _payload_item[? "Quote"];//String
	_op[i,3] = _payload_item[? "Link"];//Undefined or String
	_op[i,4] = _payload_item[? "Hidden"];//Undefined or 1
}

ds_map_destroy(_payload_item);
ds_map_destroy(_payload);
ds_list_destroy(_payload_list);

return _op; 
///@description Update the local database with the provided list of quotes
///@param Quotes a 2d array containing the quotes data

var _quotes = argument[0]; 
var _length = array_height_2d(_quotes)
var i; 
var _id = -1; 
var _section = "quotes";

ini_open( "quote.ini" );

if( ini_key_exists( "status", "initiated" ) ){
	for( i = 0; i < _length; i++ ){
		_id = _quotes[i, 0]; 
		ini_write_string(_section, _id, _quotes[i, 1]+","
										+_quotes[i, 2]+","
										+_quotes[i, 3]+","
										+_quotes[i, 4]+","
						);//Author
	}
	
}else{
	ini_write_real("status", "initiated", 1);
}

ini_close(); 
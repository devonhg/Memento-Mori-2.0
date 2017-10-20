/*
* This is a simple script that returns whether
* or not a drawer is currently open. No arguments. 
*/

var _i, _inst;

if( instance_exists( vw_drawer ) ){
	for ( _i = 0; _i < instance_number(vw_drawer); _i += 1){
		_inst = instance_find(vw_drawer, _i);		
		if( _inst.state_open == true ) return true; 
	}	
	return false; 
}else{
	return false;//You idiot, there are no drawers 
}
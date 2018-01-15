///@description Set all drawers to the closed state. 
///@param Exception The drawer to not do.

var _except = argument[0]; 

var _ret = false; 

if( instance_exists( vw_drawer ) ){
	var i, obj;
	for (i = 0; i < instance_number(vw_drawer); i += 1){
		obj = instance_find(vw_drawer,i);
		if( obj.id != _except ){
			obj.state_open = false; 
			_ret = true; 
		}
	}
}

return _ret; 
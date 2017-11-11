///Check if a drawer exists by name
/// @param Name The name of the drawer

var _name = argument[0];

if( instance_exists( vw_drawer ) ){
	var i, obj;
	for (i = 0; i < instance_number(vw_drawer); i += 1){
		obj = instance_find(vw_drawer,i);
		if( obj.name == _name ){
			return obj;  
		}
	}
}else{
	return false; 
}
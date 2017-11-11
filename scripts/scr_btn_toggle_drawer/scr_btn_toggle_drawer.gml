///Toggle a specific drawer to be open or closed, can call by ID or name
// @param Drawer_Name The name of the drawer
//Set the called drawer to what it's not

if( is_string( argument[0] ) ){
	
	//Find the drawer, if it exists
	var _drawer = scr_btn_find_drawer( argument[0] );
	
	//
	if( _drawer ){
		_drawer.state_open = !_drawer.state_open;	
		return true; 
	}else{
		show_debug_message( "Error! " + argument[0] + " drawer does not exist!" );
		return false; 	
	}
}else{
	if( argument[0].object_index == vw_drawer ){
		argument[0].state_open = !argument[0].state_open;
		return true; 
	}else{
		show_debug_message( "Error! Object passed not a drawer!" );
		return false; 	
	}
}
///@param Layer the layer to make the drawer on
///@param Bottom Whether or not the drawer goes on the bottom or the top. 
///@param Name the name of the drawer
/*
	@description Initiate a drawer into the game. 
	
	Usage: 
	First, intiate a drawer using this script, return to a variable, then attach buttons, text, and 
	whatever else you need to it using the attachment scripts.
*/

var _layer = argument[0];
var _bottom_drawer = argument[1]; 
var _name = argument[2]; 
var _exists = false

#region //Check if drawer exists

	if( instance_exists( vw_drawer ) ){
		var i, obj;
		for (i = 0; i < instance_number(vw_drawer); i += 1){
			obj = instance_find(vw_drawer,i);
			if( obj.name == _name ){
				_exists = true; 
				break; 
			}
		}
	}

#endregion

#region
	if( !_exists ){
		var drawer = instance_create_layer( 0,0, _layer, vw_drawer );



		drawer.bottom_drawer = _bottom_drawer;
		drawer.name = _name;
		
		var btn = scr_add_sprite_button( 100,100, spr_drawer_btn, scr_btn_test, _layer, drawer );
		btn.depth = -20; 

		return drawer; 
	}else return -1; 

#endregion
///@param Layer the layer to make the drawer on
///@param Bottom Whether or not the drawer goes on the bottom or the top. 
///@param Name the name of the drawer
///@param Description The description of the drawer
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
var _btn = -1; 
var _description = argument[3];

#region //Check if drawer exists

	if( scr_btn_find_drawer( _name ) ){
		_exists = true; 	
	}

#endregion

#region //Create the drawer and Button
	if( !_exists ){
		var drawer = instance_create_layer( 0,0, _layer, vw_drawer );



		drawer.bottom_drawer = _bottom_drawer;
		drawer.name = _name;
		drawer.description = _description; 
		
		//Draw the button in the right place, based on positioning. 
		if( _bottom_drawer ){
			btn = scr_add_sprite_button( 0, -500, spr_drawer_btn, scr_btn_toggle_drawer, _layer, drawer );
			btn.image_yscale = -.5; 
			btn.image_xscale = .5; 
		}else{		
			btn = scr_add_sprite_button( 0, 500, spr_drawer_btn, scr_btn_toggle_drawer, _layer, drawer );
			btn.image_yscale = .5; 
			btn.image_xscale = .5; 
		}
		
		btn.depth -= 1; 

		return drawer; 
	}else return -1; 

#endregion
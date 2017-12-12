///@description Add a button to the game. 
///@param X The x value
///@param Y The y value
///@param Sprite The sprite
///@param Script The call scrip
///@param Layer The Layer
///@param *Parent The parent object
///@param *Height The height to scale the button

#region //Declare Variables

	var _xx = argument[0];
	var _yy = argument[1];
	var _sprite = argument[2]
	var _call_script = argument[3];
	var _layer = argument[4];
	var _parent_object = -1;
	var _height = -1; 
	
	if( argument_count > 5 ){
		_parent_object = argument[5]; 	
	}if( argument_count > 6 ){
		_height = argument[6];
	}

#endregion

var _button = instance_create_layer( _xx, _yy, _layer, vw_button );

#region //Assign Values

	_button.call_script = _call_script;
	_button.sprite = _sprite;  
	_button.parent_object = _parent_object; 
	_button.XX = _xx;
	_button.YY = _yy; 
	_button.height = _height;

#endregion

return _button; 
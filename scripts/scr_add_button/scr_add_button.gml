///@description Add a button to the game. 
///@param X The x value
///@param Y The y value
///@param Text The button text
///@param Width The width in fraction
///@param Height The height in fraction
///@param Box_Color The color of the button itself
///@param Border_Color The color of the border
///@param Text_Color The color of the text
///@param Border_Width The width of the border
///@param Call_Script The script that pushing the button calls
///@param Layer The layer to make the button on
///@param Height_Adjust The height adjustment value for the text, in fraction
///@param *Parent The parent object


#region //Declare Variables

	var _xx = argument[0];
	var _yy = argument[1];
	var _txt = argument[2];
	var _width = argument[3];
	var _height = argument[4];
	var _box_color = argument[5];
	var _border_color = argument[6]; 
	var _text_color = argument[7]; 
	var _border_width = argument[8]; 
	var _call_script = argument[9];
	var _layer = argument[10];
	var _height_adjust = argument[11]; 
	var _parent_object = -1; 
	var _button = -1; 

	if( argument_count > 12 ){
		_parent_object = argument[12];  
	}

#endregion

if( _parent_object ){
	_button = instance_create_layer( _parent_object.x + _xx, _parent_object.y +_yy, _layer, vw_button );
}else{
	_button = instance_create_layer( _xx, _yy, _layer, vw_button );
}


#region //Assign Values

	_button.WW = _width;
	_button.HH = _height; 
	_button.XX = _xx;
	_button.YY = _yy; 
	_button.col_in = _box_color;
	_button.col_out = _border_color; 
	_button.col_text = _text_color; 
	_button.line_width = _border_width; 
	_button.text = _txt;
	_button.text_adj = _height_adjust; 
	_button.call_script = _call_script;
	_button.parent_object = _parent_object; 

#endregion

return _button; 
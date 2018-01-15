///@description Add a button to the game. 
///@param X The x value 0
///@param Y The y value 1
///@param Text The button text 2
///@param Width The width 3
///@param Height The height 4
///@param Box_Color The color of the button itself 5
///@param Border_Color The color of the border 6
///@param Text_Color The color of the text 7
///@param Accent_Color The accent color of the button 8
///@param Border_Width The width of the border 9
///@param Call_Script The script that pushing the button calls 10
///@param Layer The layer to make the button on 11
///@param Height_Adjust The height adjustment value for the text, in fraction 12
///@param *Parent The parent object 13
///@param *Argument1 14



#region //Declare Variables

	var _xx = argument[0];
	var _yy = argument[1];
	var _txt = argument[2];
	var _width = argument[3];
	var _height = argument[4];
	var _box_color = argument[5];
	var _border_color = argument[6]; 
	var _text_color = argument[7];
	var _accent_color = argument[8]
	var _border_width = argument[9]; 
	var _call_script = argument[10];
	var _layer = argument[11];
	var _height_adjust = argument[12]; 
	var _parent_object = -1; 
	var _button = -1; 
	var _argument1 = -1; 

	var _ind = 13;
	if( argument_count > _ind ){ _parent_object = argument[_ind]; }
	_ind++; 
	if( argument_count > _ind ){ _argument1 = argument[_ind]; }

#endregion

if( _parent_object ){
	_button = instance_create_layer( _parent_object.x + _xx, _parent_object.y +_yy, _layer, vw_button );

	_button.depth = _parent_object.depth - 1; 
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
	_button.col_acc = _accent_color; 
	_button.line_width = _border_width; 
	_button.text = _txt;
	_button.text_adj = _height_adjust; 
	_button.call_script = _call_script;
	_button.parent_object = _parent_object; 
	_button.argument_1 = _argument1;

#endregion

return _button; 
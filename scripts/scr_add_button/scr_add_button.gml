///@Description create a primary button
///@param X The x Coordinate 0
///@param Y The y Coordinate 1
///@param Name The name to put on the button 2
///@param Script The script to call when Clicked 3
///@param *Style 0 = Primary, 1 = Secondary, 2 = Tertiary
///@param *Parent The parent object to adhere to 4
///@param *Argument, default to -1; 5
///@param *Width The parent object to adhere to, -1 to default 6

#region Static Arguments
	var _width = width_at_fraction( 8 );
	var _height = height_at_fraction( 1 ); 
#endregion

#region Primary Arguments
	var _xx = argument[0];
	var _yy = argument[1];
	var _name = argument[2];
	var _script = argument[3];
	
#endregion

#region Optional arguments
	var _par_object = -1; 
	var _layer = "Instances"; 
	var _parent_object = -1; 
	var _argument = -1; 
	var _style = 0; 
	
	var _ind = 4;
	if( argument_count > _ind && argument[_ind] != -1 ){
		_style = argument[_ind];	
	}
	_ind++;
	if( argument_count > _ind && argument[_ind] != -1 ){
		_parent_object = argument[_ind]; 
		_layer = _parent_object.layer; 
	}
	_ind++;
	if( argument_count > _ind && argument[_ind] != -1 ){
		_argument = argument[_ind];	
	}
	_ind++;
	if( argument_count > _ind && argument[_ind] != -1 ){
		_width = argument[_ind];	
	}
#endregion

#region Logic
	var _btn = -1; 

	switch( _style ){
		case 0://Primary
			_btn = scr_add_button_ext( _xx, _yy, _name, _width, _height, global.co_sec, global.co_prim, global.co_prim, global.co_tert, 4, _script, _layer, 0, _parent_object, _argument );
		break;
			
		case 1://Secondary
			_btn = scr_add_button_ext( _xx, _yy, _name, _width, _height, global.co_sec, global.co_prim, global.co_prim, global.co_sec, 4, _script, _layer, 0, _parent_object, _argument );
		break
	
		case 2://Tertiary
			_btn = scr_add_button_ext( _xx, _yy, _name, _width, _height, global.co_prim, global.co_prim, global.co_sec, global.co_prim, 4, _script, _layer, 0, _parent_object, _argument );
		break;
	}
#endregion
return _btn; 

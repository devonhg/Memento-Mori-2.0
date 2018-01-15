///@description Return the ratio
///@param width The default width
///@param height The default height
///@param scale The height that it's going to be scaled to, in pixels. 
///@param *scale_type "w" for scaling based on width, "h" for scaling based on height, defaults to "h"
///@return Returns an array containing the x scale(0) and the y scale(1)

#region//Input

	var _width = argument[0];
	var _height = argument[1];
	var _scale = argument[2]; 
	var _scale_type = "h"; 
	var _ratio = _width/_height;
	var _op = -1; 
	
	if( argument_count > 3 ){
		_scale_type = argument[3];
	}

#endregion

#region//Logic

	if( _scale_type == "h"  ){
		_op[1] = _scale/_height;//Y Scale 
		_op[0] = _op[1] * _ratio//X Scale
	}else{
		_op[0] = _scale/_width;//X Scale 
		_op[1] = _op[0] * _ratio//Y Scale		
	}

	return _op; 
	
#endregion
///@description Create a popup with information on it. 
///@param Title The title text
///@param Sub-Title The sub-title text/message
///@param Content text or sprite, sprite must be square
///@param Layer The layer to put the popup on
///@param *Yes-Text The text for the yes button
///@param *Script The script to run should "yes" be hit.
///@param *Argument1 Argument to pass to the script
///@param *Argument2 Argument to pass to the script


if( !instance_exists( vw_popup ) ){
	#region//Initiate Variables

		var _title = argument[0];
		var _subtitle = argument[1]; 
		var _content = argument[2];
		var _layer = argument[3];
		var _yes_text = -1;
		var _yes_script = -1; 
		var _argument = -1;
		//var _argument_2 = -1;
	
	
		var _ind = 4;
		if( argument_count > _ind ){ _yes_text = argument[_ind]	}
		_ind++; 
		if( argument_count > _ind ){ _yes_script = argument[_ind]; }	
		_ind++;
		if( argument_count > _ind ){ _argument = argument[_ind] }	
		
		var _popup = instance_create_layer( 0,0, _layer, vw_popup );
	
	#endregion

	#region//Assign values

		_popup.title_text = _title;
		_popup.sub_title_text = _subtitle;
		_popup.content = _content;
		_popup.yes_text = _yes_text;
		_popup.script = _yes_script;

	#endregion

	#region//Create buttons
		
		var _close_button = scr_add_primary_button(
			x_at_fraction(6), 
			y_at_fraction(10.5),
			"Close",
			scr_close_popup,
			0,
			_popup
		)
		
		if( _yes_text != -1 && _yes_script != -1 ){
			
			/*
			var _action_button = scr_add_button( 
				x_at_fraction(6), 
				y_at_fraction(9.0), 
				_yes_text, 
				width_at_fraction( 8 ), 
				height_at_fraction( 1 ), 
				global.co_black,
				global.co_dark_grey,
				global.co_light_grey,
				6,
				_yes_script,
				_layer,
				10,
				_popup,
				_argument//,
				//_argument_2
			);
			_action_button.depth -= 1; 
			*/
			var _action_button = scr_add_primary_button(
				x_at_fraction(6), 
				y_at_fraction(9.0), 
				_yes_text, 
				_yes_script,
				0,
				_popup,
				_argument
			)
			

		}
		
	#endregion

	return _popup;
}
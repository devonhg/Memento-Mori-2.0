///@description Create a popup with information on it. 
///@param Title The title text
///@param Sub-Title The sub-title text/message
///@param Content text or sprite, sprite must be square
///@param Layer The layer to put the popup on
///@param *Yes-Text The text for the yes button
///@param *Script The script to run should "yes" be hit.

if( !instance_exists( vw_popup ) ){
	#region//Initiate Variables

		var _title = argument[0];
		var _subtitle = argument[1]; 
		var _content = argument[2];
		var _layer = argument[3];
		var _yes_text = -1;
		var _yes_script = -1; 
	
		if( argument_count > 4 ){
			
			_yes_text = argument[4]	
			
		}if( argument_count > 5 ){
			_yes_script = argument[5]; 
		}	
	
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
		
		var _close_button = scr_add_button( 
			x_at_fraction(6), 
			y_at_fraction(10.5), 
			"Close", 
			width_at_fraction( 8 ), 
			height_at_fraction( 1 ), 
			global.co_light_grey,
			global.co_dark_grey,
			global.co_dark_grey,
			6,
			scr_close_popup,
			_layer,
			10,
			_popup
		);
		_close_button.depth -= 1; 
		
		if( _yes_text != -1 && _yes_script != -1 ){
			
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
				_popup
			);
			_action_button.depth -= 1; 

		}
		
	#endregion

	return _popup;
}
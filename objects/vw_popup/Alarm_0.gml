/// @description Create Buttons

#region//Create buttons
		
	var _close_button = scr_add_button(
		x_at_fraction(6), 
		y_at_fraction(10.5),
		no_text,
		scr_close_popup,
		2,
		id
	)
		
	if( yes_text != -1 && script != -1 ){
			
		var _action_button = scr_add_button(
			x_at_fraction(6), 
			y_at_fraction(9.0), 
			yes_text, 
			script,
			0,
			id,
			arg
		)
			
	}
		
#endregion
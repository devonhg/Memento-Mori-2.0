
#region //Click detection

	if( sprite == -1 ){

		//_x = //x_at_fraction( XX );
		//_y = //y_at_fraction( YY );
		//_w = //width_at_fraction( WW );
		//_h = //height_at_fraction( HH ); 
		_adj = height_at_fraction( text_adj );

		if( point_in_rectangle_scaled(mouse_x, mouse_y, XX, YY, WW, HH) && script_exists( call_script ) && mouse_check_button_pressed( mb_left ) ){
			script_execute( call_script, parent_object, id );
		}
	
	}else{

		if( sprite_index != sprite ) sprite_index = sprite; 
		if( position_meeting( mouse_x, mouse_y, id ) && script_exists( call_script ) && mouse_check_button_pressed( mb_left ) ){
			script_execute( call_script, parent_object, id );
		}
	
	}

#endregion


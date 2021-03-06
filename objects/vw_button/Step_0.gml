

#region//Check for parent
	
	if( parent_object != -1 ){
		if( !instance_exists( parent_object ) ){
			destroyed = true; 
			instance_destroy();	
		}
	}

#endregion

if( !destroyed ){

	#region//Check if clickable
		var _button_parent = "none";
		var _can_click = true; 
		if( parent_object.object_index == vw_drawer ) _button_parent = "drawer";
		else if( parent_object.object_index == vw_popup ) _button_parent = "popup";

		if( _button_parent == "none" ){
			if( scr_is_drawer_open() || scr_is_popup_open() ){
				_can_click = false; 
			}
		}else if( _button_parent == "drawer" ){
			if( scr_is_popup_open() ){
				_can_click = false; 	
			}
		}
	#endregion

	#region //Click detection

		if( sprite == -1 ){

			if( _can_click  ){  
				_adj = height_at_fraction( text_adj );

				if( point_in_rectangle_scaled(mouse_x, mouse_y, x, y, WW, HH) && script_exists( call_script ) && mouse_check_button_pressed( mb_left ) ){
					script_execute( call_script, parent_object, id, argument_1);
					google_analytics_event("Button", text, 1, global.appID);
				}
			}
	
		}else{

			if( sprite_index != sprite ) sprite_index = sprite; 
			
			if( height != -1 ){
				var _scale = scr_get_scale( sprite_get_width(sprite_index), sprite_get_height(sprite_index), height );
				image_xscale = _scale[0];
				image_yscale = _scale[1];  
			}

			if( _can_click  ){ 

				if( position_meeting( mouse_x, mouse_y, id ) && script_exists( call_script ) && mouse_check_button_pressed( mb_left ) ){
					script_execute( call_script, parent_object, id, argument_1 );
					google_analytics_event("Button", text, 1, global.appID);
				}
			}
	
		}

	#endregion

}
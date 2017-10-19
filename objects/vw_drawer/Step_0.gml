
if( keyboard_check_pressed( vk_space ) ){ state_open = !state_open; }

#region //Positioning Logic

	if( x != x_at_fraction( 6 ) ) x = x_at_fraction( 6 );

	if( bottom_drawer ){
		if( state_open ){
			y_dest = y_at_fraction( 8 );
		}else{
			y_dest = y_at_fraction( 18 );
		}
	}else{
		if( state_open ){
			y_dest = y_at_fraction( 4 );
		}else{
			y_dest = y_at_fraction( -6 );
		}	
	}

	y = approach( y, y_dest, 30 );

#endregion
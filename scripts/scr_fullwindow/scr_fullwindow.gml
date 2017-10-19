/// @description Dynamically adjusts the width to match the screen
/// @param height The height of the view into the room. 


var setHeight, setScale, dispW, dispH, ratVal, scale_to, view_width, view_height, view_x, scaleTo, win_width, win_height;

setHeight = argument[0];
//setScale = 0;


//Obtain ratio value of the monitor
    dispW = display_get_width();
    dispH = display_get_height();
    ratVal = dispW/dispH;
	ratio = ratVal;

//Calculate Width and Height	
	scale_to = floor(dispH/setHeight);
	view_width = setHeight * ratVal; 
	view_height = setHeight; 
	
	view_x = ( room_width - view_width )/2; 
	
	//view_set_visible(0, true);
	//view_set_wport(0, view_width);
	//view_set_hport(0, view_height);
	view_enabled = true;
	view_set_visible(0, true);
	//show_message( "view_width = " + string( view_width ) + " | " + "view_height = " + string( view_height ) )
	
	//view_set_wport( 0, view_width );
	//view_set_hport( 0, view_height );
	
	//Create Camera
	var cam = camera_create_view( view_x, 0, view_width, view_height, 0, -1, -1, -1, -1, -1 );
	view_set_camera( 0, cam ); 

	
	scaleTo = floor( dispH/setHeight );
	win_width = view_width*scaleTo;
	win_height = view_height*scaleTo;
	window_set_size( win_width, win_height );
	window_set_position((dispW-win_width)/2,(dispH-win_height)/2);
	surface_resize( application_surface, win_width, win_height )

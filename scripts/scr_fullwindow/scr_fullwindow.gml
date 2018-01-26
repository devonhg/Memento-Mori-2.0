/// @description Dynamically adjusts the width to match the screen
/// @param height The height of the view into the room. 


var setHeight, setScale, dispW, dispH, ratVal, scale_to, view_width, view_height, view_x, scaleTo, win_width, win_height;

setHeight = argument[0];

//Obtain ratio value of the monitor
    dispW = display_get_width();
    dispH = display_get_height();
    ratVal = dispW/dispH;

//Calculate Width and Height	
	view_width = setHeight * ratVal; 
	view_height = setHeight; 

//Configure View and create camera
	view_x = ( room_width - view_width )/2; 
	view_enabled = true;
	view_set_visible(0, true);
	var cam = camera_create_view( view_x, 0, view_width, view_height, 0, -1, -1, -1, -1, -1 );
	view_set_camera( 0, cam ); 
	
//Apply Calculations
	scale_to = floor(dispH/setHeight);
	if( scale_to = 0 ) scale_to = 1;
	win_width = view_width*scale_to;
	win_height = view_height*scale_to;
	window_set_size( win_width, win_height );
	window_set_position((dispW-win_width)/2,(dispH-win_height)/2);
	surface_resize( application_surface, win_width, win_height )

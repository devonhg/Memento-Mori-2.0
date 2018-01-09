///@description Draws a box at an x/y coordinate at a specific height and scale, returns x/y pair. 
///@param x
///@param y
///@param width The width
///@param height The height
///@param center_color
///@param border_color
///@param border_width
///@param *accent color

//Declare main values
	//Coordinates
	var XX = argument[0];
	var YY = argument[1]; 
	//Dimensions
	var b_w = argument[2];//Box Width Value
	var b_h = argument[3];//Box height value
	//Colors
	var ba_c = argument[4];//Background color
	var bo_c = argument[5];//Border color
	var bo_w = argument[6];//Border width
	var bo_acc = -1;// Accent Color
	//var cam = camera_get_active(); 
	//var scrn_w = camera_get_view_width(cam);//Screen width
	//var b_w = b_w_v * scrn_w;//Box width in pixels
	
	if( argument_count > 7 ){
		bo_acc = argument[7]; 
	}

//Declare sub values
	var b_w_h = ceil(b_w/2);//Box width half
	var b_h_h = ceil(b_h/2);//Box height half
	var bo_h = bo_w/2;//Border half

//Draw the rectangles
	//Background
	draw_rectangle_color(
		XX - b_w_h, 
		YY - b_h_h,  
		XX + b_w_h, 
		YY + b_h_h, 
		ba_c,ba_c,ba_c,ba_c,0
	);
	//Accent
	if( bo_acc ){
		draw_rectangle_color(
			XX - b_w_h, 
			YY + (b_h_h - (b_h_h/6)),
			XX + b_w_h, 
			YY + b_h_h, 
			bo_acc,bo_acc,bo_acc,bo_acc,0
		);		
	}
	//Border
	var _xminus = ( XX - b_w_h );
	var _yminus = ( YY - b_h_h );
	var _xplus = ( XX + b_w_h );
	var _yplus = ( YY + b_h_h );
	
	draw_line_width_color( _xminus - bo_h, _yminus,  _xplus + bo_h, _yminus, bo_w, bo_c, bo_c );//Top
	draw_line_width_color(_xminus, _yminus,  _xminus, _yplus, bo_w, bo_c, bo_c );//Left
	draw_line_width_color( _xplus, _yplus,  _xplus, _yminus, bo_w, bo_c, bo_c );//Right
	draw_line_width_color( _xminus - bo_h, _yplus,  _xplus + bo_h, _yplus, bo_w, bo_c, bo_c );//Bottom
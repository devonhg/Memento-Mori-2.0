///@description Draws a collision box at an x/y coordinate at a specific height and scale.  
///@param pos_check_x The position to check
///@param pos_check_y The position to check
///@param x
///@param y
///@param width The width, based on a scale value ( 1 - 12 )
///@param height The height, based on a scale value ( 1 - 12 )

//Declare main values
	//Testing Coordinates
	var pos_x = argument[0];
	var pos_y = argument[1]
	//Coordinates
	var XX = argument[2];
	var YY = argument[3]; 
	//Dimensions
	var b_w = argument[4];//Box Width Value
	var b_h = argument[5];//Box height value

//Declare sub values
	var b_w_h = b_w/2;//Box width half
	var b_h_h = b_h/2;//Box height half

//Draw the rectangles
	//Background
	return ( point_in_rectangle(
		argument[0],
		argument[1],
		XX - b_w_h, 
		YY - b_h_h,  
		XX + b_w_h, 
		YY + b_h_h
	) and mouse_check_button_pressed(mb_left) ) 

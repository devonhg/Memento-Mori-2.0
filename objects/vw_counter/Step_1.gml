/// @description When clicked, it opens meditation

var _can_click = true; 
if( scr_is_drawer_open() || scr_is_popup_open() ) _can_click = false; 

if( _can_click ){
	if( point_in_rectangle_scaled(mouse_x, mouse_y, x, y+height_at_fraction(1), width_at_fraction(12), height_at_fraction(3)) ){
		scr_call("Meditation");
	}
}

///@description Get the x value at the width fraction, 12 base. 
///@param fraction 1-12 as to what fraction to use. 

var scrn_w = camera_get_view_width(view_camera[0]);//Screen width
var scrn_x = camera_get_view_x(view_camera[0]);
var scrn_fract = scrn_w / 12; 

//dt_track( "ScreenX", scrn_x );
//dt_track( "ScreenW", scrn_w );


return scrn_x + (scrn_fract * argument[0]); 
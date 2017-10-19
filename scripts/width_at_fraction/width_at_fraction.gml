///@description Get a width based on the screen. 
///@param fraction 1-12 as to what fraction to use. 

var scrn_w = camera_get_view_width(view_camera[0]);//Screen width
var scrn_fract = scrn_w / 12; 

dt_track( "scrn_w", scrn_w );
dt_track( "result", string( scrn_fract * argument[0] ) );

return (scrn_fract * argument[0]); 
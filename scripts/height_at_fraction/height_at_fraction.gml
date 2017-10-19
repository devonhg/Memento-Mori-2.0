///@description Get a height based on the screen. 
///@param fraction 1-12 as to what fraction to use. 

var scrn_h = camera_get_view_height(view_camera[0]);//Screen width
var scrn_fract = scrn_h / 12; 



return (scrn_fract * argument[0]); 
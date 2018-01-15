/// @description Set up buttons
var cam_x = camera_get_view_x(view_camera[0]);
var cam_w = camera_get_view_width(view_camera[0]);

var _settings = scr_add_sprite_button(width_at_fraction(5), 0, spr_gear, scr_call_settings, layer_get_name(layer), id, height_at_fraction(.8) );
var _menu = scr_add_sprite_button(width_at_fraction(-5), 0, spr_menu, scr_call_menu, layer_get_name(layer), id, height_at_fraction(.8) );
//_settings.depth -= 10; 
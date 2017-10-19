/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 023B2F33
/// @DnDArgument : "code" "/// @description Traces$(13_10)// Test Code$(13_10)$(13_10)var c = camera_get_active()$(13_10)$(13_10)dt_track( "Window_Width", window_get_width() );$(13_10)dt_track( "Window_Height", window_get_height() );$(13_10)dt_track( "Camera_Width", camera_get_view_width(view_camera[0]) );$(13_10)dt_track( "Camera_Height", camera_get_view_height(view_camera[0]) );$(13_10)dt_track( "Display_Width", display_get_width() );$(13_10)dt_track( "Display_Height", display_get_height() );$(13_10)dt_track( "Ratio", ratio );$(13_10)dt_track( "Mouse_x", mouse_x );$(13_10)dt_track( "Mouse_y", mouse_y ); "
/// @description Traces
// Test Code

var c = camera_get_active()

dt_track( "Window_Width", window_get_width() );
dt_track( "Window_Height", window_get_height() );
dt_track( "Camera_Width", camera_get_view_width(view_camera[0]) );
dt_track( "Camera_Height", camera_get_view_height(view_camera[0]) );
dt_track( "Display_Width", display_get_width() );
dt_track( "Display_Height", display_get_height() );
dt_track( "Ratio", ratio );
dt_track( "Mouse_x", mouse_x );
dt_track( "Mouse_y", mouse_y );

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6EDDFD42
/// @DnDArgument : "code" "$(13_10)if( mouse_check_button_pressed(mb_left) ){$(13_10)	game_debug_mode = !game_debug_mode$(13_10)}"

if( mouse_check_button_pressed(mb_left) ){
	game_debug_mode = !game_debug_mode
}
/// @description Game Debug Values    
show_debug_overlay(game_debug_mode);

///Enable/Disable Debug Mode
if( keyboard_check( vk_alt ) and keyboard_check_pressed( ord("D") ) ){
    game_debug_mode = !game_debug_mode; 
}


/// @description Debug Mode
draw_set_font( fnt_debug_font );
if( game_debug_mode ){
    draw_set_color( c_black ); 
        draw_set_alpha( .5 );
            draw_rectangle( 0, 0, display_get_gui_width(), console_size, false );
        draw_set_alpha( 1 );
    draw_set_color( c_white );

    var i, _debug = "";

    draw_text(36,50,
    string_hash_to_newline("Debug Console")
    );

    for( i = 1; i < array_height_2d(game_debug_values); i++ ){
        _debug += string( game_debug_values[i, 0] ) + " : " +string( game_debug_values[i, 1] ) + "#"; 
    }
    draw_text(50,75,
    string_hash_to_newline(_debug)
    );

    console_size = string_height( string_hash_to_newline(_debug) ) + 100; 
}
draw_set_color( -1 );
draw_set_font( -1 ); 
//Clear the Array
game_debug_values = 0; 
game_debug_values[0,0] = ""; 
game_debug_values[0,1] = -1; 


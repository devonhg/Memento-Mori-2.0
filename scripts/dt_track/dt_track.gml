/// @description dt_track('index', value);
/// @function dt_track
/// @param 'index'
/// @param  value
/*
    Add a value to show in the debug screen
    
    Use ALT + D to activate debug mode once this script has been ran at least once. 
    
    Event : Any
    Object Type : Any   
    Scope : Object  
    
*/

//Check if the system has been initiated, if not, initiate it. 
if( !instance_exists( dt_obj_debug ) ){
    globalvar game_debug_mode;
    game_debug_mode = false; 
    instance_create( 0, 0, dt_obj_debug ); 
}

if( game_debug_mode ){
    
    var _ind = argument[0],
        _val = argument[1],
        i = 0,
        _h = array_height_2d( dt_obj_debug.game_debug_values ); 
    
    //Check if index is already entered. 
        for( i=0; i < _h; i++ ){
            //If we find a matching index, redefine _h to that index
            if( dt_obj_debug.game_debug_values[ i, 0 ] = _ind ){
                _h = i; 
                break; 
            }
        }

    //Enter results into the debug array
        dt_obj_debug.game_debug_values[ _h, 0 ] = _ind;
        dt_obj_debug.game_debug_values[ _h, 1 ] = _val;   
}

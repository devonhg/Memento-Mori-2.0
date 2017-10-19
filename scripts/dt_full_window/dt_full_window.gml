/// @description dt_full_window(Height, Scale, (Width) ); 
/// @function dt_full_window
/// @param Height
/// @param  Scale
/// @param  (Width
/*
    This script sizes the window and view to match the ratio of the computer
    monitor the game is being played on. This is best put in a persistent object
    with a room_start event with this code in it. 

    Height : Set the height for your game, the width is determined automatically 
    based on monitor. 

    Scale : How large you wish to scale the game. Set to 0 for auto scaling 
    to fill monitor. 

    Event : Room Start
    Object Type : Persistent Controllers   
    Scope : Game
*/

//Declare Variables
var __setHeight, __setScale, __ratVal, __H, __W , __dispW, __dispH, __scaleTo, 
    __setWidth=0;

__setHeight = argument[0];
__setScale = argument[1];

if( argument_count > 2 ){
    __setWidth = argument[2]; 
}

//Obtain ratio value of the monitor
    __dispW= display_get_width();
    __dispH= display_get_height();
    __ratVal = __dispW/__dispH;

    __view_set( e__VW.Visible, 0, true );
    view_enabled = true;

//Floor height and width settings to round values
    __H = floor(__setHeight);
    if( __setWidth = 0 ){ __W = floor(__setHeight*__ratVal); }
    else{ __W = floor(__setWidth); }
    
    __view_set( e__VW.HView, 0, __H );
    __view_set( e__VW.WView, 0, __W );

//Decide how to scale the window and actually scale it, based on the setting.
if __setScale = 0{
        scaleTo = floor(__dispH/__H);
        hPort = (__H*scaleTo);
        wPort = (__W*scaleTo);
        __view_set( e__VW.HPort, 0, hPort );
        __view_set( e__VW.WPort, 0, wPort );
        window_set_size(wPort,hPort); 
        window_set_position((__dispW-wPort)/2,(__dispH-hPort)/2);                    
}else{
        hPort = (__H*__setScale);
        wPort = (__W*__setScale);   
        __view_set( e__VW.HPort, 0, __dispW );
        __view_set( e__VW.WPort, 0, __dispH );
        window_set_size(wPort,hPort);
        window_set_position((__dispW-wPort)/2,(__dispH-hPort)/2);               
} 
    
surface_resize(application_surface, wPort,hPort);
  
return __W;

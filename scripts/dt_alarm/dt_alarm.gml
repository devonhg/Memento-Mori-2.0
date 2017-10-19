/// @description dt_alarm( "Seconds" );
/// @function dt_alarm
/// @param  "Seconds" 
/*
    This script returns true the specified number of times per second, if the gamespeed
    allows for it.
    
    Supports decimal values, ex : .5 = every half second.  
    
    Requires the game_current_frame global and master control object. 
    
    Meant to be used in an if statement, example: 
        if( dt_alarm(1) ){
            //Shoot Bullet
        }
        
    A gun fires bullets at 1 per second. 
    
    Event : Any
    Object Type : Any   
    Scope : Object  
*/

//Initiate the timer if we have to. 
    if( !instance_exists( dt_obj_timer ) ){
        globalvar game_current_frame;
        game_current_frame = 0; 
        instance_create( 0,0, dt_obj_timer );
    }

//Process the Timer
    var _val = argument[0],
        _t = game_current_frame mod (_val * room_speed);
    
    return _t == 0;






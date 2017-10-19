/// @description dt_nth_round( value, nth );
/// @function dt_nth_round
/// @param  value
/// @param  nth 
/*

    This script rounds and returns the specified value to the nearest nth. 

    For instance, if you want to round a number to the nearest number divisible by 5,
    you would write the script as such.
    
    dt_nth_round( 31, 5 );
    
    The script would return 30, because it's the value closest to 30, which is the closest
    value divisble by 5. 
    
    Event : Any
    Object Type : Any 
    Scope : Any
    
*/

var _val = argument[0],
    _nth = argument[1];
    
return round( _val/_nth )*_nth;

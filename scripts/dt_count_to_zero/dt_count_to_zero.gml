/// @description dt_count_to_zero( value, increment );
/// @function dt_count_to_zero
/// @param  value
/// @param  increment 
/*
    Using this script you take the value specified in the first argument 
    and "count" it towards zero. It can be consider a deduction in any 
    direction. 
    
    It returns the value incremented towards zero.
*/

var val = argument[0],
    inc = abs(argument[1]); 
    
if( val > 0 ){
    if( val - inc > 0 ){
        val -= inc; 
    }else{
        val = 0; 
    }
}else{
    if( val + inc < 0  ){
        val += inc;
    }else{
        val = 0; 
    }
}

return val; 

/// @description dt_zero( number1, number2, ...)
/// @function dt_zero
/// @param  number1m
/// @param  number2
/// @param  ...
/*
    This script returns the number that is closest to zero, disregarding
    the complications brought on by negative numbers. Very similar to the min/max
    functions. 
    
    Event : Any
    Object Type : Any   
    Scope : Any
*/

var i, smallest, values;

for(i=0;i<argument_count;i++){
    values[i] = argument[i];  
}

smallest = 0;
for (i = 0; i < (array_length_1d( values )) ; i += 1){
   if (abs(values[i]) < abs(values[smallest])){
      smallest = i;
   }
}
return values[smallest];


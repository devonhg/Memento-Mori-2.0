///@description Child the calling object to another object so that it follows
///@event Put in the end-step event of the object
///@param Object The object to parent the object to
///@param *X The option x-adjust field, if blank it just locks it on top
///@param *Y The option y-adjust field, if blank it just locks it on top

var par = argument[0];
var x_adj = 0;
var y_adj = 0; 

if( argument_count > 1 ){
	x_adj = argument[1]; 
}if( argument_count > 2 ){
	y_adj = argument[2]; 
}
///@description Child an object to another object, best called in the end-step event
///@param Parent The parent object
///@param *X_Adjust X Adjust
///@param *Y_Adjust Y Adjust

/*
x = argument[2].x + argument[0];
y = argument[2].y + argument[1];
*/

var par = argument[0];
var x_adj = 0;
var y_adj = 0; 

if( argument_count > 1 ){
	x_adj = argument[1]; 
}if( argument_count > 2 ){
	y_adj = argument[2]; 
}

x = par.x + x_adj;
y = par.y + y_adj;
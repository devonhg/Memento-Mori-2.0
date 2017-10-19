/// @description dt_rotate_to(current angle, goal angle, speed);
/// @function dt_rotate_to
/// @param current angle
/// @param  goal angle
/// @param  speed
/*
    This script takes a value and slowly moves rotates it to the desired angle
    at whatever speed is needed. 
    
    Current Angle : The current angle value
    Goal Angle : The goal angle value
    Speed : The speed in which to rotate 
    
    Used like so, for example image_angle.
    image_angle += dt_rotate_to(image_angle, point_direction(x,y, mouse_x,mouse_y), 5);
    
    The above code will make the object look towards the mouse but rotate at a set speed.
    
    Event : Any
    Object Type : Any   
    Scope : Any 
*/

var angle, goal_angle, spd, dif;

angle = argument[0];
goal_angle = argument[1];
spd = argument[2];

dif = angle_difference(goal_angle, angle);

return median(-spd, dif, spd); 


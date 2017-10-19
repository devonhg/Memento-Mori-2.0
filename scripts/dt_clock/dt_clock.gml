/// @description dt_clock(time, measure, clamp)
/// @function dt_clock
/// @param time
/// @param  measure
/// @param  clamp
/*
    This script takes a value and converts it into clock format, returns string. 
    clock(timer variable, gamespeed)
    
    Measure represents the measure of time to go up to.
    0 = Milliseconds
    1 = Seconds
    2 = Minutes
    3 = Hours
    
    Clamp when set to true limits the timer to the specified measure instead of
    allowing it to go for instance from minutes to hours. 
    
    A variable must be set aside in the object for this to work. For instance,
    
    *Time Object
      **Create
            Time = 0; 
      **Draw
        draw_text( view_xview+50, view_yview+50, dt_clock(Time++, 2, false) );
    
    The above code will generate a timer at the top left of the screen. 
        
    Event : Step/Draw
    Object Type : Controller   
    Scope : Any
*/
var tme_mes, clk_tme, tme, me, clmp, proc;

tme = argument0;//time
me = argument1;//measure 
clmp = argument2;//clamp 
proc = false; 

//This calculates the seconds based in the input value and room speed
clk_tme = tme/room_speed;

//This defines each measurement
tme_mes[0] = string_delete(string(clk_tme mod 1) , 1, 2);
tme_mes[1] = string(floor(clk_tme mod 60))+":";
tme_mes[2] = string((clk_tme div 60) mod 60)+":";
tme_mes[3] = string(((clk_tme/60) div 60) mod 99)+":";

for(i = array_length_1d(tme_mes)-1 ; i > 0  ; i--){
    //This adds the "0" to the left when the number is a single digit. 
    if real(tme_mes[i]) < 10 tme_mes[i] = "0"+tme_mes[i]

    if !proc{
        if clmp{
            if i > me tme_mes[i] = ""; 
        }else{
            //This acts as a limiter on what will be displayed
            if (tme_mes[i] != "00:" or i = me) proc = true; 
            else tme_mes[i] = "";   
        }  
    }
}

return tme_mes[3]+tme_mes[2]+tme_mes[1]+tme_mes[0];


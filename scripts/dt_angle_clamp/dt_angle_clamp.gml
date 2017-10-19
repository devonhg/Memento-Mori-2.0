/// @description  dt_angle_clamp( angle, arcangle, arcwidth )
/// @function  dt_angle_clamp
/// @param  angle
/// @param  arcangle
/// @param  arcwidth 
/*
    Script by LSnK : http://lsnk.org/
    More Info : http://gmc.yoyogames.com/index.php?showtopic=515030
    
    Returns angle clamped within given arc.  Snaps to nearest side on the arc if outside.
    
    Devons Notes
    This script is very useful for if you have a turret that can only aim in a specific cone. You can
    specify the cannons direction with angle, specific it's code direction with arcangle, and say how big
    the cone is with arcwidth.
    
    Event : Any
    Object Type : Any   
    Scope : Any    
*/

var a2,ild,ret;
a2  = argument2 / 2;
ild = ((argument0 - argument1 + 180) mod 360) - 180;

if (ild < -180)
then { ild += 360; }

if      (ild < -a2) { return argument1 - a2;  }
else if (ild >  a2) { return argument1 + a2;  }
else                { return argument1 + ild; }


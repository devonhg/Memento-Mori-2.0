/// @description Opening Logic
// You can write your code in this editor

#region//Check if new day, run new day delayed if so. 
	if( global.new_day == true ){
		vw_on_new_day();
		
		var _sec = 3;//Number of seconds to delay the new day delayed script
		alarm[0] = room_speed * _sec; 

	}
#endregion
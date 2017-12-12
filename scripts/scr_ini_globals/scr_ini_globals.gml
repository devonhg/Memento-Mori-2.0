/*
    This script initiations globals for the project.
*/

//deathdate is to be an array containing each date piece of the day of death. 
global.version = "2.2.1";
global.version_rank = "Alpha";
global.menu_open = false; 
global.days_left = scr_calculate_days_left(); 
global.qdb = -1;//Quote Database
global.qod = "";//The quote of the day
//global.pms = "";


//Enqueries
/*
global.update_day = -1;
global.update_month = -1; 
global.update_year = -1; 
global.update_pms = -1;
*/
global.update_dd = -1; 


global.co_light_grey = make_colour_rgb(221, 221, 221);
global.co_black = make_colour_rgb(0, 0, 0);
global.co_dark_grey = make_colour_rgb(51, 51, 51);

//Interface
global.tray_open = false; 

//Colors
/*
global.light_grey

enum color {
	light_grey = make_colour_rgb(221, 221, 221),
	black = make_colour_rgb(0, 0, 0),
	dark_grey = make_colour_rgb(51, 51, 51)
}
*/

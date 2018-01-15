///@description Refresh the apps death day. 

global.deathdate[0] = ini_read_real( "death_date", "year", 2026 );//Year
global.deathdate[1] = ini_read_real( "death_date", "month", 11 );//Month
global.deathdate[2] = ini_read_real("death_date", "day", 9 );//Day
global.days_left = scr_calculate_days_left(); 


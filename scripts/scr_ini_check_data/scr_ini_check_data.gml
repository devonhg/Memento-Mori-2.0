ini_open("save_data.ini");

if( ini_key_exists( "death_date", "year" ) ){
    global.first_run = false; 
}else{
    global.first_run = true; 
    new_death_day = date_inc_year(date_current_datetime(), 10); 
    var _year = date_get_year( new_death_day ),
        _month = date_get_month( new_death_day ),
        _day = date_get_day( new_death_day );
    
    ini_write_real(  "death_date", "year", _year );
    ini_write_real(  "death_date", "month", _month );
    ini_write_real(  "death_date", "day", _day );
    ini_write_string(  "mission", "pms", "Enter your Personal Mission Statement" );
    ini_write_string(  "Quotes", "qod", "" );
}

global.deathdate[0] = ini_read_real( "death_date", "year", 2026 );//Year
global.deathdate[1] = ini_read_real( "death_date", "month", 11 );//Month
global.deathdate[2] = ini_read_real("death_date", "day", 9 );//Day
global.pms = ini_read_string("mission", "pms", "Enter your Personal Mission Statement" );
global.qod = ini_read_string( "Quotes", "qod", "" );

ini_close(); 
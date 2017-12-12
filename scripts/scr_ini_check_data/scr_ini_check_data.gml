ini_open(global.db);

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
    //ini_write_string(  "mission", "pms", "Enter your Personal Mission Statement" );
    //ini_write_string(  "Quotes", "qod", "" );
}

scr_md_refresh_dd(); 
//global.pms = ini_read_string("mission", "pms", "Enter your Personal Mission Statement" );
global.qod = ini_read_string( "Quotes", "qod", "" );

scr_md_set_dd(scr_md_get_dd());

ini_close(); 
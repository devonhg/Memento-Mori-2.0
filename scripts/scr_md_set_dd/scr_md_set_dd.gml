///@description Change the death day
///@param Date(MM/DD/YYYY) Give the date, in the form of a string, for instance "11/9/2026" or November 9th, 2026

var _date = scr_con_explode_string( argument[0], "/" )


if( is_array(_date) ){
	if( array_length_1d(_date) == 3 ){

		ini_open( global.db );

		    ini_write_real(  "death_date", "year", _date[2] );
		    ini_write_real(  "death_date", "month", _date[0] );
		    ini_write_real(  "death_date", "day", _date[1] );
			
			scr_md_refresh_dd();

		ini_close();

	}
}
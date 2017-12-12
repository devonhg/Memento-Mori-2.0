/// @description Draw the timer
if( initiated ){
	op_counter += 2; 
	//var _scale = abs(op_counter) mod room_speed; 
	var _opacity = sin(degtorad(op_counter))/2//(_scale / room_speed) / 2;
	if( op_counter > 180 ) op_counter = 0; 
	
	if( play ){
		if( synced ){
			timer--;
			_opacity = 0; 
		}
	}
	var _timer_output = timer; 
	
	if( timer < 1 ){
		_timer_output = 0;
		if( (abs(timer) mod room_speed) == 0 ){
			audio_play_sound(snd_alarm, 1, false);
		}
	}

	draw_set_font( fnt_main );
	draw_set_halign(fa_center);
	draw_set_valign( fa_middle );
	draw_set_alpha(_opacity);		
		text_at_fraction( x_at_fraction(6), y_at_fraction(6), dt_clock(_timer_output, 2, false), height_at_fraction(2), width_at_fraction(6), global.co_dark_grey );
		if( play && !synced){ text_at_fraction( x_at_fraction(6), y_at_fraction(7.5), "syncing...", height_at_fraction(.8), width_at_fraction(6), global.co_dark_grey ); }
		draw_box_scaled(  x_at_fraction(6), y_at_fraction(6), width_at_fraction(8), height_at_fraction(2), global.co_light_grey, global.co_light_grey, 0 );
	draw_set_alpha(1)
	draw_set_halign(fa_left);
	draw_set_valign( fa_bottom );
	draw_set_font( fnt_debug_font );
}
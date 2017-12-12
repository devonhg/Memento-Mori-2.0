/// @description Insert description here
// You can write your code in this editor



draw_box_scaled( x, y, width_at_fraction(13), height_at_fraction(12), global.co_dark_grey, global.co_light_grey, 4 ); 

draw_set_font( fnt_main );
	draw_set_halign( fa_center );
	draw_set_valign( fa_middle );
		if( bottom_drawer ){
			text_at_fraction( x, y-350, name, height_at_fraction(1), width_at_fraction( 10 ), global.co_light_grey );
			text_at_fraction( x, y-250, description, height_at_fraction(.5), width_at_fraction( 10 ), global.co_light_grey );
		}else{
			text_at_fraction( x, y-250, name, height_at_fraction(1), width_at_fraction( 10 ), global.co_light_grey );
			text_at_fraction( x, y-150, description, height_at_fraction(.5), width_at_fraction( 10 ), global.co_light_grey );			
		}
	draw_set_halign( -1 );
	draw_set_valign( -1 );
draw_set_font( -1 );

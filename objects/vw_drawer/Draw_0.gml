/// @description Insert description here
// You can write your code in this editor


var _co_prim = global.co_prim;
var _co_sec = global.co_sec;
draw_box_scaled( x, y, width_at_fraction(13), height_at_fraction(12), _co_sec, _co_prim, 8 ); 

draw_set_font( global.font );
	draw_set_halign( fa_center );
	draw_set_valign( fa_middle );
		if( bottom_drawer ){
			text_at_fraction( x, y-350, name, height_at_fraction(1), width_at_fraction( 10 ), _co_prim );
			text_at_fraction( x, y-250, description, height_at_fraction(.5), width_at_fraction( 10 ), _co_prim );
		}else{
			text_at_fraction( x, y-250, name, height_at_fraction(1), width_at_fraction( 10 ), _co_prim );
			text_at_fraction( x, y-150, description, height_at_fraction(.5), width_at_fraction( 10 ), _co_prim );			
		}
	draw_set_halign( -1 );
	draw_set_valign( -1 );
draw_set_font( -1 );

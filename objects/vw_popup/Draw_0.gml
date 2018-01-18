/// @description Draw The Box

var _cam = view_camera[0];
var _x = camera_get_view_x( _cam ) + width_at_fraction(.5) ;
var _y = camera_get_view_y( _cam ) + height_at_fraction(.5);
var _w = width_at_fraction( 11 );
var _h = height_at_fraction( 11 );

//Draw main box
var col_prim = global.co_prim;
var col_sec = global.co_sec;
draw_rectangle_color( _x - 4, _y - 4, _x + _w + 4, _y + _h + 4, col_prim,col_prim,col_prim,col_prim, false );
draw_rectangle_color( _x, _y, _x + _w, _y + _h, col_sec,col_sec,col_sec,col_sec, false );


draw_set_font( global.font );
	draw_set_halign( fa_center );
	draw_set_valign( fa_middle );
		//text_at_fraction( _x + x_at_fraction( 5.5 ), _y + y_at_fraction(2), title_text, height_at_fraction(1), width_at_fraction( 10 ), global.co_dark_grey );
		//text_at_fraction( _x + x_at_fraction( 5.5 ), _y + y_at_fraction(2.5), sub_title_text, height_at_fraction(.5), width_at_fraction( 10 ), global.co_dark_grey );
		text_at_fraction( _x + width_at_fraction( 5.5 ), _y + height_at_fraction(1), title_text, height_at_fraction(.8), width_at_fraction( 10 ), col_prim );
		
		if( is_string(content) ){
			text_at_fraction( _x + width_at_fraction( 5.5 ), _y + height_at_fraction(5.5), content, height_at_fraction(.5), width_at_fraction( 10 ), col_prim );
		}else{
			draw_sprite_scaled();//Finish this later
		}
		
		draw_set_valign( fa_top );
		text_at_fraction( _x + width_at_fraction( 5.5 ), _y + height_at_fraction(1.5), sub_title_text, height_at_fraction(.5), width_at_fraction( 10 ), col_prim );
	draw_set_halign( -1 );
	draw_set_valign( -1 );
draw_set_font( -1 );

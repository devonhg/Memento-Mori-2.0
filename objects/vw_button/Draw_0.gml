/// @description Draw the box for the button

if( sprite == -1 ){
	draw_box_scaled( x, y, WW, HH, col_in, col_out, line_width );

	draw_set_halign( fa_center );
	draw_set_valign( fa_middle );
	draw_set_font( fnt_main );
		text_at_fraction( x, y + text_adj, text, HH - height_at_fraction(.2), WW, col_text); 
	draw_set_font( fnt_main_font ); 
	draw_set_halign( fa_left );
	draw_set_valign( fa_top ); 
}else{
	sprite_index = sprite; 
	
	draw_self(); 
}


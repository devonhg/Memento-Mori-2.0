/// @description Draw the box for the button

if( sprite == -1 ){
	draw_box_scaled( XX, YY, WW, HH, col_in, col_out, line_width );

	draw_set_halign( fa_center );
	draw_set_valign( fa_middle );
	draw_set_font( fnt_main );
		text_at_fraction( XX, YY + text_adj, text, HH - .2, WW, col_text); 
	draw_set_font( fnt_main_font ); 
	draw_set_halign( fa_left );
	draw_set_valign( fa_top ); 
}else{
	sprite_index = sprite; 
	
	draw_self(); 
}


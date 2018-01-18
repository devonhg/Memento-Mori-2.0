/// @description Close popups or drawers
// You can write your code in this editor
if( !scr_is_popup_open() ){
	scr_close_all_drawers( -1 );
}else{
	scr_close_popup(); 	
}
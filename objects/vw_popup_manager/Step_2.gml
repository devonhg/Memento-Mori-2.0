/// @description Process the popup queue
// You can write your code in this editor
if( !instance_exists( vw_popup ) ){
	for( i = 0; i < 100; i++ ){
		if( popup_queue[i, 0] != "" && popup_queue[i, 0] != "processed" ){
			scr_debug_msg("POPUP", "Creating Next Popup, argument is " + string(popup_queue[i, 6]));
			var _pop = scr_create_popup(  
				popup_queue[i, 0],
				popup_queue[i, 1],
				popup_queue[i, 2],
				popup_queue[i, 3],
				popup_queue[i, 4],
				popup_queue[i, 5],
				popup_queue[i, 6]
			);
			
			if( popup_queue[i+1, 0] != "" && popup_queue[i+1, 0] != "processed") _pop.no_text = "Next"; 
			
			popup_queue[i, 0] = "processed";
			
			break; 	
		}
	
		if( i == 99 ){
			instance_destroy();	
		}
	}
}

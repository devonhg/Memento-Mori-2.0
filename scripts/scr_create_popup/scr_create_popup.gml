///@description Create a popup with information on it. 
///@param Title The title text
///@param Sub-Title The sub-title text/message
///@param Content text or sprite, sprite must be square
///@param Layer The layer to put the popup on
///@param *Yes-Text The text for the yes button
///@param *Script The script to run should "yes" be hit.
///@param *Argument1 Argument to pass to the script

#region//Initiate Variables

	var _title = argument[0];
	var _subtitle = argument[1]; 
	var _content = argument[2];
	var _layer = argument[3];
	var _yes_text = -1;
	var _yes_script = -1; 
	var _argument = -1;
	
	
	var _ind = 4;
	if( argument_count > _ind ){ _yes_text = argument[_ind]	}
	_ind++; 
	if( argument_count > _ind ){ _yes_script = argument[_ind]; }	
	_ind++;
	if( argument_count > _ind ){ _argument = argument[_ind] }	
	

	
#endregion


if( !instance_exists( vw_popup ) ){

	var _popup = instance_create_layer( 0,0, _layer, vw_popup );

	#region//Assign values

		_popup.title_text = _title;
		_popup.sub_title_text = _subtitle;
		_popup.content = _content;
		_popup.yes_text = _yes_text;
		_popup.script = _yes_script;
		_popup.arg = _argument; 

	#endregion

	return _popup;
}else{
	vw_popup.no_text = "Next"; 
	if(!instance_exists(vw_popup_manager)) instance_create_depth(0,0,0,vw_popup_manager);
	var i;
	for( i = 0; i < 100; i++ ){
		if( vw_popup_manager.popup_queue[i, 0] == "" ){
			vw_popup_manager.popup_queue[i, 0] = _title;
			vw_popup_manager.popup_queue[i, 1] = _subtitle;
			vw_popup_manager.popup_queue[i, 2] = _content;
			vw_popup_manager.popup_queue[i, 3] = _layer;
			vw_popup_manager.popup_queue[i, 4] = _yes_text;
			vw_popup_manager.popup_queue[i, 5] = _yes_script;
			vw_popup_manager.popup_queue[i, 6] = _argument;
			break; 
		}
	}
	
	
	
}
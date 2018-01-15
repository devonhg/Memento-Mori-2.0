/// @description Process push notifications, create one if one isn't set. 



var _push_notifications = ds_map_create();
var _ntf = push_get_first_local_notification(_push_notifications);

var fireTime = md_create_day(1);
var data = "A New Day";

if( _ntf == -1 ){
	push_local_notification(fireTime, "A New Day", "Read todays quote and meditate on your time.", data);
	scr_debug_msg("NTF", "Prepped new notification.");
}else{
	scr_debug_msg("NTF", "Notification already set, ignoring, _ntf is " + string( _ntf ));	
}

ds_map_destroy(_push_notifications); 
#region //Initiate Values

	x_dest = room_width/2;
	y_dest = room_height/2 + 300; 

	state_open = false; 

	bottom_drawer = false; 
	
	name = "null"; 

#endregion

#region //Initiate Children List and close button
/*
	for( i = 100; i >= 0; i-- ){
		attachment_list[i,0] = noone;
		//0 = Integer, attachment type ( 0=Object, 1=Text, 2=Sprite )
		//1 = Object ID/Text/Sprite Index
		//2 = X Positioning
		//3 = Y Positioning
	}
	*/
#endregion

alarm[0] = 1;//Reposition based on drawer type

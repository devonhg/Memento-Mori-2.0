/// @description Object Parenting

if( !destroyed ){

	#region //Object Parenting

		if( parent_object ){
			scr_child_to_parent( XX, YY, parent_object );
		}else{
			x = XX;
			y = YY;
		}

	#endregion

}
///@description Draw a sprite scaled based on pixels. 
///@param Sprite the sprite
///@param SubImage The subimage to use
///@param X The x value of the sprite
///@param Y The y value of the sprite
///@param Scale_Height The height, in pixels, as to how large the sprite should be scaled too


#region//Initiating Variables

	var _sprite = argument[0];
	var _sub_img = argument[1]
	var _x = argument[2];
	var _y = argument[3];
	var _scale = argument[4];
	var _spr_w = sprite_get_width(_sprite);
	var _spr_h = sprite_get_height(_sprite);
	var _ratio = _spr_w/_spr_h; 
	
#endregion


var _yscale = _scale/_spr_h; 
var _xscale = _yscale * _ratio;

draw_sprite_ext(_sprite, 0, _x, _y, _xscale, _yscale, 0, c_white, 1 );

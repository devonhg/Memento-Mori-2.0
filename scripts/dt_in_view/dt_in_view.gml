/// @description dt_in_view( id, ...hborder, ..vborder );
/// @function dt_in_view
/// @param  id
/// @param  ...hborder
/// @param  ..vborder 
/*
    Check if the specified object is within the view
    
    You can specify a "border" if you want and won't return 
    true unless the object is also within that border.
    
    Specifying only one border specifies for both
    Specifying both independently specifies each independently
    Specifying neither it will assume the borders are 0
    
*/

var _id = argument[0],
    _xclear = false, _yclear = false,
    _hbor = 0, _vbor = 0; ;
    
if( argument_count > 1 ){
    _hbor = argument[1]; 
    _vbor = argument[1]; 
}else if( argument_count > 2 ){
    _hbor = argument[1];
    _vbor = argument[2]; 
}
    
if( _id.x > (__view_get( e__VW.XView, 0 ) + _hbor ) and _id.x < ((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - _hbor ) ) _xclear = true; 
if( _id.y > (__view_get( e__VW.YView, 0 ) + _vbor ) and _id.y < ((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) - _vbor ) ) _yclear = true; 
return ( _xclear and _yclear );

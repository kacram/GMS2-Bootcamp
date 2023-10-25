// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function item_create(_spr = spr_debug, _name = "null", _num = 1){
	
	var _item = {
		
		sprite: _spr,
		n: _name,
		num: _num
		
	}
	
	return _item;

}

function item_drop(_x, _y, _item){
	
	var _o = instance_create_layer(_x, _y, layer, obj_item, _item);
	_o.sprite_index = _item.sprite;
	
}

function item_pickup(_object){
	
	var _item = {
		
		sprite: _object.sprite,
		n: _object.n,
		num: _object.num
		
	}
	
	instance_destroy(_object);
	
	return _item;
	
}
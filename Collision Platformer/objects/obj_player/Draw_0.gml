/// @description Insert description here
// You can write your code in this editor

draw_text(15, 15, string(debug_array));

if(keyboard_check_pressed(vk_space)){

	var _o = collision_line(x, y, x + range * image_xscale, y, obj_enemy, false, true);
	var _w = collision_line(x, y, x + range * image_xscale, y, obj_tile , false, true);
	
	if is_array(_w) {
		
		var _min_w = _w[0];
		
		for(var _i = 0; i < array_length(_w); i++){
			
			if(distance_to_object(_w[i]) < distance_to_object(_min_w)){
				
				_min_w = _w[i];
				
			}
			
		}
		
		_w = _min_w;
		
	}
	
	if is_array(_o) {
		
		var _min_o = _o[0];
		
		for(var _i = 0; i < array_length(_o); i++){
			
			if(distance_to_object(_o[i]) < distance_to_object(_min_o)){
				
				_min_o = _o[i];
				
			}
			
		}
		
		_o = _min_o;
		
	}

	if(_o){
	
		if(!collision_line(x,y,_o.x,y,obj_tile,false,true)){
		
			draw_line(x,y,_o.x,y);
			instance_destroy(_o);
	
		}else{
		
			draw_line(x,y,_w.x,y);
		
		}
	
	}else{
		
		if(_w){
			
			draw_line(x,y,_w.x,y);
			
		}else{
			
			draw_line(x,y,x + range * image_xscale,y);
			
		}
		
	}

}


draw_self();



/// @description Insert description here
// You can write your code in this editor


for(var _i = 0; _i < array_length(inv); _i++){
	
	draw_sprite(spr_inv, 0, 15 + (70 * (_i % inv_width)), 15 + (70 * floor(_i / inv_width)));
	
	if(inv[_i] != noone){
	
		draw_sprite(inv[_i].sprite, 0, 15 + (70 * (_i % inv_width)), 15 + (70 * floor(_i / inv_width)));
		draw_text(20 + (70 * (_i % inv_width)), 15 + (70 * floor(_i / inv_width)), string(inv[_i].num));
	
	}
	
}






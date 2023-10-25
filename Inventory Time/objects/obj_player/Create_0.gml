/// @description Insert description here
// You can write your code in this editor
randomize();

hspd = 0;
vspd = 0;


inv_width = 9;
inv = array_create(27,noone);

inv[irandom_range(0,26)] = item_create(spr_potion, "Potion", 10);


/// @description Insert description here
// You can write your code in this editor
down = keyboard_check_pressed(ord("S"));
up = -keyboard_check_pressed(ord("W"));

selection = down + up;
if(parent != noone){
	item_num = parent.parent.items_number;
	if(selection > 0){
		if(item_selected < item_num - 1){
			item_selected += 1;
			texto = "";
		}else{
			item_selected = 0;
			texto = "";
		}
	}
	if(selection < 0){
		if(item_selected >  0){
			item_selected -= 1;
			texto = "";
		}else{
			item_selected = item_num - 1;
			texto = "";
		}
	}
}

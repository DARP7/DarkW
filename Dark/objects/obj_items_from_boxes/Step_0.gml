/// @description Insert description here
// You can write your code in this editor
down = keyboard_check_pressed(ord("S"));
up = -keyboard_check_pressed(ord("W"));
quit = keyboard_check_pressed(ord("Q"));
recoger = keyboard_check_pressed(ord("R"));
todo = keyboard_check_pressed(ord("T"));

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
	if(start_drawing){
		if(quit){
			if(!instance_exists(obj_selected_menu_boxes_commands)){
				instance_create_layer(x + 70, y + 632, "Menus", obj_selected_menu_boxes_commands);
				script_execute(scr_menu_boxes_quit);
			}
		}
		if(recoger){
			if(!instance_exists(obj_selected_menu_boxes_commands)){
				instance_create_layer(x + 166, y + 632, "Menus", obj_selected_menu_boxes_commands);
			}
		}
		if(todo){
			if(!instance_exists(obj_selected_menu_boxes_commands)){
				instance_create_layer(x + 263, y + 632, "Menus", obj_selected_menu_boxes_commands);
			}
		}
	}
	
}

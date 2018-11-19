if(instance_exists(obj_hero)){
	obj_hero.alarm[11] = 1;
}
if(instance_exists(obj_selected_menu_boxes_commands)){
	instance_destroy(obj_selected_menu_boxes_commands);
}
instance_destroy();
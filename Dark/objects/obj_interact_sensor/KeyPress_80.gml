/// @description Insert description here
// You can write your code in this editor
if(can_be_on and !instance_exists(obj_items_from_boxes) and !global.is_paused){
	parent.image_speed = parent.opening_speed;
	script_execute(scr_pause);
	my_menu = instance_create_layer(camera_get_view_x(view_camera[0]) + 62, camera_get_view_y(view_camera[0]) + 84, "Menus", obj_items_from_boxes);
	my_menu.parent = id;
}
/// @description Insert description here
// You can write your code in this editor
if(can_be_on and !instance_exists(obj_items_from_boxes) and !global.is_paused){
	if(!audio_is_playing(snd_opening_chest)){
		audio_play_sound(snd_opening_chest, 5, false);
	}
	parent.image_speed = parent.opening_speed;
	script_execute(scr_pause);
	my_menu = instance_create_layer(camera_get_view_x(view_camera[0]) + 62, camera_get_view_y(view_camera[0]) + 84, "Menus", obj_items_from_boxes);
	my_menu.parent = id;
}

//3317990285 venecia arreola
//voy a recursos humanos
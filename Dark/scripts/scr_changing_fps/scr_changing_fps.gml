if(keyboard_check_pressed(vk_numpad2)){
	if(game_get_speed(gamespeed_fps) == 60){
		game_set_speed(30, gamespeed_fps);
	}else{
		game_set_speed(60, gamespeed_fps);	
	}
}

show_debug_message(string(game_get_speed(gamespeed_fps)));

/*

Really nice explanation. Also if you add a time multiplier to the return you can basically create
slow motion effects, speed up movement  or even stop movement completely,
another benefit is you do not have to use large numbers for movement speed variables..
Ex. (delta_time/1000000) * (timeMultiplier*60) ; where timeMultiplier is 0.5 will give half the movment speed.﻿


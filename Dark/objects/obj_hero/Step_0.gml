/// @description Insert description here
// You can write your code in this editor
depth = - y;
scr_getting_input();
scr_getting_state();
scr_changing_sprite();
var xx_diagonal = hor_movement * (diagonal_movement_speed * scr_get_delta_time());
var yy_diagonal = ver_movement * (diagonal_movement_speed * scr_get_delta_time());

var xx = hor_movement * (movement_speed * scr_get_delta_time());
var yy = ver_movement * (movement_speed * scr_get_delta_time());

if(state == "runing"){
	if(dir == "right" or dir == "left"){
		if(ver_movement == 1 or ver_movement == -1){
			x += xx_diagonal;		
			y += yy_diagonal;
			
			sensor_collision.x += xx_diagonal;
			sensor_collision.y += yy_diagonal;
			
		}else{
			if(!scr_is_wall_ahead_hor(xx)){
				x += xx;
				sensor_collision.x += xx;
			}
		}
	}
	if(dir == "down" or dir == "up"){
		if(hor_movement == 1 or hor_movement == -1){
			if(!scr_is_wall_ahead_hor(xx_diagonal)){
				x += xx_diagonal;
				sensor_collision.x += xx_diagonal;
			}
			if(!scr_is_wall_ahead_ver(yy_diagonal)){
				y += yy_diagonal;
				sensor_collision.y += yy_diagonal;
			}
		}else{
			if(!scr_is_wall_ahead_ver(yy)){
				y += yy;
				sensor_collision.y += yy;
			}
		}
	}
}
//show_debug_message(dir);
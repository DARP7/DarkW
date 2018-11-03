/// @description Insert description here
// You can write your code in this editor

/*if(parent != noone){
	var xx_diagonal = parent.hor_movement * (parent.diagonal_movement_speed * scr_get_delta_time());
	var yy_diagonal = parent.ver_movement * (parent.diagonal_movement_speed * scr_get_delta_time());

	var xx = parent.hor_movement * (parent.movement_speed * scr_get_delta_time());
	var yy = parent.ver_movement * (parent.movement_speed * scr_get_delta_time());
	
	if(xx == 0){
		can_walk = false;
	}
	
	if(!scr_is_wall_ahead(xx)){
		can_walk = true;
	}else{
		can_walk = false;	
	}
	
}
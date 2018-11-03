/// @description parametro la direccion y checa colision


//bbox_left
var xx = argument0;
show_debug_message(xx);
if(xx < 0){
	if(place_meeting(x + xx, y, obj_wall)){
		//show_debug_message("choque izquierda");
		return 1;
	}
}
if(xx > 0){
	if(place_meeting(x + xx, y, obj_wall)){
		//show_debug_message("choque derecha");
		return 1;
	}
}
return 0;


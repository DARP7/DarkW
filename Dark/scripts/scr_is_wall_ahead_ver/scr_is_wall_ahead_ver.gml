/// @description parametro la direccion y checa colision


//bbox_left
var yy = argument0;
//show_debug_message(yy);
if(yy < 0){
	if(place_meeting(x, y + yy, obj_wall)){
		//show_debug_message("choque izquierda");
		return 1;
	}
}
if(yy > 0){
	if(place_meeting(x, y + yy, obj_wall)){
		//show_debug_message("choque derecha");
		return 1;
	}
}
return 0;


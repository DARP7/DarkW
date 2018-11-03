if(hor_movement == 1 or hor_movement == -1 or ver_movement == 1 or ver_movement == -1){
	state = "runing";
	if(hor_movement == 1){
		dir = "right";
	}
	if(hor_movement == -1){
		dir = "left";
	}
	if(ver_movement == 1){
		dir = "down";
	}
	if(ver_movement == -1){
		dir = "up";
	}
}

//Definicion del estado idle ****NO HAY ENTRADAS EN EL INPUT*****
if(hor_movement == 0 and ver_movement == 0){
	state = "idle";
}
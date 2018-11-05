/// @description Insert description here
// You can write your code in this editor
if(!global.is_paused){
	if(can_be_on){
		if(rotation < 360){
			rotation += 1;
		}else{
			rotation = 0;	
		}
		if(!alfa_up){
			alfa -= 0.05;
		}else{
			alfa += 0.05;	
		}
	
		if(alfa <= 0 and !alfa_up){
			alfa_up = true;
		}
		if(alfa >= 1 and alfa_up){
			alfa_up = false;
		}
	}else{
		rotation = 0;
		alfa = 1;
		alfa_up = false;
	}

	if(instance_exists(obj_hero)){
		if(place_meeting(x, y, obj_hero)){
			if(!can_be_on){
				can_be_on = true;
			}
		}else{
			if(can_be_on){
				can_be_on = false;
			}
		}
	}
}
if(dir == "left"){
	image_xscale = -1;
	//sensor_collision.image_xscale = -1;
}else{
	image_xscale = 1;
	//sensor_collision.image_xscale = 1;
}

//***********   CUANDO EL ESTADO ES IDLE  ***********************

if(dir == "right" or dir == "left"){
	if(sprite_index != asset_get_index("spr_hero_"+state+"_side")){
		sprite_index = asset_get_index("spr_hero_"+state+"_side");
	}
}
if(dir == "up"){
	if(sprite_index != asset_get_index("spr_hero_"+state+"_back")){
		sprite_index = asset_get_index("spr_hero_"+state+"_back");
	}
}
if(dir == "down"){
	if(sprite_index != asset_get_index("spr_hero_"+state+"_front")){
		sprite_index = asset_get_index("spr_hero_"+state+"_front");
	}
}


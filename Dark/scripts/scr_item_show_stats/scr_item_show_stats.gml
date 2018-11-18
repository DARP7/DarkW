if(item[item_selected].type == "armor"){
	var atta = 0;
	var def = 0;
	var int = 0;
	var mag = 0;
	draw_text(x + 350, y + 264, "Status:");
	draw_text(x + 350, y + 296, "Attack");
	if(variable_instance_get(obj_hero.id, "armor_"+item[item_selected].armor_body_part) != noone){
		var armor_value = variable_instance_get(obj_hero.id, "armor_"+item[item_selected].armor_body_part);
		atta = obj_hero.attack + armor_value.attack;
		draw_text(x + 456, y + 296, string(obj_hero.attack + armor_value.attack));
	}else{
		draw_text(x + 456, y + 296, string(obj_hero.attack));
		atta = obj_hero.attack
	}
				
	draw_text(x + 350, y + 316, "Defense");
	if(variable_instance_get(obj_hero.id, "armor_"+item[item_selected].armor_body_part) != noone){
		var armor_value = variable_instance_get(obj_hero.id, "armor_"+item[item_selected].armor_body_part);
		def = obj_hero.defense + armor_value.defense;
		draw_text(x + 456, y + 316, string(obj_hero.defense + armor_value.defense));
	}else{
		draw_text(x + 456, y + 316, string(obj_hero.defense));
		def = obj_hero.defense
	}
				
	draw_text(x + 350, y + 336, "Intelligence");
	if(variable_instance_get(obj_hero.id, "armor_"+item[item_selected].armor_body_part) != noone){
		var armor_value = variable_instance_get(obj_hero.id, "armor_"+item[item_selected].armor_body_part);
		int = obj_hero.intelligence + armor_value.intelligence;
		draw_text(x + 456, y + 336, string(obj_hero.intelligence + armor_value.intelligence));
	}else{
		draw_text(x + 456, y + 336, string(obj_hero.intelligence));
		int = obj_hero.intelligence
	}
				
	draw_text(x + 350, y + 356, "Magic");
	if(variable_instance_get(obj_hero.id, "armor_"+item[item_selected].armor_body_part) != noone){
		var armor_value = variable_instance_get(obj_hero.id, "armor_"+item[item_selected].armor_body_part);
		mag = obj_hero.magic + armor_value.magic;
		draw_text(x + 456, y + 356, string(obj_hero.magic + armor_value.magic));
	}else{
		draw_text(x + 456, y + 356, string(obj_hero.magic));
		mag = obj_hero.magic
	}
			
	var comp_atta = 0;
	var comp_def = 0;
	var comp_int = 0;
	var comp_mag = 0;
	draw_text(x + 650, y + 296, "Attack");
	draw_text(x + 756, y + 296, string(obj_hero.attack + item[item_selected].attack));
	comp_atta = obj_hero.attack + item[item_selected].attack;
	if(atta > comp_atta){
		draw_sprite(spr_arrow_down, 0, x + 786, y + 308);
	}
	if(atta < comp_atta){
		draw_sprite(spr_arrow_up, 0, x + 786, y + 308);
	}
	if(atta == comp_atta){
		draw_sprite(spr_arrow_same, 0, x + 786, y + 308);
	}
				
	draw_text(x + 650, y + 316, "Defense");
	draw_text(x + 756, y + 316, string(obj_hero.defense + item[item_selected].defense));
	comp_def = obj_hero.defense + item[item_selected].defense;
	if(def > comp_def){
		draw_sprite(spr_arrow_down, 0, x + 786, y + 328);
	}
	if(def < comp_def){
		draw_sprite(spr_arrow_up, 0, x + 786, y + 328);
	}
	if(def == comp_def){
		draw_sprite(spr_arrow_same, 0, x + 786, y + 328);
	}
	
	draw_text(x + 650, y + 336, "Intelligence");
	draw_text(x + 756, y + 336, string(obj_hero.intelligence + item[item_selected].intelligence));
	comp_int = obj_hero.intelligence + item[item_selected].intelligence;
	if(int > comp_int){
		draw_sprite(spr_arrow_down, 0, x + 786, y + 348);
	}
	if(int < comp_int){
		draw_sprite(spr_arrow_up, 0, x + 786, y + 348);
	}
	if(int == comp_int){
		draw_sprite(spr_arrow_same, 0, x + 786, y + 348);
	}
	
	draw_text(x + 650, y + 356, "Magic");
	draw_text(x + 756, y + 356, string(obj_hero.magic + item[item_selected].magic));
	comp_mag = obj_hero.magic + item[item_selected].magic;
	if(mag > comp_mag){
		draw_sprite(spr_arrow_down, 0, x + 786, y + 368);
	}
	if(mag < comp_mag){
		draw_sprite(spr_arrow_up, 0, x + 786, y + 368);
	}
	if(mag == comp_mag){
		draw_sprite(spr_arrow_same, 0, x + 786, y + 368);
	}
	
}
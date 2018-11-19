/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_menus);
draw_set_color(c_white);
draw_set_halign(fa_left);
if(parent != noone){
	if(instance_exists(parent)){
		draw_sprite(spr_menu_boxes, 0, x, y);
		
		var i = 0;
		for (i = 0; i < item_num; i++){
			if(!objects_created){
				item [i] = instance_create_layer(x, y, "Menus", asset_get_index(parent.parent.items[i]));
			}
			if(item[i].type == "armor"){
				//var item_name_lenght = string_length(item[i].armor_body_part+" "+item[i].my_name_in_game);
				//show_debug_message(item_name_lenght);
				draw_text(x + 52, (y + 32) + (i * 32), item[i].armor_body_part+" "+item[i].my_name_in_game);
				//show_debug_message(item[i].my_name);
				//draw_text((x + 52 +string_width(item[i].armor_body_part+" "+item[i].my_name_in_game)) + (item_name_lenght + (21 - item_name_lenght)), (y + 32) + (i * 32), " X "+string(item[i].cantidad));
				draw_text(x + 260, (y + 32) + (i * 32), " X "+string(item[i].cantidad));
			}
			
		}
		
		//Draw preview image
		if(item[item_selected].sprite != noone){
			var spr = asset_get_index(item[item_selected].sprite);
			if(item[item_selected].armor_body_part != "legs" and item[item_selected].armor_body_part != "boots"){
				draw_sprite_ext(spr, 0, (x + 660) - round((sprite_get_width(spr) / 2)), y + 180, 4, 4, 0, c_white, 1);
			}else{
				draw_sprite_ext(spr, 0, (x + 660) - round((sprite_get_width(spr) / 2)), y + 120, 4, 4, 0, c_white, 1);
			}
		}
		//fin draw preview image
		script_execute(scr_item_show_stats);//if item is armor
		
		draw_text(x + 350, y + 470, "Descripción:");
		var description_lenght = string_width(item[item_selected].description);
		//show_debug_message(description_lenght);
		if(description_lenght > 480){
			
			draw_text_ext(x + 350, y + 502, item[item_selected].description, 22, 450);
		}else{
			draw_text(x + 350, (y + 502), item[item_selected].description);
		}
		objects_created = true;
		draw_sprite(spr_selected_arrow, 0, x + 36, (y + 32 + 10) + (item_selected * 32));
		
		
		//show commands
		
		draw_sprite(spr_menu_boxes_commands, 0, x + 22, y + 624);
		draw_set_halign(fa_center);
		draw_set_font(fnt_menus_commands);
		draw_text(x + 70, y + 624, "Q = Salir");
		draw_text(x + 166, y + 624, "R = Recoger");
		draw_text(x + 263, y + 624, "T = Todo");
		
	}
}
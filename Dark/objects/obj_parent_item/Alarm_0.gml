/// @description Insert description here
// You can write your code in this editor
if(type == "armor"){
	var len = 0;
	var char_counter = 0;
	len = string_length(my_name);
	sprite = "spr_"+string_copy(my_name, 5, len - 4);
	while(string_char_at(my_name,10 + char_counter) != "_"){
		char_counter += 1;
	}
	armor_body_part = string_copy(my_name, 10, char_counter);
	//show_debug_message(sprite);
	//show_debug_message(armor_body_part);
}
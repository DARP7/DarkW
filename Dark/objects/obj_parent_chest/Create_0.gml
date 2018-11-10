/// @description Insert description here
// You can write your code in this editor
opening_speed = image_speed;
image_speed = 0;

opened = false;
items_number = 0;
items[0] = "";
interactive_sensor = instance_create_layer(x, y + 32, "Sensors", obj_interact_sensor);
interactive_sensor.parent = id;

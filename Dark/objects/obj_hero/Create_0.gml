/// @description Creacion de variables y estados
left = 0;
right = 0;
up = 0;
down = 0;
state = "idle";
dir = "down";
armor_chest = "standar";
armor_arms = "standar";
armor_legs = "standar";
armor_boots = "standar";
weapon = noone;
hor_movement = 0;
ver_movement = 0;
movement_speed = 6;
diagonal_movement_speed = 4;
sensor_collision = instance_create_layer(x, y, "Instances", obj_hero_collision);
sensor_collision.parent = id;
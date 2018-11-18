/// @description Creacion de variables y estados
animation_speed = image_speed;
my_initial_depth = depth;
left = 0;
right = 0;
up = 0;
down = 0;
state = "idle";
dir = "down";

armor_chest = noone;
armor_arms = noone;
armor_legs = noone;
armor_boots = noone;
weapon = noone;

hor_movement = 0;
ver_movement = 0;
movement_speed = 6;
diagonal_movement_speed = 4;
sensor_collision = instance_create_layer(x, y, "Instances", obj_hero_collision);
sensor_collision.parent = id;

level = 1;
attack = 1;
defense = 1;
intelligence = 1;
magic = 1;

compound_attack = 0;
compound_defense = 0;
compound_intelligence = 0;
compound_magic = 0;

script_execute(scr_compound_levels);
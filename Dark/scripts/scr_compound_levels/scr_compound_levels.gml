if(instance_exists(obj_hero)){
	obj_hero.compound_attack = 0;
	obj_hero.compound_defense = 0;
	obj_hero.compound_intelligence = 0;
	obj_hero.compound_magic = 0;
	if(obj_hero.armor_chest != noone){
		obj_hero.compound_attack += obj_hero.armor_chest.attack;
		obj_hero.compound_defense += obj_hero.armor_chest.defense;
		obj_hero.compound_intelligence += obj_hero.armor_chest.intelligence;
		obj_hero.compound_magic += obj_hero.armor_chest.magic;
	}
	if(obj_hero.armor_arms != noone){
		obj_hero.compound_attack += obj_hero.armor_arms.attack;
		obj_hero.compound_defense += obj_hero.armor_arms.defense;
		obj_hero.compound_intelligence += obj_hero.armor_arms.intelligence;
		obj_hero.compound_magic += obj_hero.armor_arms.magic;
	}
	if(obj_hero.armor_legs != noone){
		obj_hero.compound_attack += obj_hero.armor_legs.attack;
		obj_hero.compound_defense += obj_hero.armor_legs.defense;
		obj_hero.compound_intelligence += obj_hero.armor_legs.intelligence;
		obj_hero.compound_magic += obj_hero.armor_legs.magic;
	}
	if(obj_hero.armor_boots != noone){
		obj_hero.compound_attack += obj_hero.armor_boots.attack;
		obj_hero.compound_defense += obj_hero.armor_boots.defense;
		obj_hero.compound_intelligence += obj_hero.armor_boots.intelligence;
		obj_hero.compound_magic += obj_hero.armor_boots.magic;
	}
	if(obj_hero.weapon != noone){
		obj_hero.compound_attack += obj_hero.weapon.attack;
		obj_hero.compound_defense += obj_hero.weapon.defense;
		obj_hero.compound_intelligence += obj_hero.weapon.intelligence;
		obj_hero.compound_magic += obj_hero.weapon.magic;
	}
}
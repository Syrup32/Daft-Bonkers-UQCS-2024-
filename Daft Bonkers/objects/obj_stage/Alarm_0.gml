/// @description Insert description here
// You can write your code in this editor
if instance_number(obj_weapons) < 3
{
	var spawn_point_obj = choose(spawn_0, spawn_1, spawn_2, spawn_3, spawn_4, spawn_5)
	var spawn_weapon = choose(obj_P365, obj_baseball_bat, obj_mines, obj_rifle)
	instance_create_layer(spawn_point_obj.x ,spawn_point_obj.y , "Instances", spawn_weapon);
	//alarm[0] = spawn_rate
	
}
alarm[0] = spawn_rate
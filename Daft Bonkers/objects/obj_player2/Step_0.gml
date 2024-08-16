/// @description Insert description here
// You can write your code in this editor
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;

if (place_meeting(x, y+2, obj_stage))
{
	move_y = 0;
	if(!place_meeting(x+move_x, y+2, obj_stage) && place_meeting(x+move_x, y+10, obj_stage))
	{
		move_y = abs(move_x);
		move_x = 0;
	}
	if (keyboard_check_pressed(vk_up)) move_y = -jump_speed;
}
else if (move_y < jump_speed) move_y += 2;

move_and_collide(move_x, move_y, obj_stage,4,0,0,move_speed,-1);

if (move_x != 0) image_xscale = sign(move_x);

if keyboard_check_pressed(191) && global.player2Data.weapon_index == 1
{
	instance_create_layer(x+(50*sign(image_xscale)),y,"Instances", obj_general_projectile,
	{
		hspeed : 10*sign(obj_player2.image_xscale)
		});
	global.player2Data.ammo -= 1
	if global.player2Data.ammo == 0
	{
		sprite_index = Player_2
		global.player2Data.weapon_index = 0
	}
}

if (global.player2Data.current_hp <= 0)
{
	instance_destroy(obj_player2);
	//var spawn_point_no = irandom(5);
	//var spawn_point = $"spawn_${spawn_point_no}";
	//var spawn_point_obj = instance_find(spawn_0, irandom_range(0,instance_number(spawn_0)-1));
	var spawn_point_obj = choose(spawn_0, spawn_1, spawn_2, spawn_3, spawn_4, spawn_5)
	instance_create_layer(spawn_point_obj.x ,spawn_point_obj.y , "Instances", obj_player2);
	sprite_index = Player_2;
	global.player2Data.current_hp = global.player2Data.player_2_max_hp
}
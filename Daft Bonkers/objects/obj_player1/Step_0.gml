/// @description Insert description here
// You can write your code in this editor
move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x *= move_speed;

if (place_meeting(x, y+2, obj_stage))
{
	move_y = 0;
	if(!place_meeting(x+move_x, y+2, obj_stage) && place_meeting(x+move_x, y+10, obj_stage))
	{
		move_y = abs(move_x);
		move_x = 0;
	}
	if (keyboard_check_pressed(ord("W"))) move_y = -jump_speed;
}
else if (move_y < jump_speed) move_y += 2;

move_and_collide(move_x, move_y, obj_stage,4,0,0,move_speed,-1);

if (move_x != 0) image_xscale = sign(move_x);

if keyboard_check_pressed(ord("V")) && global.player1Data.weapon_index == 1
{
	instance_create_layer(x+(50*sign(image_xscale)),y,"Instances", obj_general_projectile,
	{
		hspeed : 10*sign(obj_player1.image_xscale)
		});
	global.player1Data.ammo -= 1
	if global.player1Data.ammo == 0
	{
		sprite_index = Player_1
		global.player1Data.weapon_index = 0
	}
}

if (global.player1Data.current_hp <= 0)
{
	instance_destroy(obj_player1);
	//var spawn_point_no = irandom(5);
	//var spawn_point = $"spawn_${spawn_point_no}";
	//var spawn_point_obj = instance_find(spawn_0, irandom_range(0,instance_number(spawn_0)-1));
	var spawn_point_obj = choose(spawn_0, spawn_1, spawn_2, spawn_3, spawn_4, spawn_5)
	instance_create_layer(spawn_point_obj.x ,spawn_point_obj.y , "Instances", obj_player1);
	sprite_index = Player_1;
	global.player1Data.current_hp = global.player1Data.player_1_max_hp
}
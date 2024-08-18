/// @description Insert description here
// You can write your code in this editor

//movement and collision checks
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;

if (place_meeting(x, y+6, obj_stage))
{
	move_y = 0;
	if(!place_meeting(x+move_x, y+6, obj_stage) && place_meeting(x+move_x, y+10, obj_stage))
	{
		move_y = abs(move_x);
		move_x = 0;
	}
	if (keyboard_check_pressed(vk_up)) move_y = -jump_speed;
}
else if (move_y < jump_speed) move_y += 2;


move_and_collide(move_x , move_y, obj_stage,10,0,0,move_speed,-1);

if (move_x != 0) image_xscale = sign(move_x);

//attacks
//fists
if keyboard_check_pressed(191) && global.player2Data.weapon_index == 0
{
	instance_create_layer(x+(50*sign(image_xscale)),y,"Instances", obj_melee_hitbox);
	sprite_index = Player_2_Punch
	audio_play_sound(punch_noise,1,false);
	alarm[1] = 30
}

//pistol
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

//baseball bat
if keyboard_check_pressed(191) && global.player2Data.weapon_index == 2
{
	instance_create_layer(x+(60*sign(image_xscale)),y,"Instances", obj_bat_hitbox);
	sprite_index = Player_2_swing
	audio_play_sound(sound_menu_switch,1,false);
	alarm[2] = 30
}

//rifle
if keyboard_check_pressed(191) && global.player2Data.weapon_index == 4
{
	instance_create_layer(x+(50*sign(image_xscale)),y,"Instances", obj_general_projectile,
	{
		hspeed : 10*sign(obj_player1.image_xscale)
		});
	instance_create_layer(x+(50*sign(image_xscale)),y,"Instances", obj_general_projectile,
	{
		hspeed : 10*sign(obj_player1.image_xscale)
		});
	instance_create_layer(x+(50*sign(image_xscale)),y,"Instances", obj_general_projectile,
	{
		hspeed : 10*sign(obj_player1.image_xscale)
		});
	global.player2Data.ammo -= 3
	if global.player2Data.ammo == 0
	{
		sprite_index = Player_2
		global.player2Data.weapon_index = 0
	}
}

//mine
if keyboard_check_pressed(191) && global.player2Data.weapon_index == 3
{
	instance_create_layer(x-(50*sign(image_xscale)),y + 40,"Instances", obj_mine_on_ground);
	audio_play_sound(mine_set_noise,1,false);
	global.player2Data.ammo -= 1
	if global.player2Data.ammo == 0
	{
		sprite_index = Player_2
		global.player2Data.weapon_index = 0
	}
}

if (global.player2Data.current_hp <= 0)
{
	death_check_player2()
	instance_destroy(obj_player2);
	audio_play_sound(death_noise,1,false);
	var spawn_point_obj = choose(spawn_0, spawn_1, spawn_2, spawn_3, spawn_4, spawn_5)
	instance_create_layer(spawn_point_obj.x ,spawn_point_obj.y , "Instances", obj_player2);
	sprite_index = Player_2;
	global.player2Data.current_hp = global.player2Data.player_2_max_hp
}

//unstuck button
if (keyboard_check_pressed(ord(0)))
{
	var spawn_point_obj = choose(spawn_0, spawn_1, spawn_2, spawn_3, spawn_4, spawn_5)
	x = spawn_point_obj.x
	y = spawn_point_obj.y
}

//invincibility frames
if (invincibility)
{
	if (fadeIn)
	{
		if (image_alpha < 1)
		{
			image_alpha += 0.1;
		}
		else
		{
			fadeIn = !fadeIn;
		}
	}
	else
	{
		if(image_alpha > 0)
		{
			image_alpha -= 0.1;
		}
		else
		{
			fadeIn = !fadeIn;
		}
	}
}
else
{
	image_alpha = 1;
}

if global.player2Data.activate_invincibility == true
{
	 global.player2Data.activate_invincibility = false
	invincibility = true
	alarm[0] = invincibility_frames
	show_debug_message("reset")
}

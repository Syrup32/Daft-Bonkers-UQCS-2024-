/// @description Insert description here
// You can write your code in this editor
with obj_player1
{
	sprite_index = Player_1_G36
	global.player1Data.weapon_index = 4
	global.player1Data.ammo = 27
}
audio_play_sound(collect_noise,1,false);	
instance_destroy()
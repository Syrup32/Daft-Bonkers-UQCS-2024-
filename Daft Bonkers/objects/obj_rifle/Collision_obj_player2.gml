/// @description Insert description here
// You can write your code in this editor
with obj_player2
{
	sprite_index = Player_2_G36
	global.player2Data.weapon_index = 4
	global.player2Data.ammo = 27
}
audio_play_sound(collect_noise,1,false);
instance_destroy()
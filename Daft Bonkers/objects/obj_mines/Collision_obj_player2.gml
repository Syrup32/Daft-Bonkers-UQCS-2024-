/// @description Insert description here
// You can write your code in this editor
with obj_player2
{
	sprite_index = Player_2_mine
	global.player2Data.weapon_index = 3
	global.player2Data.ammo = 2
}
audio_play_sound(collect_noise,1,false);
instance_destroy()
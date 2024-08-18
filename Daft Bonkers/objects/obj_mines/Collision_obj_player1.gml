/// @description Insert description here
// You can write your code in this editor
with obj_player1
{
	sprite_index = Player_1_mine
	global.player1Data.weapon_index = 3
	global.player1Data.ammo = 2
}
audio_play_sound(collect_noise,1,false);
instance_destroy()
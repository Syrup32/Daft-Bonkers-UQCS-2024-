/// @description Insert description here
// You can write your code in this editor


round_timer = game_get_speed(gamespeed_fps) * 20;
round_end = game_get_speed(gamespeed_fps) * 4;

global.death_match = {
	player1_death : 0,
	player2_death : 0
}
	
updating_score = true

alarm[0] = round_timer;
 player1_win = false;
 player2_win = false;
 tie = false;
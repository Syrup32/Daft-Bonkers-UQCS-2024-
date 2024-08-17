/// @description Insert description here
// You can write your code in this editor
	//do stuff
instance_deactivate_all(true);

if global.death_match.player1_death < global.death_match.player2_death
{
	player1_round_win();
	player1_win = true;
}
if global.death_match.player1_death > global.death_match.player2_death
{
	player2_round_win();
	player2_win = true;
}
if global.death_match.player1_death == global.death_match.player2_death
{
	tie_round();
	tie = true;
}

alarm[1] = round_end;

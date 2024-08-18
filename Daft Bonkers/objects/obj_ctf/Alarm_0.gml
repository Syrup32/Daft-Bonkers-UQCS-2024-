/// @description Insert description here
// You can write your code in this editor
instance_deactivate_all(true);

if global.ctf.player1_badge > global.ctf.player2_badge
{
	player1_round_win();
	player1_win = true;
}
if global.ctf.player1_badge < global.ctf.player2_badge
{
	player2_round_win();
	player2_win = true;
}
if global.ctf.player1_badge == global.ctf.player2_badge
{
	tie_round();
	tie = true;
}

alarm[1] = round_end;


/// @description Insert description here
// You can write your code in this editor
alarm[0] = round_timer
if round_timer <= 0
{
	//do stuff
	instance_deactivate_all(true);
	round_timer = -1
	if global.player1Data.deaths < global.player2Data.deaths
	{
		global.player1Data.round_points += 1;
	}
	if global.player1Data.deaths > global.player2Data.deaths
	{
		global.player2Data.round_points += 1;
	}
	else
	{
		global.player1Data.round_points += 1;
		global.player2Data.round_points += 1;
	}
	var mode = choose(DM1,DM2)
	room_goto(mode);
}
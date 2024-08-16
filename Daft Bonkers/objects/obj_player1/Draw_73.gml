/// @description Insert description here
// You can write your code in this editor
//draw_text(x - 500,y + 80 , "Player 1 Health: " + string(player_hitpoint));
draw_self();

draw_healthbar(
	x -50,
	y - 65,
	x + 50,
	y - 50,
	100 * (global.player1Data.current_hp / global.player1Data.player_1_max_hp),
	c_black,
	c_red,
	c_green,
	0,
	true,
	true
)
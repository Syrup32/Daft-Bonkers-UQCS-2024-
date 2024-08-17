/// @description health bar
// You can write your code in this editor
draw_self();

draw_healthbar(
	x -50,
	y - 65,
	x + 50,
	y - 50,
	100 * (global.player2Data.current_hp / global.player2Data.player_2_max_hp),
	c_black,
	c_red,
	c_green,
	0,
	true,
	true
)
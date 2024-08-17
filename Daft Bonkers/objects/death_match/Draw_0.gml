/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_text(50, 50, game_get_speed(gamespeed_fps));
draw_text(50,100,alarm[0])
draw_set_color(c_red);
draw_text(room_width * 0.25,room_height*0.9, global.death_match.player2_death);
draw_text(room_width * 0.25,room_height*0.85, "Player 1 Kills:");
draw_text(room_width * 0.75,room_height*0.9, global.death_match.player1_death);
draw_text(room_width * 0.75, room_height * 0.85, "Player 2 Kills:");

if player1_win == true
{
	draw_set_color(c_blue);
	draw_text(room_width/2,room_height/2,"Player 1 wins the round");
}
if player2_win == true
{
	draw_set_color(c_red);
	draw_text(room_width/2,room_height/2,"Player 2 wins the round");
}
if tie == true
{
	draw_set_color(c_yellow);
	draw_text(room_width/2,room_height/2,"Its a Tie, both gets a point");
}
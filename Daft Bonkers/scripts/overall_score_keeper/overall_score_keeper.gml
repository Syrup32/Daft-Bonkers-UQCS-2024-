// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
player1_victories = 0
player2_victories = 0

function player1_round_win(){
	//global.score_keeper.player1_rounds += 1;
	global.player1_victories += 1;
	//show_debug_message("glory to blu");
}
function player2_round_win(){
	//global.score_keeper.player2_rounds += 1;
	global.player2_victories += 1;
	//show_debug_message("glory to red");
	//show_debug_message(global.player2_victories);
}
function tie_round(){
	//global.score_keeper.player1_rounds += 1;
	//global.score_keeper.player2_rounds += 1;
	global.player1_victories += 1;
	global.player2_victories += 1;
	//show_debug_message(global.score_keeper.player2_rounds)
}
function reset_game(){
	global.player2_victories = 0;
	global.player1_victories = 0;
	//show_debug_message(global.player2_victories)
}
function back_to_main(){
	room_goto(main_menu);
}
function victory_check(){
	if global.player1_victories = 2 && global.player2_victories = 2
	{
		instance_create_layer(room_width/2,room_height/4,"Instances",obj_tie_game);
		call_later(4, time_source_units_seconds, back_to_main);
	}
	else if global.player2_victories = 2
	{
		instance_create_layer(room_width/2,room_height/4,"Instances",obj_red_win);
		call_later(4, time_source_units_seconds, back_to_main);
	}
	else if global.player1_victories = 2
	{
		instance_create_layer(room_width/2,room_height/4,"Instances",obj_blue_win);
		call_later(4, time_source_units_seconds, back_to_main);
	}
	else
	{
		var mode = choose(DM1,DM2,CTF1,CTF2);
		room_goto(mode);
	}
}
	
function death_check_player1(){
	if instance_exists(obj_death_match){
		player1death()
	}
	if instance_exists(obj_ctf){
		player1drop()
	}
}

function death_check_player2(){
	if instance_exists(obj_death_match){
		player2death()
	}
	if instance_exists(obj_ctf){
		player2drop()
	}
}
	
	

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//player1_deaths = 0;
//player2_deaths = 0;

function player2death(){
	with(death_match){
		global.death_match.player2_death += 1;
		show_debug_message(global.death_match.player2_death)
	}
}
function player1death(){
	with(death_match){
		global.death_match.player1_death += 1;
	}
}
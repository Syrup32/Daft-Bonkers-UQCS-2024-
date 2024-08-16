// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player1GetDamage(value){
	with(obj_player1){
		global.player1Data.current_hp -= value;
	}
}
function player2GetDamage(value){
	with(obj_player2){
		global.player2Data.current_hp -= value;
	}
}
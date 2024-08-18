// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player1_capture(){
	with(obj_ctf){
		audio_play_sound(collect_noise,1,false)
		global.ctf.player1_badge += 1;
	}
}
function player2_capture(){
	with(obj_ctf){
		audio_play_sound(collect_noise,1,false)
		global.ctf.player2_badge += 1;
	}
}
function player1drop(){
	with(obj_ctf){
		global.ctf.player1_badge -= 3;
		if global.ctf.player1_badge <0
		{
			global.ctf.player1_badge = 0;
		}
	}
}
function player2drop(){
	with(obj_ctf){
		global.ctf.player2_badge -= 3;
		if global.ctf.player2_badge < 0
		{
			global.ctf.player2_badge = 0;
		}
	}
}
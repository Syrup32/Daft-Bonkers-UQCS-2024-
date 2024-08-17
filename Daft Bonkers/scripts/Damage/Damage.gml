// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player1GetDamage(value){
	with(obj_player1){
		if (!invincibility)
		{
			global.player1Data.current_hp -= value;
			global.player1Data.activate_invincibility = true
			move_and_collide(-20* value * sign(obj_player1.image_xscale),-20 * value,obj_stage,10)
		}
	}
}
function player2GetDamage(value){
	with(obj_player2){
		if (!invincibility)
		{
			global.player2Data.current_hp -= value;
			global.player2Data.activate_invincibility = true
			move_and_collide(-20 * sign(obj_player2.image_xscale),-20,obj_stage,10)
		}
	}
}
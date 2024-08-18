/// @description Insert description here
// You can write your code in this editor
switch(menu_index) {
	case 0:
		var mode = choose(DM1,DM2,CTF1,CTF2)
		room_goto(mode);
		break;
	case 1:
		room_goto(nah);
		break;
	case 2:
		room_goto(nah);
		break;
	case 3:
		room_goto(nah);
		break;
	case 4:
		room_goto(credits);
		break;
	case 5:
		game_end();
		break;
	case 6:
		if audio_is_playing(BGM)
		{		
			audio_stop_sound(BGM);
		}
		else
		{
			audio_play_sound(BGM,1,true);
		}
		break;
}
/// @description Insert description here
// You can write your code in this editor
switch(menu_index) {
	case 0:
		var mode = choose(DM1,DM2)
		room_goto(mode);
		break;
	case 5:
		game_end();
		break;
}
/// @description Insert description here
// You can write your code in this editor
menu_x = x;
menu_y = y;
button_h = 32;

//buttons
button[0] = "Fight";
button[1] = "Game Select";
button[2] = "Weapons Gallery"
button[3] = "Setting";
button[4] = "Credits";
button[5] = "Exit";
button[6] = "Toggle BGM";
buttons = array_length(button);

menu_index = 0;
last_selected = 0;

randomize()
reset_game()
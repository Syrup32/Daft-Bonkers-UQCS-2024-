/// @description Insert description here
// You can write your code in this editor
var i = 0;
repeat(buttons) {
	draw_set_font(font_main_menu);
	draw_set_halign(fa_center);
	draw_set_color(c_dkgray);
	
	if(menu_index == i) draw_set_colour(c_red);
	
	draw_text(menu_x,menu_y + button_h * i,button[i]);
	i++;
}
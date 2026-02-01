//drawing options

if (global.pause == true and global.esc_menu_open == true) {

draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(0, 0, room_width, room_height, false);

draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for(var i = 0; op_length > i; i++) {
	var _c = c_white;
	if (pos == i) _c = c_yellow;
	draw_text_color(x,y+i*30,option[i],_c,_c,_c,_c,1);
}

}

draw_set_color(c_white);
draw_set_alpha(1);







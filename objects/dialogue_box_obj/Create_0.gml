depth = -9999

//Textbox parameters
textbox_width = 175;
textbox_height = 60; 
border = 8;
line_sep = 12; 
line_width = textbox_width - border*2

txtb_spr = eper;
txtb_img = 0;
txtb_img_spd = 0;

//Text itself:3
page = 0;
page_num = 0;
text[0] = "";
text_length[0] = string_length(text[0])
draw_char = 0; //draw nothing initially
text_spd = 1; //draw 1 by 1

//Options
option[0] = ""; //textual option
option_link_id[0] = -1; //reference id
option_pos = 0;
option_num = 0;

setup = false; //is it setup before running drawing

//effects / pictures
scr_set_defaults_for_text();
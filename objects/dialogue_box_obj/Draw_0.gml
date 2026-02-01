//Store a button
accept_key = keyboard_check_pressed(vk_space);


//Position of the camera and text box
textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 144;

//Setup variable:3
if setup == false {
	setup = true;
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);//top left allignment
	
	//loop through pages
	for(var p = 0; p < page_num; p++){ 
		
		//find how many characters are on each page
		text_length[p] = string_length(text[p]);
		
		//get x position for the box
		
			//with character on the left
			text_x_offset[p] = 80;
			portrait_x_offset[p] = 8;
			
			//with character on the right
			if speaker_side[p] == -1{
				text_x_offset[p] = 8;
				portrait_x_offset[p] = 216;
			}
			
			//no character (centering the box)
			if speaker_sprite[p] == noone {
				text_x_offset[p] = 52;
			}
	}
	
}

//Typing the text
if draw_char < text_length[page]{
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

//Flip through pages
if accept_key{
	//if typing is done then next page
	if draw_char == text_length[page]{
		if page < page_num-1{
			page++;
			draw_char = 0;
		} else {
			//destroy itself OR open next scene
			if option_num > 0{
				create_textbox(option_link_id[option_pos]);
			} else{
				global.pause = false;
			}
			instance_destroy();
		}
	}	
	//if not done typing
	else{
		draw_char = text_length[page]
	}
}

//Draw the textbox
var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y = textbox_y;
txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);

//Draw the portraits 
if speaker_sprite[page] != noone {
	sprite_index = speaker_sprite[page];
	var _speaker_x = textbox_x + portrait_x_offset[page]
	if speaker_side[page] == -1 {
		_speaker_x += sprite_width;
	}
	
	draw_sprite_ext(txtb_spr, txtb_img, textbox_x + portrait_x_offset[page], textbox_y, sprite_width/txtb_spr_w, sprite_height/txtb_spr_h, 0, c_white, 1);
	draw_sprite_ext(sprite_index, image_index, _speaker_x, textbox_y, speaker_side[page], 1, 0, c_white, 1);
	
}

//Draw the back of the textbox
draw_sprite_ext(txtb_spr, txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1);

//Options
if draw_char == text_length[page] && page == page_num - 1{
	
	//Option selection
	option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	option_pos = clamp(option_pos, 0, option_num - 1);
	
	//Draw the options 
	var _op_space = 15;
	var _op_bord = 4;
	for (var op = 0; op < option_num; op++){
		//option box
		var _o_w = string_width(option[op]) + _op_bord*2
		draw_sprite_ext(txtb_spr, txtb_img, _txtb_x + 16, _txtb_y - _op_space * option_num +_op_space*op, _o_w/txtb_spr_w, (_op_space-1)/txtb_spr_h, 0, c_white, 1);
	
		//arrow
		if option_pos == op{
			draw_sprite(spr_textbox_arrow2, 0, _txtb_x, _txtb_y - _op_space*option_num + _op_space*op)
		}
		
	//Option text
	draw_text(_txtb_x + 16 + _op_bord, _txtb_y - _op_space*option_num + _op_space*op + 2, option[op]);
	}
}


//Draw the text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(_txtb_x + border, _txtb_y + border, _drawtext, line_sep, line_width);


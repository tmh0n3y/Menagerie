if (mouse_check_button_released(mb_left)) {
	if (!global.pause) {
		if (position_meeting(mouse_x, mouse_y, id)) {
			create_textbox(text_id);
		}
	} 
}
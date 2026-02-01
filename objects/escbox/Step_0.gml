if (keyboard_check_pressed(vk_escape)) {
    
	//if esc menu is not yet visible
	if (global.esc_menu_open == false and global.pause == false) {
	
		//making esc menu stuff visible
		escbox.image_alpha = 1;
	
		//pausing game
		global.pause = true;
	
		//esc menu global variable true
		global.esc_menu_open = true;
	
	}
	
	//when pressing esc again when the menu is alr open
	else if (global.esc_menu_open == true and global.pause == true) {
	
	
	//resume game
	global.pause = false;
	
	//esc menu global variable true
	global.esc_menu_open = false;
	
	}

}

up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

pos += down_key - up_key;
if (pos >= op_length) pos = 0;
if (0 > pos) pos = op_length-1;


if (accept_key) && global.esc_menu_open{
switch(pos){

//back to game: closing es, resuming game
case 0:
	
	//resume game
	global.pause = false;
	
	//esc menu global variable true
	global.esc_menu_open = false;
break;


//quit to title
case 1:
game_restart()
break;


}
}
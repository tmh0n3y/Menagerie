
//Set pictures ithink
function scr_set_defaults_for_text(){
	speaker_sprite[page_num] = noone;
	speaker_side[page_num] = 1;
}



//Adding in pages of text
/// @param text
/// @param [portrait]
function scr_text(_text){
	scr_set_defaults_for_text();
	text[page_num] = _text;
	
	//Get character info
	if argument_count > 1{
		switch(argument[1]){
		
		case "deer":
			speaker_sprite[page_num] = deer_portrait_spr;
			break;
		
		case "crow":
			speaker_sprite[page_num] = crow_portrait_spr;
			break;
			
		case "bunny":
			speaker_sprite[page_num] = bunny_portrait_spr;
			break;
			
		case "fox":
			speaker_sprite[page_num] = fox_portrait_spr;
			break;
			
		case "horse":
			speaker_sprite[page_num] = horse_portrait_spr;
			break;
			
		case "ram":
			speaker_sprite[page_num] = ram_portrait_spr;
			break;
		
		case "lion":
			speaker_sprite[page_num] = lion_portrait_spr;
			break;
			
		}
	}
	
	page_num++;
}

/// @param option
/// @param link:id
function scr_option(_option, _link_id){
	option[option_num] = _option;
	option_link_id[option_num] = _link_id;
	option_num++;
}

/// @param text_id
function create_textbox(_text_id){
	global.pause = true;
	with (instance_create_depth(0, 0, -9999, dialogue_box_obj)){
		scr_game_text(_text_id);
	}
}

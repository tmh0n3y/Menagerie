if (position_meeting(mouse_x, mouse_y, id) && global.pause == false) {
    image_alpha = 0.8;
    
    //outline
    var _t = 1; // thickness
    var _c = c_white;
	gpu_set_fog(true, _c, 0, 0);
    draw_sprite_ext(sprite_index, image_index, x - _t, y, image_xscale, image_yscale, image_angle, _c, 1);
    draw_sprite_ext(sprite_index, image_index, x + _t, y, image_xscale, image_yscale, image_angle, _c, 1);
    draw_sprite_ext(sprite_index, image_index, x, y - _t, image_xscale, image_yscale, image_angle, _c, 1);
    draw_sprite_ext(sprite_index, image_index, x, y + _t, image_xscale, image_yscale, image_angle, _c, 1);
	gpu_set_fog(false, _c, 0, 0);
	
} else {
    image_alpha = 1;
}

if (mouse_check_button(mb_left) && position_meeting(mouse_x, mouse_y, id) && global.pause == false) {
    image_xscale = 0.95;
    image_yscale = 0.95;
} else {
    image_xscale = 1;
    image_yscale = 1;
}

draw_self();

base_scale = 0.7;
hold_scale = 0.65;

if position_meeting(mouse_x,mouse_y,id)
{
//hovering on it
image_xscale = base_scale;
image_yscale = base_scale;
image_alpha = 0.8;
}

if not position_meeting(mouse_x,mouse_y,id)
{
//no longer hovering
image_xscale = base_scale;
image_yscale = base_scale;
image_alpha = 1;
}


if mouse_check_button(mb_left)
{

if position_meeting(mouse_x,mouse_y,id)
{
//holding it
image_xscale = hold_scale;
image_yscale = hold_scale;
}

}



if mouse_check_button_released(mb_left)
{
if position_meeting(mouse_x,mouse_y,id)
{
image_xscale = base_scale;
image_yscale = base_scale;

//fade start:
if (!instance_exists(fade)){
	var _targetroom = welcomeroom;
	fadescript(_targetroom,60,c_black);

}


}

if not position_meeting(mouse_x,mouse_y,id)
{
//released NOT on the button (no longer holding)
image_xscale = base_scale;
image_yscale = base_scale;
}

}

//gomb opacity 0
image_alpha = 0;


if (global.pause == false){

//ha vege a gamenek, el lehet hagyni a gameroomot
if (global.stairs_clickable == true) {


if position_meeting(mouse_x,mouse_y,id)
{
//ha esetleg szeretnenk cursor changet
}

if not position_meeting(mouse_x,mouse_y,id)
{
//ha esetleg szeretnenk cursor changet (no longer hovering)
}



if mouse_check_button_released(mb_left)
{
if position_meeting(mouse_x,mouse_y,id)
{

//pressed action (released ON the button): fade to hospital room
if (!instance_exists(fade)) {

var _targetroom = hospitalroom;
fadescript(_targetroom,60,c_black);

}

}

if not position_meeting(mouse_x,mouse_y,id)
{
//released NOT on the button (no longer holding)
}
}
}
}
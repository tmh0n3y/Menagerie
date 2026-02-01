if (keyboard_check_pressed(vk_space)) {
    if (!instance_exists(fade)){
	var _targetroom = gameroom;
	fadescript(_targetroom,60,c_black);
}
}
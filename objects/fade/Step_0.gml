if state == 0 {
	timer++;
	if timer>= duration {
		room_goto(targetroom);
		state=1;
	}
}

else if state == 1 {
	timer--;
	if 0 >= timer {
		instance_destroy();
	}
}

alpha = timer / duration;
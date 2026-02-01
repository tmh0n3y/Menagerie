
//Starts a new phase once you talked to everyone else
if 	(global.phaseDone && 
    global.talked_to_deer && 
    global.talked_to_ram && 
    global.talked_to_lion && 
    global.talked_to_fox && 
    global.talked_to_horse && 
    global.talked_to_crow && 
    global.talked_to_bunny) {
		global.phase ++;
		global.phaseDone = false;
		global.talked_to_deer = false;
		global.talked_to_ram = false;
		global.talked_to_lion = false;
		global.talked_to_fox = false;
		global.talked_to_horse = false;
		global.talked_to_crow = false;
		global.talked_to_bunny = false;
	}
///@param text_id
function scr_game_text(_text_id){
	if global.phase == 0{
		switch(_text_id){
			case "deer npc":
				scr_text("Greetings. The name's Deer.", "deer")
				if global.talked_to_ram == false{
					scr_text("Nice to meet you.", "deer")
				} else {
					scr_text("I saw you talked to Ram.", "deer")
					scr_text("She's one of my closest companions.", "deer")
					scr_text("Also, she has been here longest.", "deer")
					global.phaseDone = true;
				}
				global.talked_to_deer = true;
				break;
			
			case "crow npc":
				scr_text("Fancy seeing a new kid.", "crow");
				scr_text("My pleasure to meet you. I am the Crow.", "crow");
				global.talked_to_crow = true;
				break;
			
			case "bunny npc":
				scr_text("Hi! I am Bunny.", "bunny");
				scr_text("Curious creature, aren't you?", "bunny");
				global.talked_to_bunny = true;
				break;
			
			case "fox npc":
				scr_text("Lies are the plague of speech.", "fox");
				scr_text("Be careful who you talk to.", "fox");
				scr_text("...", "fox");
				scr_text("I am Fox.", "fox");
				global.talked_to_fox = true;
				break;
			
			case "horse npc":
				scr_text("Horse, pleased to meet you.", "horse");
				scr_text("Delighted to see a new face in such a mundane town.", "horse");
				global.talked_to_horse = true;
				break;
			
			case "ram npc":
				scr_text("Are you new around here? You seem lost.", "ram");
				scr_text("Have you talked to Deer yet? She knows this place better than anyone.", "ram");
					scr_option("Yes. We talked.", "npc ram - yes")
					scr_option("Not yet.", "npc ram - no")
				break;
			
				case "npc ram - yes":
					if global.talked_to_deer == false{
						scr_text("Liar. I don't like liars.", "ram")
						global.talked_to_ram = true;
					} else if global.talked_to_deer == true && global.talked_to_ram == true{
						scr_text("I am glad. She's quite excuisite.", "ram")
						scr_text("I am Ram, by the way.", "ram")
						global.talked_to_ram = true;
					} else {
						scr_text("I am glad. Although, you should try again. I'm sure she will trust you more now that you talked to me.", "ram")
						scr_text("I am Ram, by the way.", "ram")
						global.talked_to_ram = true;
					}
					break;
				case "npc ram - no":
					if global.talked_to_deer == false{
						scr_text("What are you waiting for?", "ram")
						scr_text("I am Ram, by the way.", "ram")
						global.talked_to_ram = true;
					} else {
						scr_text("Liar. I don't like liars.", "ram")
						global.talked_to_ram = true;
					}
					break;
	
			
			case "lion npc":
				scr_text("...", "lion");
				scr_text("Dare to talk to me?", "lion");
				scr_text("I respect that. I am Lion.", "lion");
				global.talked_to_lion = true;
				break;
		}
	}
	if global.phase == 1{
		switch(_text_id){
			case "deer npc":
				scr_text("I wish I could help. She must need it...", "deer")
				scr_text("Oh, I am sorry, I didn't notice you. Don't worry about this.", "deer")
				global.talked_to_deer = true;
				break;
			
			case "crow npc":
				scr_text("...", "crow");
				scr_text("I believe in her strength, she will be able to fight it.", "crow");
				global.talked_to_crow = true;
				break;
			
			case "bunny npc":
				scr_text("Poor thing.", "bunny")
				scr_text("...", "lion");
				scr_text("She's not different from anyone else in this town.", "lion");
				scr_text("Still, she's sick. I wish her a speedy recovery.", "bunny");
				scr_text("My health is in tact. That should case you enough happiness to survive.", "lion");
				global.talked_to_lion = true;
				global.talked_to_bunny = true;
				break;
			
			case "fox npc":
				scr_text("I heard someone else got infected.", "fox");
				if global.talked_to_deer = true && global.talked_to_ram = true && global.talked_to_lion = true && global.talked_to_horse = true && global.talked_to_crow = true && global.talked_to_bunny = true{
					scr_text("I trust you have heard something.", "fox")
					scr_text("Someone infected? Tell me, who is it?", "fox")
						scr_option("The gardener, the wolf.", "npc fox - wolf")
						scr_option("The showgirl, the dog.", "npc fox - dog")
						scr_option("The showman, the blue jay.", "npc fox - blue jay")
						scr_option("The lumberjack, the bear.", "npc fox - bear")
						scr_option("The waiter, the boar.", "npc fox - boar")

				} else { 
					scr_text("Keep your curiosity sharp, and you will never become too old to appreciate life.", "fox");
					scr_text("Tell me if you know more.", "fox");
				}
				
				global.talked_to_fox = true;
				break;
				
				case "npc fox - wolf":
					scr_text("He cannot be. Too antisocial to catch an illness.", "fox");
					scr_text("Continue investigating and keep me in the loop.", "fox");
					global.talked_to_fox = true;
					break;
				
				case "npc fox - dog":
					scr_text("I believe you're right. I will investigate.", "fox")
					global.phaseDone = true;
					global.talked_to_fox = true;
					break;
					
				case "npc fox - blue jay":
					scr_text("You might be close, but he has always been quite healthy and tidy.", "fox");
					scr_text("His partner has always been so caring of him.", "fox");
					scr_text("Continue investigating and keep me in the loop.", "fox");
					global.talked_to_fox = true;
					break;
					
				case "npc fox - bear":
					scr_text("That old hag?", "fox");
					scr_text("She's half leg in the coffin already, I don't think people would care.", "fox");
					scr_text("Continue investigating and keep me in the loop.", "fox");
					global.talked_to_fox = true;
					break;
					
				case "npc fox - boar":
					scr_text("She's wealthy. She wouldn't worry about catching the plague.", "fox")
					scr_text("Continue investigating and keep me in the loop.", "fox");
					global.talked_to_fox = true;
					break;
			
			case "horse npc":
				scr_text("I will forever envy the companionship she has in these hard times.", "horse");
				scr_text("A loyal partner is all I could ask for.", "horse");
				global.talked_to_horse = true;
				break;
			
			case "ram npc":
				scr_text("I can't believe this sickness is rampant again.", "ram");
				scr_text("She won't be able to make more shows! Who's going to entertain me? Screw this!.", "ram");
				scr_text("I guess her boyfriend is there, but his content is not as good.", "ram");
				scr_text("I hope she recovers.", "ram");
				global.talked_to_ram = true;
				break;
			
			case "lion npc":
				scr_text("Poor thing.", "bunny")
				scr_text("...", "lion");
				scr_text("She's not different from anyone else in this town.", "lion");
				scr_text("Still, she's sick. I wish her a speedy recovery.", "bunny");
				scr_text("My health is in tact. That should case you enough happiness to survive.", "lion");
				global.talked_to_lion = true;
				global.talked_to_bunny = true;
				break;
		}
	}
	if global.phase == 2{

        switch(_text_id){

            case "fox npc":
                scr_text("How did you end up in a forgotten town like this, my dear?", "fox");
                scr_text("Tell me.", "fox");
                    scr_option("I am a traveller.", "fox ans")
                    scr_option("My ancestors brought me back here.", "fox ans")
                break;

            case "fox ans":
                scr_text("A good listener is a silent flatterer.", "fox");
                global.talked_to_fox = true;
                global.last_last_talkedto = global.last_talkedto;
                global.last_talkedto = "fox"
                break;

            case "bunny npc":
                scr_text("I heard you moved here without your family. This is not my business.", "bunny");
				scr_text("This is not my business.", "bunny");
                scr_text("...", "bunny");
				scr_text("Is it true? Is it?", "bunny");
				scr_text("You must miss them.", "bunny");
                global.talked_to_bunny = true;
                global.last_last_talkedto = global.last_talkedto;
                global.last_talkedto = "bunny"
                break;

            case "deer npc":
                scr_text("I feel sorry for all of them. Poor things. ", "deer");
                scr_text("I wish I could help. But it is also everyone’s responsibility to take care of themselves, don’t you think?", "deer");
				scr_text("You look like you may have experienced a thing or two... Do you take care of yourself?", "deer");
                global.talked_to_deer = true;
                global.last_last_talkedto = global.last_talkedto;
                global.last_talkedto = "deer"
                break;

            case "lion npc":
                scr_text("I only converse with people who deserve my attention. What makes you think you do?", "lion");
				scr_text("Ram certainly tests my patience - she is worrying too much on this plague thing.", "lion");
                global.talked_to_lion = true;
                global.last_last_talkedto = global.last_talkedto;
                global.last_talkedto = "lion"
                break;

            case "horse npc":
                scr_text("To deal with grief you must find the person to blame. I just wish someone would accept what her husband has done!", "horse");
				scr_text("Even if he passed from sickness...", "horse");
                scr_text("I know  I am right. There’s only a few people who can verify that. They will say the same.", "horse");
                global.talked_to_horse = true;
                global.last_last_talkedto = global.last_talkedto;
                global.last_talkedto = "horse"
                break;

            case "crow npc":

                if (global.last_talkedto == "horse") {
                    scr_text("There are very few people in this place who remember what happened.", "crow");
                    scr_text("A different question is what we wish to discuss. Don’t listen to Horse. There are more valuable sources than him.", "crow");
					scr_text("He was a husband, was he not? There you have your source.", "crow");
                }
                else {
                    scr_text("In times like this, we cannot waste time on being angry with people we appreciate.", "crow");
                    scr_text("Sometimes we need a third perspective to see who’s right.", "crow");
                }
                global.talked_to_crow = true;
                global.last_last_talkedto = global.last_talkedto;
                global.last_talkedto = "crow"
                break;

            case "ram npc":
                if (global.last_talkedto == "crow" and global.last_last_talkedto == "horse") {
					scr_text("As Crow said. There are things we wish not to mention.", "ram")
					scr_text("Sickness takes lives. Let a widow worry.", "ram")
                    
                    //ITT van vege a a phasenek
                    global.phaseDone = true;
                }
                else {
                    scr_text("I have had enough of these people gossiping and spreading lies.", "ram");
                    scr_text("My husband was a great man. He did more for this town than some of the people in this room altogether.", "ram");
                }
                global.talked_to_ram = true;
                global.last_last_talkedto = global.last_talkedto;
                global.last_talkedto = "crow"
                break;

	}
}
	if global.phase == 3{

        switch(_text_id){

            case "fox npc":
                scr_text("The investigation is doing just fine.", "fox");
                scr_text("I think I am getting to the bottom of how the plague got here. Trust me, we will get there.", "fox");
                global.talked_to_fox = true;
				show_debug_message("fox true")
                break;

            case "bunny npc":
				global.talked_to_bunny = true;
				show_debug_message("bunny true")
				
				if (global.q1_right == true && global.q2_right == true && global.q3_right == true && global.q4_right == true) {
					 scr_text("I will forever admire the art of peacemaking. I will forever be thankful for your help, my friend.", "bunny");
				} else {
					 scr_text("I am so heartbroken. They will never speak again.", "bunny");
					 scr_text("Only if one could be less proud and the other could be less hostile.", "bunny");
				}
                
                break;

            case "deer npc":
                scr_text("The Crow said there might be someone else with the plague besides Dog.", "deer");
                scr_text("I am getting paranoid.", "deer");
                global.talked_to_deer = true;
				show_debug_message("deer true")
                break;

            case "lion npc":
				global.talked_to_lion = true;
				show_debug_message("lion true")
                scr_text("That Ram! She is angry at me for no reason, she should worry more about herself.", "lion");
				scr_option("You’re right. She’s too anxious.", "q1 wrong")
				scr_option("She does. She’s worried for everyone.", "q1 right")

				break;
				
	            case "q1 right":
	                global.q1_right = true;
					scr_text("What does worrying even do? Even my 5 years old son knows better.", "lion");
						scr_option("What a silly argument.", "q2 wrong")
	                    scr_option("Do you not worry about your son?", "q2 right")
	                break;
				case "q1 wrong":
	                global.q1_right = false;
					scr_text("She's too afraid of it all. I don't argue with cowards." , "lion");
	                break;
				case "q2 right":
	                global.q2_right = true;
					scr_text("How dare you bring my son into this?!", "lion")
					scr_text("....", "lion")
					scr_text("....", "lion")
					scr_text("Fine. I will talk to her. But only because of my son." , "lion")
				
					if (global.q1_right == true && global.q2_right == true && global.q3_right == true && global.q4_right == true) {
						global.phaseDone = true;
						show_debug_message("phasedone");
					}
					
					break;
				case "q2 wrong":
	                global.q2_right = false;
					scr_text("He's a moron. He will never get it. Forget it." , "ram");
	                break;


            case "horse npc":
                scr_text("Bunny told me she had had a misunderstanding with Lion. ", "horse");
                scr_text("I believe Ram got a little too into the debate. These two… hot headed as always.", "horse");
                global.talked_to_horse = true;
				show_debug_message("hourse true")
				break;

            case "crow npc":
                scr_text("I hear you and Fox got closer. Are you two planning something? ", "crow");
                scr_text("...", "crow");
				scr_text("Joking.", "crow");
				scr_text("I know she always delivers honest news, therefore she must work mostly ethically. ", "crow");
                global.talked_to_crow = true;
				show_debug_message("crow true")
                break;

            case "ram npc":
				global.talked_to_ram = true;
				show_debug_message("ram true")
                scr_text("The plague is going to take all of us! The lion is not taking this seriously!", "ram");
				scr_option("He won't ignore if danger's personal.", "q3 right")
                    scr_option("That’s just how he is.", "q3 wrong")
				break;
				
	            case "q3 right":
	                global.q3_right = true;
					scr_text("What about me? Dog? The others? If he waits too long we are all doomed.", "ram");
						scr_option("He is too stubborn.", "q4 wrong")
						if (global.talked_to_lion){
							scr_option("His son is precious to him.", "q4 right")
						}
	                break;
				case "q3 wrong":
	                global.q3_right = false;
					scr_text("He's a moron. He will never get it." , "ram");
	                break;
				case "q4 right":
	                global.q4_right = true;
					scr_text("Oh... His son...", "ram")
					scr_text("Maybe you're right. I should be more open to hearing him out. I will talk to him tonight, if he's open.", "ram")
				
					if (global.q1_right == true && global.q2_right == true && global.q3_right == true && global.q4_right == true) {
						global.phaseDone = true;
						show_debug_message("phasedone");
					}
					break;
				case "q4 wrong":
	                global.q4_right = false;
					scr_text("He's a moron. He will never get it. Forget it." , "ram");
	                break;

	}
}
	if global.phase == 4{
		show_debug_message("phase 4??")
        switch(_text_id){

            case "fox npc":
                scr_text("I think I am getting to the bottom of how the plague got here. Trust me, we will get there.", "fox");
                global.talked_to_fox = true;
                break;

            case "bunny npc":
				if (global.q1_right == 1 && global.q2_right == 1 && global.q3_right == 1 && global.q4_right == 1) {
					 scr_text("I will forever admire the art of peacemaking. I will forever be thankful for your help, my friend.", "bunny");
					 scr_text("...", "bunny");
					 scr_text("You look unwell. Are you okay?", "bunny");
				} else {
					 scr_text("I am so heartbroken. They will never speak again.", "bunny");
					 scr_text("Only if one could be less proud and the other could be less hostile.", "bunny");
				}
				
                global.talked_to_bunny = true;
                break;

            case "deer npc":
                scr_text("The Crow said there might be someone else with the plague besides Dog.", "deer");
                scr_text("I am getting paranoid.", "deer");
                global.talked_to_deer = true;
                break;

            case "lion npc":
                scr_text("That Ram! She is angry at me for no reason, she should worry more about herself.", "lion");
                global.talked_to_lion = true;
				scr_option("You’re right. She’s too anxious.", "q1 wrong")
				scr_option("She does. She’s worried for everyone.", "q1 right")

				break;
				
	            case "q1 right":
	                global.q1_right = true;
					scr_text("What does worrying even do? Even my 5 years old son knows better.", "lion");
						scr_option("What a silly argument.", "q2 wrong")
	                    scr_option("Do you not worry about your son?", "q2 right")
	                break;
				case "q1 wrong":
	                global.q1_right = false;
					scr_text("She's too afraid of it all. I don't argue with cowards." , "lion");
	                break;
				case "q2 right":
	                global.q2_right = true;
					scr_text("How dare you bring my son into this?!", "lion")
					scr_text("....", "lion")
					scr_text("....", "lion")
					scr_text("Fine. I will talk to her. But only because of my son." , "lion")
					scr_text("I appreciate your willingness to help, but this was strange. Don't talk to me again." , "lion")
				
					if (global.q1_right == true && global.q2_right == true && global.q3_right == true && global.q4_right == true) {
						global.phaseDone = true;
					}
					
					break;
				case "q2 wrong":
	                global.q2_right = false;
					scr_text("He's a moron. He will never get it. Forget it." , "ram");
	                break;


            case "horse npc":
                scr_text("Bunny told me she had had a misunderstanding with Lion. ", "horse");
                scr_text("I believe Ram got a little too into the debate. These two… hot headed as always.", "horse");
                global.talked_to_horse = true;
				break;

            case "crow npc":
                scr_text("I hear you and Fox got closer. Are you two planning something? ", "crow");
                scr_text("...", "crow");
				scr_text("Joking.", "crow");
				scr_text("I know she always delivers honest news, therefore she must work mostly ethically. ", "crow");
                global.talked_to_crow = true;
                break;

            case "ram npc":
                scr_text("The plague is dangerous. I am tired of Lion not taking this seriously. Mocking me, like I am a fool.", "ram");
                global.talked_to_ram = true;
				scr_option("He won't ignore if danger's personal.", "q3 right")
                    scr_option("That’s just how he is.", "q3 wrong")
				break;
				
	            case "q3 right":
	                global.q3_right = true;
					scr_text("What about me? Dog? The others? If he waits too long we are done for.", "ram");
						scr_option("He is too stubborn.", "q4 wrong")
						if (global.talked_to_lion){
							scr_option("His son is precious to him.", "q4 right")
						}
	                break;
				case "q3 wrong":
	                global.q3_right = false;
					scr_text("He's a moron. He will never get it." , "ram");
	                break;
				case "q4 right":
	                global.q4_right = true;
					scr_text("Oh... His son...", "ram")
					scr_text("Maybe you're right. I should be more open to hearing him out. I will talk to him tonight, if he's open.", "ram")
					scr_text("But... you should stay away from me.", "ram")
				
					if (global.q1_right == true && global.q2_right == true && global.q3_right == true && global.q4_right == true) {
						global.phaseDone = true;
					}
					break;
				case "q4 wrong":
	                global.q4_right = false;
					scr_text("He's a moron. He will never get it. Forget it." , "ram");
	                break;

	}
}		
	if global.phase == 5{
        switch(_text_id){

            case "fox npc":
                scr_text("Ask me no questions, I will tell you no lies.", "fox");
                global.talked_to_fox = true;
                break;
				
            case "bunny npc":
				scr_text(" I don’t think we can talk.", "bunny");
                global.talked_to_bunny = true;
                break;

            case "deer npc":
                scr_text("Is it you...?", "deer");
                global.talked_to_deer = true;
                break;

            case "lion npc":
                scr_text("I can’t risk my health because of some stranger. You will never be welcome in this town. Stay away from me.", "lion");
                global.talked_to_lion = true;
	            break;

            case "horse npc":
                scr_text("I believe in myself.", "horse");
                global.talked_to_horse = true;
				break;

            case "crow npc":
                scr_text("You're so oblivious.", "crow");
				global.phaseDone = true;
                global.talked_to_crow = true;
                break;

            case "ram npc":
                scr_text(" I can’t be bothered. We have all lost something. Or someone.", "ram");
                global.talked_to_ram = true;
	            break;
		}
	}	
	if global.phase == 6{
        switch(_text_id){

            case "fox npc":
                scr_text("...", "fox");
                global.talked_to_fox = true;
                break;
				
            case "bunny npc":
				scr_text("...", "bunny");
                global.talked_to_bunny = true;
                break;

            case "deer npc":
                scr_text("...", "deer");
                global.talked_to_deer = true;
                break;

            case "lion npc":
                scr_text("...", "lion");
                global.talked_to_lion = true;
	            break;

            case "horse npc":
                scr_text("...", "horse");
                global.talked_to_horse = true;
				break;

            case "crow npc":
                scr_text("Wake up.", "crow");
                global.talked_to_crow = true;
				global.stairs_clickable = true;
                break;

            case "ram npc":
                scr_text("...", "ram");
                global.talked_to_ram = true;
	            break;
		}
	}
}
"LinkedInAdventure" by Colin Miller
The story headline is "An interactive adventure featuring the wonders of LinkedIn".
The story genre is "Action-Adventure".
The release number is 1.
The story description is "This is an adventure about the LinkedIn experience. One might also consider it a commentary on life in general."
The story creation year is 2012.

Include Basic Screen Effects by Emily Short.
Release along with an interpreter.

Part 1 Setting up the World

Chapter 1 Making new Kinds

Section 1 Links

A link is a kind of door.
A link is usually open.
A link is seldom openable.
A link is usually scenery.
Understand "link" or "url" or "URL" as a link.
The description of a link is usually "[The item described] will probably go somewhere if clicked on."

Clicking is an action applying to one thing.
Understand "click [something]" as clicking.
Understand "click on [something]" as clicking.

The player has some text called has clicked on.
The has clicked on is usually "No".

Carry out clicking:
	if the noun is a link
	begin;
		now has clicked on of player is "Yes";
		try entering the noun;
	otherwise;
		say "[the noun] is not a thing on which one can click.";
	end if.
	
A first check going rule (this is the reject directional travel while online rule):
	if room gone from is in The Online Area and room gone to is in The Online Area
	begin;
		if door gone through is not a link or has clicked on of player is "No"
		begin;
			say "Going that way doesn't really make any sense." instead.;
		otherwise;
			now has clicked on of player is "No";
		end if.;
	end if.


The Online Area is a region.

Section 2 Look and Feel

To turn screen black:
	say white letters;
	turn the background black;
	clear the screen;
	leave space.
	
To leave space:
	say paragraph break;
	say paragraph break;
	say paragraph break;
	say paragraph break.

	
Chapter 2 Modifying Current Things

Instead of swearing obscenely: say "That is not very professional of you"

Chapter 3 Recruting The Team

Section 1 The Rooms

The Darkness is a room. "You stand (float?) in what seems to be an empty black void. Your life feels somewhat hallow, as if there's been something missing that you can't quite identify. A dim light receeds to the north, a faint glimmer of hope amidst the darnkess. [paragraph break]You are likely to be eaten by a Grue."
Enlightenment is north of The Darkness. "Clarity fills your mind as you realize your sole purpose in life is to create an interactive fiction (just like this!) about LinkedIn. You're really not sure where it will go or what it will contain but you feel compelled to pour your life essense into this project. You imagine the rewards will be astounding. The feeling of pure joy of having reached this conclusion is enough to bring a tear to your eye. You try to hold it back, yet fail.[paragraph break] To the east is a Vahalla where you can meet your fate. To the West is a pit of snakes. (You probably don't want to go there)."
Before going to Enlightenment:
	if Enlightenment is not visited, say "You stumble into the light."
Enlightenment has some text called backtrack.
The backtrack is usually "No".
The delicious taco is in Enlightenment.
The delicious taco is undescribed.
The delicious taco is edible.
Around is in Enlightenment.
Around is scenery.
Pet is a kind of animal.
Pet has some text called been pet.
The been pet is usually "No".

Petting is an action applying to one thing.
Understand "pet [something]" as petting.

Check petting:
	if noun is not a pet
	begin;
		say "You can't pet [the noun]".;
		stop the action.;
	end if.

Carry out petting:
	if been pet of the noun is "No"
	begin;
		say "You pet the puppy who licks you and wags his tail. How wonderful.";
		increase the score by 5.;
		now the been pet of the noun is "Yes".;
	otherwise;
		say "You continue to pet the puppy who continues to wag his tail excitedly.".;
	end if.

The Dangerous Pit is west of Enlightenment. "For some reason you jumped onto a platform in the center of a pit of snakes. The area is dark and has an opressive feel to it. Hisses come from the snakes below you, but also from the walls. They sound like failure."
Vahalla is east of Enlightenment. "Congradulations! You've decided to work on LinkedIn Adventure! You should send a message to Colin Miller (cmiller@linkedin.com) right away and let him know of your profound commitment to this worth cause. Also, cake!".
Some snakes are in The Dangerous Pit.
snakes are animals.

A Cake is in Vahalla. "A delicious looking cake."
The cake is edible.
The description of the Cake is "This cake looks to be made of pure joy (with frosting and sprinkles). It looks delicious."
Instead of eating the cake:
	say "You take a bite of the cake and find yourself in nirvana.";
	increase the score by 5.;
	end the story.

The Kennel is above Enlightenment. "Why is this even here? How did you go up from what was basically a room of pure light? Did you float? Looking around you see a bunch of empty cages and some newspaper on the ground."
A puppy is in the Kennel. "An awesome puppy."
The puppy is a Pet.
The description of the Puppy is "This puppy seems really happy to see you. You wonder how he could have arrived at this place."

Section 2 The Rules

Instead of doing anything to snakes:
	die of snake bites.
	
Instead of going to Enlightenment from The Dangerous Pit:
	say "As you attempt to make your way back to enlightenment you accidently trip over your shoe laces and fall into the pit. (bad break)";
	die of snake bites.
	
To die of snake bites:
	say "Before you can move, a pile of snakes lashes out at you and sink their teeth into your flesh. Burning pain of poison flashes through your system before your body seizes up. You're only regret is that you never followed through with working on LinkedIn Adventure.";
	decrease the score by 10000.;
	say "[paragraph break] *** YOU DIED ***";
	end the story.


The maximum score is 20.

Instead of searching Around in Enlightenment:
	if the delicious taco is undescribed
	begin;
		now the delicious taco is described.;
		say "You find a delicious taco.";
		increase the score by 10;
	otherwise;
		say "You find no additional tacos.";
	end if.

Instead of going to The Darkness from Enlightenment:
	if backtrack of enlightenment is "No"
	begin;
		say "Why would you ever want to go back to that empty void? This place is much better. Look, over there is a puppy! [paragraph break]Ok, so there wasn't really a puppy, but you can imagine one. I bet if you search around long enough you'll find a taco. Mmm, tacos. There's no tacos in the dark place. Better to stay here.";
		now backtrack of Enlightenment is "Yes";
	otherwise;
		 say "You still don't want to go that way" instead.;
	end if;

Instead of taking the delicious taco:
	if the delicious taco is undescribed, say "What taco? Man, don't you wish there were a taco here?".;
	otherwise continue the action.

After eating the delicious taco:
	say "You now have no more taco which is a sad thing.";
	decrease the score by 5.

Part 2 The World

Chapter 1 Online

The Login Screen is a room. "A wonderous world of magic awaits you at this special page that reads 'LinkedIn' at the top. A login button beckons to you seductively from the side."
The Login Screen is in The Online Area.

The LinkedIn Homepage is a room.
The LinkedIn Homepage is in The Online Area.
The login button is a link.
The login button is north of the Login Screen.
Through it is the LinkedIn Homepage.

The signup button is a link.
The signup button is east of the Login Screen.
Through it is the LinkedIn Homepage.

The exit button is a link.
The exit button is west of the Login Screen.
Through it is the Office.

The logout button is a link.
The logout button is south of the LinkedIn Homepage.
Through it is the Login Screen.

A soft taco is in the LinkedIn Homepage.
The taco is edible.
The description of the taco is "This taco is made of tasty meat and cheese with a tortilla curled around it."

Chapter 2 Real World
[If you got to the office from the computer you should mention turning it off]

The Office is a room. "This is a standard computer office. There's a desk with a computer and a chair on it."
The desk is in the Office.
On it is a computer.
The computer is a device.
The chair is in the Office.
The desk, computer, and chair is scenery.

Carry out switching on the computer: move the player to the Login Screen.

The Bathroom is a room. "This bathroom hasn't been cleaned in years."
The Bathroom is east of the Office.




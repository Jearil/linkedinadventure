"LinkedInAdventure" by "Colin Miller, Julie Meridian, Edward Goldstein, Howard Zhao, and Jonathan Newton."
The story headline is "An interactive adventure featuring the wonders of LinkedIn".
The story genre is "Action-Adventure".
The release number is 1.
The story description is "This is an adventure about the LinkedIn experience. One might also consider it a commentary on life in general."
The story creation year is 2012.

Include Basic Screen Effects by Emily Short.
Release along with an interpreter.

The Reception Area is a room.

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
Understand "kick [something]" as attacking.

Carry out clicking:
	if the noun is a link
	begin;
		now has clicked on of player is "Yes";
		try entering the noun;
	otherwise;
		say "[the noun] is not a thing on which one can click.";
	end if.
	
A first check going rule (this is the reject directional travel while online rule):
	if room gone from is in The Online Area
	begin;
		if door gone through is not a link or has clicked on of player is "No"
		begin;
			say "Going that way doesn't really make any sense." instead.;
		otherwise;
			now has clicked on of player is "No";
		end if.;
	end if.


The Online Area is a region.

Understand "head [direction]" as going.

Section 2 Equiping the Player

The player has some text called has clicked on.
The player's full name is an indexed text that varies.
The has clicked on is usually "No".

Section 3 Look and Feel

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

Chapter 2 Making fun Actions

Dancing is an action applying to nothing.
Understand "dance" or "groove" or "jig" as dancing.

Report dancing:
	say "A disco ball descends and you groove."
	
Licking is an action applying to one thing.
Understand "lick [something]" as Licking.

[Check licking:
	if ]

Carry out licking:
	try silently taking the noun.

Report Licking:
	say "You lick [the noun]. It is yours now."
	
Chapter 2 Modifying Current Things

Instead of swearing obscenely: say "That is not very professional of you"

Chapter 3 Recruting The Team

Section 1 The Rooms

The Darkness is a room. "You stand (float?) in what seems to be an empty black void. Your life feels somewhat hallow, as if there's been something missing that you can't quite identify. A dim light receeds to the north, a faint glimmer of hope amidst the darnkess. [paragraph break]You are likely to be eaten by a Grue."
Enlightenment is a room. "Clarity fills your mind as you realize your sole purpose in life is to create an interactive fiction (just like this!) about LinkedIn. You're really not sure where it will go or what it will contain but you feel compelled to pour your life essense into this project. You imagine the rewards will be astounding. The feeling of pure joy of having reached this conclusion is enough to bring a tear to your eye. You try to hold it back, yet fail.[paragraph break] To the east is a Vahalla where you can meet your fate. To the West is a pit of snakes. (You probably don't want to go there)."
The Light is a door.
The Light is open.
The Light is scenery.
The Light is north of The Darkness and south of Enlightenment.
A Grue is in the darkness.
A Grue is scenery.

Instead of doing anything to the Grue:
	say "Why would you want to do that to a grue? They're dangerous you know."

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
Instead of smelling the cake:
	say "The cake smells mouth watering."
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

After going to the Office from the Login Screen:
	try switching off computer.

The logout button is a link.
The logout button is south of the LinkedIn Homepage.
Through it is the Login Screen.

A soft taco is in the LinkedIn Homepage.
The taco is edible.
The description of the taco is "This taco is made of tasty meat and cheese with a tortilla curled around it."

Chapter 2 Real World

Section 1 Office Building

The Reception Area is a room. "You are standing in the middle of a large room with vaulted ceilings.  The walls are painted LinkedIn blue and decorated with a multitude of posters.  There is a water cooler in the corner and a few chairs strewn about.  The receptionist is sitting at a large desk and is working on her computer.  On the desk there is a webcam and a bowl of candy."
A Large Desk is in The Reception Area.
The Receptionist's Computer is on The Desk.
A Webcam is on the Large Desk.
A Bowl of candy is on the Large Desk. "This is a bowl of candy".
The Bowl of candy is a container.
A piece of candy is in the Bowl of Candy.
The piece of candy is edible.
The Receptionist is in The Reception Area.
The Receptionist is a person.
The water cooler is in The reception Area.
The description of the water cooler is "The water cooler stands in the corner placidly. You feel its non-existent eyes boring into you.  Plastic cups sit on top of it.  A bubble gurgles up to the top making a loud noise."
Some cups are on the Water Cooler.
The Large Desk and The Receptionist's Computer and The Water Cooler and Some cups are scenery.
A Glass Door is a door.
A Glass Door is east of The Reception Area.

[ subsection for receptionist ]
Instead of licking the receptionist:
	say "The Receptionist gives you a look then says 'I wouldn't try that if I were you'".

The Fancy Hallway is a room. "This hallway is really fancy. You're not sure you're dressed appropriately for such a hallway. It appears that more craftsmanship went into the floor trim than was applied to the entire building that you grew up in. Pictures on the wall feature people and still life. The area is bathed in a soft yellow light. At the end of the hallway is a door leading to an office."

The Office is a room. "This is a standard computer office. There's a desk with a computer and a chair on it."
The Dingy Desk is in the Office.
On it is an office computer.
The description of the office computer is "Sleek and high tech, this construct of keys, screen, and whirring lights allows one to send signals through a series of tubes to remote locations. Truely a marvel of the modern world."
The office computer is a device.
The chair is in the Office.
The Dingy Desk, office computer, and chair is scenery.

Carry out switching on the office computer: move the player to the Login Screen.

The Bathroom is a room. "This bathroom hasn't been cleaned in years."
The Bathroom is east of the Office.

The Graveyard is a room. "This small patch of overgrown land has a series of well worn stone markers indicating the final resting place of many failed projects."
A shiny gravestone is in the Graveyard.
The description of the shiny gravestone is "R.I.P. [Player's full name]".
A damaged gravestone is in the Graveyard.
The description of the damaged gravestone is "This stone appears to have bullet holes and what looks like scratches made from some sort of pick or axe. In faded letters you can make out only a single word: Leo".
The Graveyard is south of the Office.
South of The Darkness is the Office.

[When play begins:
	now the command prompt is "Please enter your name >".

After reading a command when the command prompt is "Please enter your name >":
	now the player's full name is the player's command.;
	say "Thank you [Player's full name]".;
	now the command prompt is ">".;
	reject the player's command.]

Outside Of The Elevator is a room. "Before you is a pair of ominous silver metal sliding door sealed tightly. On the right hand side are four glowing buttons. A soft feminine voice says 'Please make your selection from the following menu.'"
Up Button is an open door.
The Up Button is not openable.
Up Button is above The Outside Of The Elevator and below The Fancy Hallway.
Down Button is an open door.
The Down Button is not openable.
Down Button is below The Outside Of The Elevator and above The Dungeon Junction.
Dance Button is in The Outside Of The Elevator.
Connect Button is in The Outside Of The Elevator.
The Outside Of The Elevator is north of The Reception Area.

Section 2 The Dungeon

Dungeon Junction is a room. "The doors open into a circular room. Water drips from the mildewed walls. The room smells of failed business proposals and shattered LIX experiments.  Hallways leading  East, West, and North branch off from this room In the center of the room stands a security guard. The guard is wearing plate mail (formed of large white paper plates) and armed with an umbrella. His helmet was cut from a waste paper basket. He looks down on you and speaks 'Choose your direction wisely adventurer for your fate and the fate of all LinkedIn members depend on you.'"
In the Dungeon Junction is a man called The Security Guard.
The Security Guard is scenery.
The Security Guard wears an umbrella.
The Security Guard wears a helmet.
The Security Guard wears plate mail.
Understand "armor" as plate mail.
The description of the Security Guard is "The guard is heavily muscled and could probably break bricks over his head (or yours). His armor suggests he has played in one too many LARPs and lives alone."
The description of the helmet is "A grey plastic waste paper basket with eye slits cut into it and a hole for your mouth. It would fit snuggly and keep your head warm. It would provide a small amount of protection while making you look like an idiot at the same time."
The description of the umbrella is "The umbrella is blue with the LinkedIn logo. It is decently snazzy swag."
The description of the plate mail is "This armor is made of interlocking paper plates from the cafeteria. It would provide a small amount of protection while making you look ridiculous."
The dungeon ceiling is in the Dungeon Junction.
The dungeon floor is in the Dungeon Junction.
The dungeon walls is in the Dungeon Junction.
The description of the dungeon walls is "The walls are slick with water and slimy mold. It reminds you of your dormitory years."
The description of the dungeon ceiling is "You look at the ceiling and think beige, they should really paint the ceiling beige."
The description of the dungeon floor is "The floor is inlaid with arcane symbols. Upon closer inspection you realize that is actually binary code. You now have a better understanding of search algorithms." [gain 15 points when first looking at this]


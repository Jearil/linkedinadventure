"LinkedInAdventure" by "Colin Miller, Julie Meridian, Edward Goldstein, Jemiah Westerman, and Jonathan Newton."
The story headline is "An interactive adventure featuring the wonders of LinkedIn".
The story genre is "Action-Adventure".
The release number is 1.
The story description is "This is an adventure about the LinkedIn experience. One might also consider it a commentary on life in general."
The story creation year is 2012.

Include Basic Screen Effects by Emily Short.
Include Conversation Framework by Eric Eve.
Include Conversational Defaults by Eric Eve.
Include Hidden Items by Krister Fundin.
Release along with an interpreter, the source text and cover art.
The display banner rule is not listed in the startup rulebook.

The Reception Area is a room.

Book 1 Setting up the World

Part 1 Making new Kinds

Chapter 1 Stuff

Understand "kick [something]" as attacking.

Section 2 Rules

Understand "head [direction]" as going.
 
[ the cup ]
A cup is a thing. A cup can be full or empty.
After printing the name of a full cup: say " full of water".
Before printing the name of an empty cup: say "empty ".

Filling is an action applying to one thing.
Understand "fill [something]" as filling.

Check filling:
	if water cooler is not visible, say "You can't fill [the noun] without water." instead;
	if the noun is not a cup, say "You can't fill [the noun]." instead;

Carry out filling:
	if the cup is full, say "You spill water everywhere.";
	if the cup is empty, say "You fill the cup.";  now the cup is full;

Instead of drinking the cup when the cup is full: 
	now the cup is empty; say "Delicious."
Instead of drinking the cup when the cup is empty: 
	now the cup is empty; say "Maybe if you filled it first."
Instead of drinking water when the cup is full: 
	now the cup is empty; say "Delicious."
Instead of drinking water when the cup is empty:
	now the cup is empty; say "You do not have any water."

[ Swiping ]

Swiping is an action applying to two things.
Understand "swipe [something] at [something]" as swiping.

Check swiping:
	if noun is not a badge
	begin;
		say "You can't swipe that!".;
		stop the action;
	end if.
Carry out swiping:
	if second noun is a card reader and a glass door is locked
	begin;
		say "The card reader beeps and you hear a loud clang.  The card reader light turns green.".;
		now the description of a card reader is "It’s a black box with a glowing green light.  Green probably means the door is unlocked.".;
		now a glass door is unlocked.;
		a glass door locks in five turns from now.;
	otherwise;
		say "You swipe your [noun] at [the second noun], congratulations!  Nothing happens.".;
	end if.
After opening a glass door:
	now a glass door is open.;
	a glass door closes in three turns from now.;
	say "You open the glass door but it slowly starts to close again.".

After opening a glass door for the first time:
	increase the score by 6.;
	continue the action.
At the time when a glass door locks:
	now a glass door is locked.;
	now the description of A card reader is "It’s a black box with a glowing red light.  Red probably means the door is locked.".;
	if the player can see a glass door 
	begin;
		say "A soft clang pulls your attention to the glass door.  You notice the card reader light is red.".;
	end if.
At the time when a glass door closes:
	now a glass door is closed.;
	if the player can see a glass door 
	begin;
		say "The glass door closes with a click.".;
	end if.
[End reception area]

a webdevice is a kind of thing.
a webdevice can be on or off.
a webdevice is usually off.

Instead of examining a webcam:
	if the webcam is on
	begin;
		say "The receptionist says 'Smile!  Ok, that's good.' and the printer starts printing before you have a chance to actually smile.".;
		now a webcam is off.;
		say "The receptionist hands you a badge.".;
		now the player is carrying a badge.;
	otherwise;
		continue the action.;
	end if.

Chapter 3 Look and Feel

Section 1 Colors

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

Section 2

When play begins:
	say "It's a new day, much like any other day at Frobozz Industries. It's 8:55am and you are mildly delirious from lack of sleep. You spent the previous evening waiting in line to get a new phone, which is quite possibly the most interesting thing to have happened since the last time you got a new phone. You idly wonder if you can convince your boss to expense it as you glance down at it in your hand, feeling very clever for getting the LinkedIn app so you can have a reason to use it at work. Or, at least you can pretend to be while you're surreptitiously tending your virtual garden during the staff meeting. [paragraph break]".;
	pause the game.


Chapter 4 Making fun Actions

Section 1 Some actions

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
	
Section 2 High Fives

A person can be happy or sad.
A person is usually sad.

High Fiving is an action applying to one thing.
Understand "high five [something]" as High Fiving.

Check High Fiving:
	if noun is not a person
	begin;
		say "How do you high five [the noun]?".;
		stop the action.;
	end if.

Carry out High Fiving:
	if the noun is sad
	begin;
		say "You high five [the noun] with a resounding clap!";
		increase the score by 1.;
		now the noun is happy.;
	otherwise;
		say "You already high fived [the noun], double high fiving is unprofessional.".;
	end if.
	
Chapter 5 Modifying Current Things

Instead of swearing obscenely: say "That is not very professional of you"

Book 2 The World

Part 2 Real World

Chapter 1 Office Building

Section 1 Reception Area

[Reception Area]
The Reception Area is a room. "You are standing in the middle of a large room with vaulted ceilings. The walls are painted a pleasing shade of blue and decorated with a multitude of posters. There is a half-empty water cooler in the corner and a few chairs strewn about. The receptionist is sitting at a large desk and is working on her computer.  Behind the desk in large 3-D letters you see 'Qwerty Fizzbuzz'.".
A Large Desk is in The Reception Area.
The description of A Large Desk is "It's a desk, and it's large.".
The Receptionist's Computer is on The Desk.
The description of a Receptionist's Computer is "This is your standard iMac.  The receptionist is making great use of the Retina display by browsing for new shoes".
A Webcam is on the Large Desk.
A Webcam is scenery.
a webcam is a webdevice.
The description of a Webcam is "The webcam looks like a black ball on a small podium.  The lens is staring back at you."
A bowl of candy is on the Large Desk. 
The description of a bowl of candy is "The bowl looks like it is made of crystal with elaborate designs engraved into it.".
The bowl of candy is a container. 
A piece of candy is in the bowl of Candy. 
The description of a piece of candy is "The candy wrapper is written in a language you don’t understand.  You have no clue what kind of candy this might be.".
The piece of candy is edible. 
The Receptionist is in The Reception Area. 
The description of the Receptionist is "The receptionist has short blonde hair and is quite pretty.  She is wearing a nice dress with flower print.  Her name tag reads ‘Rebecca’.  She is ignoring you with such skill that it is quite obvious that she has perfected the art.".
The Receptionist is a person.
Understand "Rebecca" as The Receptionist.
The water cooler is in The reception Area.
The description of the water cooler is "The water cooler stands half-empty in the corner placidly. You feel its non-existent eyes boring into you. [if the cup is on the water cooler] A Plastic cup sit on top of it.[end if] A bubble gurgles up to the top making a loud noise."
A cup are on the Water Cooler.

The Large Desk and The Receptionist's Computer and The Water Cooler are scenery.
A Glass Door is a door.
A Glass Door is north of The Reception Area and south of Outside Of The Elevator.
A Glass Door is locked.
The description of A Glass Door is "The glass door is transparent!  You can see right through it because it’s made of glass… It’s practically magical.  Attached to it is a card reader.".
A card reader is in The Reception Area.
A card reader is scenery.
The description of A card reader is "It’s a black box with a glowing red light.  Red probably means the door is locked.".
A badge is a thing.
The description of a badge is "It's your temporary ID Badge.  It has your picture on it.".
The receptionist is carrying the badge.


After saying hello to the receptionist for the first time:
say "The receptionist looks at you, puts on a giant fake smile and says 'Hello and welcome to Qwerty Fizzbuzz, how may I help you?'".
After saying hello to the receptionist:
say "The receptionist makes a soft sighing sound before saying 'Yes?'.  She looks a little irritated.".

After saying goodbye to the receptionist:
	say "The receptionist goes back to her computer.".
default ask-tell response for the receptionist:
	say "The receptionist stares at you blankly looking a little confused.".
default ask-for response for the receptionist:
	say "The receptionist sighs heavily and says 'Why do people always ask for stuff?  I don't have anything to give.'".
after quizzing the receptionist about the glass door:
	say "The receptionist says 'You'll need a badge to get in'".
after quizzing the receptionist about the card reader:
	say "The receptionist says 'You need a badge to use the card reader'".
after quizzing the receptionist about a badge for the first time:
	say "The receptionist asks 'Of course, a badge.  Who are you meeting with?".
after quizzing the receptionist about a badge:
	say "The receptionist narrows her eyes at you and says 'Yes, yes a badge already.  You're clearly not just loitering around our reception area so you must have a meeting.  Who are you meeting?".
after telling the receptionist about "Maximillion Warbucks":
	say "The receptionist looks at you for a moment and says 'Sure, let me get you a temp badge.  Please look at the webcam.'".;
	now a webcam is on.
after telling the receptionist about "Marge Tuckerberg":
	say "The receptionist looks at you for a moment and says 'Sure, let me get you a temp badge.  Please look at the webcam.'".;
	now a webcam is on.
after telling the receptionist about "Darwen Straus":
	say "The receptionist gives you a once over followed by the evil eye and says 'He's not here right now.  Are you meeting with someone else?".;
	now a webcam is off.


after quizzing the receptionist about the water cooler:
say "The receptionist says 'Yeah, the water's free.  Help yourself.".
[end get the badge]

[To do: add a swipe action]
[When the door is not locked the description of A card reader is "It’s a black box with a glowing green light.  Green probably means the door is unlocked.".]

The posters are in The Reception Area.
The posters are scenery.
The description of the posters is "The posters are pretty boring.  Some motivational crap that isn't really motivating you to keep looking at the posters.  One of the posters is covered by a LinkedIn flier".
The linkedin flier is scenery.
The linkedin flier is in The Reception Area.
The description of the linkedin flier is "The flier reads:  Qwerty Fizzbuzz is now on LinkedIn!!!! Look us up online for more information.  (Really, use a browser… like the one you're using to play this game)".
The chairs are in The Reception Area.
The chairs are scenery.
The chairs are a container.
The description of the chairs is "The chairs are pretty plain but look very uncomfortable".
Understand "the chair" or "chair" as The chairs.

[ subsection for receptionist ]
Instead of licking the receptionist:
    say "The Receptionist gives you a look then says 'I wouldn't try that if I were you'".
Instead of entering the chairs:
    say "You sit down on a chair, promptly hurt your back and stand back up.".

Instead of licking the water cooler:
    say "It taste like plastic with a hint of sweat.".

Section 2 Fancy Hallway

The Fancy Hallway is a room. "This hallway is really fancy. You're not sure you're dressed appropriately for such a hallway. It appears that more craftsmanship went into the floor trim than was applied to the entire building that you grew up in. Pictures on the wall feature people and still life. The area is bathed in a soft yellow light. The hallway continues to the east."

The End Of The Hallway is a room. "The hallway ends at a large mahogany door. A nameplate is attached to the wall beside it. In one corner, a janitor cart with rags, chemicals, brushes, and a garbage can has been left abandoned."
The End Of The Hallway is east of The Fancy Hallway.
The nameplate is in The End Of The Hallway.
The nameplate is scenery.
The description of the nameplate is "The nameplate reads 'Maximillion Warbucks - CFO'."
A janitor cart is in the End Of The Hallway.
The janitor cart is scenery.
Understand "cart" as the janitor cart. Understand "rag" as rags. Understand "brush" as brushes.
rags are on the janitor cart.
The description of the Janitor Cart is "The Janitor Cart has some rags, various chemicals, some brushes, and a garbage can on it."
The chemicals are on the Janitor Cart. "Some basic cleaning chemicals."
The indefinite article of the chemicals is "some".
The description of the chemicals is "Some basic cleaning chemicals. Not even really powerful enough to get food off of the carpet.".
brushes are on the janitor cart.
The garbage can is on the janitor cart.
The garbage can is not portable.
The garbage can is a container.
The description of the garbage can is "A grey garbage can with a black bag."
The janitor keys are on the janitor cart.
The janitor keys are hidden.

After examining the janitor cart for the first time:
	reveal the janitor keys.;
	say "You also see some janitor keys on the cart."
	
The mahogany door is a door.
The mahogany door is scenery.
The description of the mahogany door is "This large door is made of solid mahogany. In contrast with the higher-tech badge system used on the front door, this door features a simple keyhole attached to what you assume is a dead-bolt."
The mahogany door is east of The End Of The Hallway.
Through it is The Office of the CFO.
The mahogany door is lockable and locked.
The janitor keys unlocks the mahogany door.

Section 3 CFO Office

The Office of the CFO is a room. "This office is large and spacious. The carpet is a deep red, while the walls are a pale tan. Soft yellow light emmits from the fixtures overhead. It features a broad mahogany desk with a slim silver computer off to one side. A series of filing cabinets lines the wall."
The carpet is in the Office of the CFO.
The description of the carpet is "This red carpet is rich and plush. The color is unsettling, as you are reminded of blood just by looking at it."
The carpet is scenery.
The fixtures are in the Offie of the CFO.
The fixtures are scenery.
The mahogany desk is in the Office of the CFO.
The mahogany desk is scenery.
A slim silver computer is on the mahogany desk.
The slim silver computer is scenery.
A password protected computer is kind of thing.
A password protected computer can be protected or unprotected.
A password protected computer is usually protected.
A slim silver computer is a password protected computer.
Filing cabinets are in the Office of the CFO.
Filing cabinets are scenery.
Filing cabinets are a container.
The description of the filing cabinets is "A series of metal cabinets that most likely contain a lot of paper files."
The filing cabinets are lockable and locked.

Instead of examining the slim silver computer:
	if the slim silver computer is protected
	begin;
		Say "The computer screen has a prompt for a password on it.";
		now the command prompt is "Password? >";
	otherwise;
		Say "Computer description here.";
	end if.

	

Section 11 Grue
[High Five Area]

The High Five Zone is a room.  "You are in the high five zone of the fancy hallway.  Apart from the standard fancy here is a poster with the title 'High Fives Saves Lives' on the wall.  A few feet away from you is a Grue with his hand up looking at you expectantly.".
The high five poster is in the High Five Zone.
The high five poster is scenery.
The description of the high five poster is "This poster has 'High Fives Saves Lives in huge letter.  Under the title are detailed instructions on how to give a high five.  There is a small mention about high fiving Grues but most of it is blacked out by black marker.".
The Grue is in the High Five Zone.
The description of the Grue is "Your standard Grue is standing in the High Five Zone[if the grue is sad] with his arm raised and hand open[end if].  In his other hand you see a coffee mug with '#1 Grue' written on it.  He's looking at you expectantly.".
The Grue is a person.

[High five rules for grue]

Before going from The High Five Zone:
	if the grue is sad
	begin;
		say "The grue is offended that you left him hanging. [paragraph break]You were eaten by a Grue.";
		decrease the score by 5;
		end the story.;
	end if.

Check High Fiving:
	if the grue is happy and the noun is the grue
	begin;
		say "There's an uncomfortable pause and the Grue coughs quietly.[paragraph break]You were eaten by a Grue.";
		end the story.;
	end if.

[End High Five Area]

Section 4 Elevator

Elevator button is a kind of door.
Elevator button is always open.

Outside Of The Elevator is a room. "Before you is a pair of ominous silver metal sliding door sealed tightly. On the right hand side are four glowing buttons. A soft feminine voice says 'Please make your selection from the following menu.'"
Up Button is an Elevator button.
The Up Button is not openable.
Up Button is above The Outside Of The Elevator.
Through it is The Fancy Hallway.
Outside Of The Elevator is below The Fancy Hallway.
Dance Button is in The Outside Of The Elevator.

[ Rules for buttons ]
Before going from Outside Of The Elevator to The Fancy Hallway:
	say "The button lights up and chimes softly. The elevator quietly ascends.".
Before going from Outside Of The Elevator to the Basement Junction:
	say "The button lights up and chimes softly. The elevator quietly descends.".

Instead of pushing an elevator button:
	try going the noun.

Instead of pushing the Dance Button:
	say "The elevator begins playing a muzak version of Gangnam Style. You half-heartedly dance in place and sing along."

Instead of pushing the Connect Button for the first time:
	say "A soft feminine voice says 'Thank you for adding me to your profesional network. Can you write me a recommendation?'";
	increase score by 5

Section 6 The Basement

[Dungeon Junction]
Basement Junction is a room. "The doors open into a circular room. Water drips from the mildewed walls. The room smells of failed business proposals and shattered LIX experiments.  Hallways leading  East, West, and North branch off from this room In the center of the room stands a security guard. The guard is wearing plate mail (formed of large white paper plates) and armed with an umbrella. His helmet was cut from a waste paper basket. He looks down on you and speaks 'Choose your direction wisely adventurer for your fate and the fate of all LinkedIn members depend on you.'"
In the Dungeon Junction is a man called The Security Guard.
The Security Guard is scenery.
The Security Guard wears an umbrella.
The Security Guard wears a helmet.
The Security Guard wears plate mail.
Understand "armor" as plate mail.
Understand "basket" as helmet.
Understand "waste paper basket" as helmet.
The description of the Security Guard is "The guard is heavily muscled and could probably break bricks over his head (or yours). His armor suggests he has played in one too many LARPs and lives alone."
The description of the helmet is "A grey plastic waste paper basket with eye slits cut into it and a hole for your mouth. It would fit snuggly and keep your head warm. It would provide a small amount of protection while making you look like an idiot at the same time."
The description of the umbrella is "The umbrella is blue with the LinkedIn logo. It is decently snazzy swag."
The description of the plate mail is "This armor is made of interlocking paper plates from the cafeteria. It would provide a small amount of protection while making you look ridiculous."
The basement ceiling is in the Basement Junction.
The basement floor is in the Basement Junction.
The basement walls is in the Basement Junction.
The description of the dungeon walls is "The walls are slick with water and slimy mold. It reminds you of your dormitory years."
The description of the dungeon ceiling is "You look at the ceiling and think beige, they should really paint the ceiling beige."
The description of the dungeon floor is "The floor is inlaid with arcane symbols. Upon closer inspection you realize that is actually binary code. You now have a better understanding of search algorithms." [gain 15 points when first looking at this]

[East of Dungeon Junction]
The Hallway Near The Dungeon Junction is east of The Dungeon Junction. "The hallway goes on for a long way. It is dimly lit and occasionally you hear whispers and mutterings, but when you look around there is nothing there. On your right you see an alcove[if the Stuffed Platypus is in the alcove] with a Stuffed Platypus in it[end if].".
The alcove is a container in The Hallway Near The Dungeon Junction.
The Stuffed Platypus is in the alcove.
The description of the Stuffed Platypus is "You see a cute stuffed platypus that smells of fresh laundry. "

[Rough hallway]
The Rought Hallway is east of The Hallway Near The Dungeon Junction. "The dungeon walls start to become less of stone and more of hard packed earth. Roots of plants brush against your face. The tunnel begins to slope upward."



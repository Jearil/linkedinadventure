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
Release along with an interpreter and cover art.
The display banner rule is not listed in the startup rulebook.

The Reception Area is a room.

Book 1 Setting up the World

Part 1 Making new Kinds

Chapter 1 Stuff

Understand "kick [something]" as attacking.

Section 2 Rules

Understand "ls" as looking.
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
		increase the score by 5;
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
	say "The streetlights cast a harsh glow on the shiny façade of the Qwerty Fizzbuzz company headquarters. You have no idea what they do—some fancy new telecommunications thing you saw on a billboard somewhere. You're only here because of your new client, Darwen Straus, some hotshot who just got thrown under the bus by his employers. 'Indefinite administrative leave', they called it. Something seems fishy. You've been in the private investigation business long enough to know that sometimes you put two and two together and get four…and sometimes you get twenty-two. It's time to get some answers.   [paragraph break]".;
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
A Glass Door is north of The Reception Area and south of The Elevator.
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
	if the receptionist carries the badge and the webcam is not on
	begin;
		say "The receptionist asks 'Of course, a badge.  Who are you meeting with?'";
		now the command prompt is "Person's name>";
	otherwise if the webcam is on;
		say "The receptionist says 'look into the webcam to get your badge'";
	otherwise;
		say "The receptionist says 'You already have a badge. What more do you want?'";
	end if.
	
after quizzing the receptionist about a badge:
	if the receptionist carries the badge and the webcam is not on
	begin;
		say "The receptionist narrows her eyes at you and says 'Yes, yes a badge already.  You're clearly not just loitering around our reception area so you must have a meeting.  Who are you meeting?";
		now the command prompt is "Person's name>";
	otherwise if the webcam is on;
		say "The receptionist says 'look into the webcam to get your badge'";
	otherwise;
		say "The receptionist says 'You already have a badge. What more do you want?'";
	end if.
	
after telling the receptionist about "Maximillion Warbucks":
	say "The receptionist looks at you for a moment and says 'Sure, let me get you a temp badge.  Please look at the webcam.'".;
	now a webcam is on.
after telling the receptionist about "Marge Tuckerberg":
	say "The receptionist looks at you for a moment and says 'Sure, let me get you a temp badge.  Please look at the webcam.'".;
	now a webcam is on.
after telling the receptionist about "Darwen Straus":
	say "The receptionist gives you a once over followed by the evil eye and says 'He's not here right now.  Are you meeting with someone else?".;
	now a webcam is off.

After reading a command when the command prompt is "Person's name>":
	if the player's command matches "max"
	begin;
		say "The receptionist looks at you for a moment and says 'Sure, let me get you a temp badge.  Please look at the webcam.'".;
		now a webcam is on;
		now the command prompt is ">";
	otherwise if the player's command matches "marge";
		say "The receptionist looks at you for a moment and says 'Sure, let me get you a temp badge.  Please look at the webcam.'".;
		now a webcam is on;
		now the command prompt is ">";
	otherwise if the player's command matches "Darwen";
		say "The receptionist gives you a once over followed by the evil eye and says 'He's not here right now.";
		now the command prompt is ">";
	otherwise;
		say "The receptionist looks at you confused and says 'I don't think they work here.'";
		now the command prompt is ">";
	end if;
	reject the player's command.

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

The Fancy Hallway is a room. "This hallway is really fancy. You're not sure you're dressed appropriately for such a hallway. It appears that more craftsmanship went into the floor trim than was applied to the entire building that you grew up in. Pictures on the wall feature people and still life. The area is bathed in a soft yellow light. An elevator rests in the southern wall. The hallway continues to the east."

The End Of The Hallway is a room. "The hallway ends at a large mahogany door on the eastern wall. A nameplate is attached to the wall beside it. In one corner, a janitor cart with rags, chemicals, brushes, and a garbage can has been left abandoned. The rest of the hallway is to the west."
The End Of The Hallway is east of The Fancy Hallway.
the nameplate is in The End Of The Hallway.
the nameplate is scenery.
the description of the nameplate is "The nameplate reads 'Maximillion Warbucks - CFO'.".
a janitor cart is in the End Of The Hallway.
the janitor cart is scenery.
Understand "cart" as the janitor cart. Understand "rag" as rags. Understand "brush" as brushes.
rags are on the janitor cart.
the description of the Janitor Cart is "The Janitor Cart has some rags, various chemicals, some brushes, and a garbage can on it.".
the chemicals are on the Janitor Cart. "Some basic cleaning chemicals.".
the indefinite article of the chemicals is "some".
the description of the chemicals is "Some basic cleaning chemicals. Not even really powerful enough to get food off of the carpet.".
brushes are on the janitor cart.
the garbage can is on the janitor cart.
the garbage can is not portable.
the garbage can is a container.
the description of the garbage can is "A grey garbage can with a black bag.".
the janitor keys are on the janitor cart.
the janitor keys are hidden.

After examining the janitor cart for the first time:
	reveal the janitor keys.;
	say "You also see some janitor keys on the cart."
	
the mahogany door is a door.
the mahogany door is scenery.
the description of the mahogany door is "This large door is made of solid mahogany. In contrast with the higher-tech badge system used on the front door, this door features a simple keyhole attached to what you assume is a dead-bolt.".
the mahogany door is east of The End Of The Hallway and west of The Office of the CFO.
the mahogany door is lockable and locked.
the janitor keys unlocks the mahogany door.

Section 3 CFO Office

The Office of the CFO is a room. "This office is large and spacious. The carpet is a deep red, while the walls are a pale tan. Soft yellow light emmits from the fixtures overhead. It features a broad mahogany desk with a slim silver computer off to one side. A series of filing cabinets lines the south wall. A large mahagony door is set in the west wall.".
the carpet is in the Office of the CFO.
the description of the carpet is "This red carpet is rich and plush. The color is unsettling, as you are reminded of blood just by looking at it.".
the carpet is scenery.
the fixtures are in the Office of the CFO.
the fixtures are scenery.
the mahogany desk is in the Office of the CFO.
the mahogany desk is scenery.
the description of the mahogany desk is "A broad mahogany desk sits in the center of the room. On it is an expensive looking silver computer. On one side of the desk there is a drawer";
the drawer is part of the mahogany desk.
the cube is in the drawer. "A small metallic cube.".
The description of the cube is "A small metallic cube. There are weird engravings on one side.".
the drawer is a closed container.
the drawer is openable.
the slim silver computer is on the mahogany desk.
the slim silver computer is scenery.
A password protected computer is kind of thing.
A password protected computer can be protected or unprotected.
A password protected computer is usually protected.
A slim silver computer is a password protected computer.
Filing cabinets are in the Office of the CFO.
Filing cabinets are scenery.
Filing cabinets are a container.
The description of the filing cabinets is "A series of metal cabinets that most likely contain a lot of paper files.".
the filing cabinets are lockable and locked.

Instead of examining the slim silver computer:
	if the slim silver computer is protected
	begin;
		Say "The computer screen has a prompt for a password on it.";
		now the command prompt is "Password? >";
	otherwise;
		Say "An email is displayed:[paragraph break]";
		Say "To: Maximillion Warbucks <bigmoney@qwertyfizzbuzz.com>[line break]";
		Say "From: Dr. Edward Drolkrad <edrolkrad@qwertyfizzbuzz.com>[line break]";
		Say "Subject: Supplies[paragraph break]";
		Say "Mr. Warbucks,[paragraph break]";
		Say "Supplies are running low in cage. The damage that Darwin caused is setting us back pretty far. He should be taken care of. ";
		Say "I'll work with Marge to handle that. The next set of results is waiting for you in the drop box in the basement.[paragraph break]";
		Say "Sincerely,[line break]";
		Say "Dr. Drolkrad";
	end if.

After reading a command when the command prompt is "Password? >":
	if the player's command matches "money":
		now the slim silver computer is unprotected;
		say "Correct!";
		say "The computer unlocks and displays what the CFO was last looking at.";
		now the command prompt is ">";
		increase the score by 10;
	otherwise:
		say "Incorrect!";
		now the command prompt is ">";
	reject the player's command.


Section 4 Elevator

Elevator button is a kind of door.
Elevator button is always open.

The Elevator is a room. "Before you is a pair of ominous silver metal sliding door sealed tightly. On the right hand side are two glowing buttons. A soft feminine voice says 'Please make your selection from the following menu.'".
the panel is in The Elevator. "A metal panel with buttons".
The description of the panel is "A metal panel contains tow glowing buttons. One is labeled 'Up', while the other is mysteriously labled 'Dance'. Below these buttons is a small square hole about 1 inch on each side and one half inch deep.".
the square hole is on the panel.
The square hole is a container.
The square hole is scenery.
The description of the square hole is "This square hole doesn't seem to have much of a purpose.".
Up Button is an Elevator button.
The Up Button is not openable.
The Up Button is scenery.
Up Button is above The Elevator.
Through it is The Fancy Hallway.
The Elevator is south of The Fancy Hallway.
Dance Button is in The Elevator.
The Dance Button is scenery.

A Secret Door is a door.
A Secret Door is north of The Elevator and south of the Top of Stairs.
A Secret Door is hidden.

the terminal is in The Elevator.
the terminal is fixed in place.
the terminal is hidden.

Instead of examining the terminal:
	if A Secret Door is hidden
	begin;
		say "This terminal is password protected.[Line Break]Please enter authorization[Paragraph Break]";
		now the command prompt is "Authorization code>"; [moxie]
	otherwise;
		say "The terminal has gone blank";
	end if.

After reading a command when the command prompt is "Authorization code>":
	if the player's command matches "moxie":
		reveal A Secret Door;
		say "A panel on the back of the elevator slides away to reveal a secret door.";
		say "The terminal powers down.";
		increase the score by 10;
		now the command prompt is ">";
	otherwise:
		say "Access Denied!"; [fail 3 times message?]
		now the command prompt is ">";
	reject the player's command.

Section 5 The Basement

Top of Stairs is a room. "Suprisingly, a small landing resides on the other side of the elevator. There is a stairway leading down. The walls and floor are grey concret and not very inviting."
Stair is a kind of door.
Stair is always open.
Stair is not openable.
Stair is never locked.
A rough stairway is a stair.
A rough stairway is scenery.
Understand "stairs" and "stair" as the rough stairway.
The rough stairway is below Top of Stairs and above The Basement.

The Basement is a room. "A 10' by 10' concrete unfurnished room lies at the bottom of a set of stairs. In the eastern wall is a steel door with a push bar.".
steel door is a door.
The steel door is east of The Basement and west of The Breakroom.
The description of the steel door is "A sturdy door made of steel which has a push bar across the middle."
A push bar is part of the steel door.
The description of the push bar is "It's a push bar. It's umm.. used to open a door. By.. you know.. pushing on it. This isn't really all that complicated.".
	
Instead of pushing the push bar:
	say "You push on the bar, fulfilling it's ultimate purpose";
	increase the score by 5;
	move the player to The Breakroom.

After going to The Breakroom for the first time:
	say "There's an audible click as the steel door locks behind you.";
	now the steel door is locked.

Section 6 The Breakroom

The Breakroom is a room. "This room is dimly lit and smells of fear and desperation. The place is furnished with a sofa, numerous arm chairs, and some video games from a by-gone era. A pile of National Geographic magazines from 15 years ago are piled on a table in the center of the room. A hallway to the north seems to lead to a kitchen. To passage to the south has a red ominous glow. To the east you hear the sounds of typing".
The sofa is in the Breakroom.
The sofa is scenery.
numerous arm chairs are in the Breakroom.
the arm chairs are scenery.
video games are in the Breakroom.
video games are scenery.
Some magazines are in the Breakroom.
The magazines are scenery.
The Kitchen is north of The Breakroom.
Cubopolous is east of The Breakroom.
The Server Racks is south of The Breakroom

Section 7 Grue
[High Five Area]

The Server Racks is a room.  "You are in a room full of computer servers. The noise is deafening and the heat almost unbearable. A huge mainframe sits in the center of the room with wires coming out and snaking along the floor like streams of life. At the far end of the room is a circular door with a bright red exit sign on it. Standing in front of the door with a hand raised, palm out in front of you is a Grue. To the north is the breakroom.".
The circular door is a door.
The circular door is scenery.
The circular door is south of The Server Racks and north of Fin.
The circular door is lockable and locked.
The Grue is in the Server Racks.
The description of the Grue is "Your standard Grue is standing in the Server Racks[if the grue is sad] with his arm raised and hand open[end if].  In his other hand you see a coffee mug with '#1 Grue' written on it.  He's looking at you expectantly.".
The Grue is a person.

[High five rules for grue]

Check High Fiving:
	if the grue is happy and the noun is the grue
	begin;
		say "There's an uncomfortable pause and the Grue coughs quietly.[paragraph break]You were eaten by a Grue.";
		end the story.;
	end if.

After High Fiving:
	if the noun is the grue
	begin;
		say "After a nod indicating that he knows your true intention, the Grue turns around and presses a few buttons on a secret panel next to the circular door. After a moment you notice steel bars retract and the door unlocks.";
		now the circular door is unlocked;
	end if.
		

[End High Five Area]

Section 8 The End

Fin is a room. "This is the end."

Instead of entering Fin:
	end the story finally saying "You have completed the story".


[rules for cube]
Instead of inserting a cube into a square hole:
	reveal the terminal.;
	say "After inserting the cube into the matching hole, a small terminal flips down from the wall next to you".

[ Rules for buttons ]
Before going from The Elevator to The Fancy Hallway:
	say "The button lights up and chimes softly. The elevator quietly ascends.".

Instead of pushing an elevator button:
	try going the noun.

Instead of pushing the Dance Button:
	say "The elevator begins playing a muzak version of Gangnam Style. You half-heartedly dance in place and sing along."

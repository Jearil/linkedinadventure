"LinkedInAdventure" by "Colin Miller, Julie Meridian, Edward Goldstein, Jemiah Westerman, and Jonathan Newton."
The story headline is "An interactive adventure featuring the wonders of LinkedIn".
The story genre is "Action-Adventure".
The release number is 1.
The story description is "This is an adventure about the LinkedIn experience. One might also consider it a commentary on life in general."
The story creation year is 2012.

Include Basic Screen Effects by Emily Short.
Include Conversation Framework by Eric Eve.
Release along with an interpreter and cover art.

The Reception Area is a room.

Book 1 Setting up the World

Part 1 Making new Kinds

Chapter 1 Stuff

Section 1 Defining a Link

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

Section 2 Rules

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

Logging out is an action applying to nothing.
Understand "logout" as Logging out.

A first check dropping rule (this is the you can't drop stuff when online rule):
	if location of the player is in The Online Area
	begin;
		say "You fumble for a bit and your cell phone beeps sadly. You decide to not drop [the noun] until you log off.";
		stop the action.;
	end if;

Check logging out:
	if location of player is not in The Online Area
	begin;
		say "You can't logout of life. Sorry.";
		stop the action.;
	end if;

Carry out logging out:
	move player to before login of the player.

The Online Area is a region.

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
	
[End reception area][Connecting]
[to do: make this only work on the phone]
Connection relates one person to another.
The verb to connect (he is connected to, they are connected to, he connected to, it is connected to, he is connected to) implies the connection relation.

Connecting is an action applying to one thing.
Understand "connect with [something]" or "connect to [something]" as connecting.

Check connecting:
	if noun is not a person
	begin;
		say "Good luck connecting with that!".;
		stop the action.;
	end if.
Carry out connecting:
	if the player is connected to noun
	begin;
		say "You've already connected to [noun].".;
	otherwise;
		say "You connect with [noun] on LinkedIn!".;
		now the player is connected to noun.;
		increase score by 5.;
	end if.

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
    
Chapter 2 Equiping the Player

The player has some text called has clicked on.
The player's full name is an indexed text that varies.
The has clicked on is usually "No".

Section 1 Cell Phone

The player has a room called before login.
The player is carrying a device called a Cell Phone.
The cell phone is switched on.
The description of the Cell Phone is "In this day and age, the cell phone is indispensable. On the cellphone is the LinkedIn app."

An app is a kind of thing.

Carry out switching off cell phone:
	now The description of the Cell Phone is "A lonely dark display stares back at you."
Carry out switching on cell phone:
	now The description of the Cell Phone is "In this day and age, the cell phone is indispensable. On the cellphone is a button for the LinkedIn app."
	
The LinkedIn Application is part of The Cell Phone.
The LinkedIn Application is an app.

[push and use cell]

Section 2 Touching (apps)

To Login To Linkedin:
	if the location of the player is in the online area
	begin;
		say "You're already online.";
	otherwise;
		say "You open up the LinkedIn Application.";
		now the before login of player is the location of the player;
		move player to The LinkedIn Homepage.;
	end if.

Instead of touching The LinkedIn Application:
	Login To Linkedin.

Section 3 Additional actions for phone

Activating is an action applying to one thing.
Understand "use [something]" as activating.

Carry out activating an app:
	Login To LinkedIn.
	
Carry out activating the cell phone:
	Login To LinkedIn.

Instead of opening the cell phone:
	Login To LinkedIn.

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

Part 3 Recruting The Team

Chapter 1 The Rooms

The Darkness is a room. "You stand (float?) in what seems to be an empty black void. Your life feels somewhat hallow, as if there's been something missing that you can't quite identify. A dim light receeds to the north, a faint glimmer of hope amidst the darnkess. [paragraph break]You are likely to be eaten by a Grue."
Enlightenment is a room. "Clarity fills your mind as you realize your sole purpose in life is to create an interactive fiction (just like this!) about LinkedIn. You're really not sure where it will go or what it will contain but you feel compelled to pour your life essense into this project. You imagine the rewards will be astounding. The feeling of pure joy of having reached this conclusion is enough to bring a tear to your eye. You try to hold it back, yet fail.[paragraph break] To the east is a Vahalla where you can meet your fate. To the West is a pit of snakes. (You probably don't want to go there)."
The Light is a door.
The Light is open.
The Light is scenery.
The Light is north of The Darkness and south of Enlightenment.
[A Grue is in the darkness.
A Grue is scenery.]

[Instead of doing anything to the Grue:
	say "Why would you want to do that to a grue? They're dangerous you know."]

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

Chapter 2 The Rules

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

Book 2 The World

Part 1 Online

Chapter 1 LinkedIn

The LinkedIn Homepage is a room.
The LinkedIn Homepage is in The Online Area.
The exit button is a link.
The exit button is west of the Login Screen.
Through it is the Holding Area.

Carry out going to the Holding Area:
	move the player to the before login of the player.

The logout button is a link.
The logout button is south of the LinkedIn Homepage.
Through it is the Login Screen.

A soft taco is in the LinkedIn Homepage.
The taco is edible.
The description of the taco is "This taco is made of tasty meat and cheese with a tortilla curled around it."

Part 2 Real World

Chapter 1 Office Building

Section 1 Reception Area

[Reception Area]
The Reception Area is a room. "You are standing in the middle of a large room with vaulted ceilings. The walls are painted a pleasing shade of blue and decorated with a multitude of posters. There is a half-empty water cooler in the corner and a few chairs strewn about. The receptionist is sitting at a large desk and is working on her computer.."
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
say "The receptionist looks at you, puts on a giant fake smile and says 'Hello and welcome to Frobozz, how may I help you?'".
After saying hello to the receptionist:
say "The receptionist makes a soft sighing sound before saying 'Yes?'.  She looks a little irritated.".

After saying goodbye to the receptionist:
	say "The receptionist goes back to her computer.".
[default ask-tell response for the receptionist:
	say "The receptionist stares at you blankly looking a little confused.".
default ask-for response for the receptionist:
	say "The receptionist sighs heavily and says 'Why do people always ask for stuff?  I don't have anything to give.'".]
after quizzing the receptionist about a badge for the first time:
	say "The receptionist asks 'Do I know you?  We're not even connected on LinkedIn.'".

after quizzing the receptionist about a badge:
if the player is connected to the receptionist
begin;
say "The receptionist says 'I see we're connected on LinkedIn!  Let me get you a temp badge.  Please look at the webcam.'".;
now a webcam is on.;
otherwise;
say "The receptionist looks at you sternly and says 'Look, I don't give badges out to just anyone.  Either we're connected on linkedin it or we're not.'".;
end if.
after quizzing the receptionist about the water cooler:
say "The receptionist says 'Yeah, the water's free.  Help yourself.".
[end get the badge]

[To do: add a swipe action]
[When the door is not locked the description of A card reader is "It’s a black box with a glowing green light.  Green probably means the door is unlocked.".]

The posters are in The Reception Area.
The posters are scenery.
The description of the posters is "The posters are pretty boring.  Some motivational crap that isn't really motivating you to keep looking at the posters.".
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

The Fancy Hallway is a room. "This hallway is really fancy. You're not sure you're dressed appropriately for such a hallway. It appears that more craftsmanship went into the floor trim than was applied to the entire building that you grew up in. Pictures on the wall feature people and still life. The area is bathed in a soft yellow light. At the east end of the hallway is the High Five Zone."

[High Five Area]

The High Five Zone is a room.  "You are in the high five zone of the fancy hallway.  Apart from the standard fancy here is a poster with the title 'High Fives Saves Lives' on the wall.  A few feet away from you is a Grue with his hand up looking at you expectantly.".
The high five poster is in the High Five Zone.
The high five poster is scenery.
The description of the high five poster is "This poster has 'High Fives Saves Lives in huge letter.  Under the title are detailed instructions on how to give a high five.  There is a small mention about high fiving Grues but most of it is blacked out by black marker.".
The High Five Zone is east of the Fancy Hallway.
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

Section 3 Holding Area

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

Section 4 Elevator

Elevator button is a kind of door.
Elevator button is always open.

Outside Of The Elevator is a room. "Before you is a pair of ominous silver metal sliding door sealed tightly. On the right hand side are four glowing buttons. A soft feminine voice says 'Please make your selection from the following menu.'"
Up Button is an Elevator button.
The Up Button is not openable.
Up Button is above The Outside Of The Elevator.
Through it is The Fancy Hallway.
Outside Of The Elevator is below The Fancy Hallway.
Down Button is an Elevator button.
The Down Button is not openable.
Down Button is below The Outside Of The Elevator.
Through it is The Basement Junction.
Outside Of The Elevator is above The Basement Junction.
Dance Button is in The Outside Of The Elevator.
Connect Button is in The Outside Of The Elevator.

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



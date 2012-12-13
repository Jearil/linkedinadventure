"LinkedInAdventure" by Colin Miller

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
	
Chapter 2 Modifying Current Things

Instead of swearing obscenely: say "Potty mouth."

Part 2 The World

Chapter 1 Login

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

A taco is in the LinkedIn Homepage.
The taco is edible.
The description of the taco is "This taco is made of tasty meat and cheese with a tortilla curled around it."

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




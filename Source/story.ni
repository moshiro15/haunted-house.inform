"haunted house" by Melissa Oshiro

When play begins:
	Say "As a dare, your friends tell you to walk through an acclaimed haunted house and open the upstairs window to prove you made it through. You stand inside the house's main room. The door closes behind you."

the description of the player is "You are a giant crab."

rule for deciding whether all includes something:
	stop.

Rule for printing a parser error when the latest parser error is the nothing to do error:
	say "Yo man only one thing at a time." instead.

flashlight is a device carried by player. snickers bar is a thing carried by player.
Description of flashlight is "A small black flashlight." The flashlight is unlit.

After switching on the flashlight:
	say "Now that your flashlight is on, you feel safer, but also like a character in a scary movie.";
	now the flashlight is lit.
description of snickers bar is "A jumbo-sized snickers bar. Just in case."

Main room is a room. main room is a dark room. "A large dusty room with couches in the middle and a few shelves pressed against the walls. A small chandelier hangs from the ceiling. To the West, North, and East are dark hallways."

East Hall is a room. east hall is a dark room. East Hall is east of main room. "You see a door at the end of the hall."

Office-door is east of east hall. understand "door" as office-door.
Office-door is a door. [East door is undescribed.] office-door is locked. office-door is lockable. office-key unlocks office-door. 

office is a dark room.
office is east of office-door. 
description of office is "A small room with a tacky rug spread on the floor."

cabinet is a closed openable container. cabinet is in office. 
description of cabinet is "dusty." 

kitchen-key is a thing. understand "key" as kitchen-key. kitchen-key is in cabinet. kitchen-key unlocks kitchenn door.

Understand "East hall door" as door.

West Hall is a room. west hall is a dark room. West hall is west of main room. "You see an open door at the end of the hall. A dim light seems to be coming from inside the room."

		
Library is a room. Library is west of west hall. "The library's walls are filled with books. You see a desk with a lit candle in the middle of the room. Weird, this house is supposed to be deserted."

walls is scenery. walls is in library. description of walls is "Books of all sizes fill the bookcases imbedded in the walls. None of them stand out to you."

library desk is a supporter in library. understand "desk" as library desk. library desk is scenery. candle is undescribed. key is undescribed. matches is undescribed.

desk drawer is a closed openable container. understand "drawer" as desk drawer. desk drawer is part of library desk. 

		
candle is a device. candle is unlit. candle is on library desk. description of candle is "a white five-inch candle. It's dusty and gross." 

After switching on the candle:
	say "Your lit candle casts an eerie glow around you. Its light is not that strong, so be wary of your surroundings.";
	now the candle is lit.

Description of library desk is "An old wooden desk with a single drawer that seems to be unlocked. [if candle on library desk] A key and matches sit next to the lit candle."

office-key is a thing. understand "key" as office-key. office-key unlocks east door. office-key is on library desk. description of office-key is "a large brass key"

matches is a thing. matches is on library desk. description of matches is "A small box that holds two matches."


Instead of opening desk drawer: say "A severed hand jumps out at you and grabs your arm. You try to beat it away with your flashlight, but it grabs the flashlight instead. You drop it and run.";
remove flashlight from play;
move player to west hall.

North hall is a room. north hall is a dark room. north hall is north of main room. "Three doorways are in this hall. The doorway to the west opens to a dining room, the door to the east seems to be a kitchen, and there is a mysterious door at the end of the hall."

Dining room is a room. dining room is a dark room. Dining room is a dark room. Dining room is west of north hall. "A long table that seats ten people sits in the middle of the room. A dusty chandelier hangs from the ceiling and a carpet lines the floor."

Dining-table is a thing. Dining-table is in dining room. dining-table is not portable. description of Dining-table is "A solid mahogany table. Very dusty." 
Mirror is a thing. mirror is in dining room. Description of mirror is "An oval-shaped mirror with a gold frame. In the dusty reflection, it looks like a figure is standing behind the table in back of you."

[how to make kitchen door openable]
Kitchenn door is a door. Kitchenn door is east of north hall. Kitchenn door is a lockable locked door.
kitchen is a room. kitchen is a dark room. kitchen is east of kitchenn door. "Counters run along the north and east walls. Two sinks are on the north wall, a refrigerator is on the east wall, and an oven and stove on the west wall. A knife sits on the north counter, next to the sinks."

refrigerator is a closed openable container. refrigerator is in kitchen. refrigerator is not portable.

description of refrigerator is "A standard one-door refrigerator. It's starting to rust."

knife is a thing. knife is in kitchen. knife is undescribed. description of knife is "A large cleaver that is particularly shiny. When you hold it up, you see something dark move behind you in its reflection."

Demon head is a person. demon head is in refrigerator. description of demon head is "A strange monsterous-like head that is decomposing. It reeks and you almost puke, but you see something shiny in its mouth. A key?"

Every turn:
	if refrigerator is open:
		if player is carrying snickers bar:
			Move demon head to the location of the player;
			say "The demon head floats and follows you. It looks hungry??".


attic-key is a thing. attic-key is undescribed. understand "key" as attic-key. demon head is holding attic-key. attic-key unlocks mysterious door.

Instead of giving snickers bar to demon head: say "You place the snickers bar in the mouth of the demon head and it spits a rusty key back out at you.";
	remove snickers bar from play;
	remove demon head from play;
	move attic-key to player.

Mysterious door is a door. mysterious door is undescribed. Mysterious door is north of north hall. mysterious door is lockable and locked.

stairs is up of north hall and above north hall. stairs is an open door.

Attic is a room. attic is a dark room. window is in attic. window is a closed openable container. attic is up from stairs.
description of attic is "A dark room that seems to be full of abandoned things like couches and stuff. the moon comes through the window and casts shadows across the room."


after opening the window:
		end the story finally saying "When you open the window, you see a dark shadow move behind you in the reflection of the glass. You turn around to look and see a dark shadowy figure standing before you. It opens its mouth and eats your head. 
		THE END."


	
		








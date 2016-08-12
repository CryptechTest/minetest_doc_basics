doc.new_category("basics",
{
	name="Basics",
	build_formspec = doc.entry_builders.text,
})


doc.new_entry("basics", "minetest", {
	name="Minetest",
	data =
[=[Minetest is a free software game engine to create various games based on voxel gameplay, inspired by InfiniMiner, Minecraft, and the like. Minetest was originally created by Perttu Ahola (alias “celeron55”).

The basic idea of each game is always the same: The player is thrown into a huge world made out of cubes/blocks. Most of the time, these cubes make the landscape and these blocks can be removed and placed almost entirely freely. Using the collected items, new tools and other items can be crafted. Games (“subgames” in Minetest terms) in Minetest can, however, be much more complex than this.

A core concept of Minetest is a built-in modding capability, based on the Lua programming language. Mods allow one or more certain aspects of an existing game to be modified. Minetest mods can be as simple as adding a few decorational blocks or very complex by (for example) introducing complex new gameplay concepts or generating a completely different kind of world, and many other things. For the player, using a new mod requires to copy or extract some files into a certain location and pressing some buttons in Minetest's interface.

Minetest can be played alone or online together with multiple players. When playing online, from the player perspective all mods will work out of the box with no need for additional tools as they are entirely provided by the server.

Minetest is usually bundled with a simple default game, named “Minetest Game”. You probably already have it. Other games for Minetest can be downloaded from the official Minetest forums xhttps://forum.minetest.net/viewforum.php?f=48x.

Minetest as well as Minetest Game are both unfinished at the moment, so please forgive us when not everything works out perfectly.]=]
})

doc.new_entry("basics", "movement", {
	name="Basic movement",
	data = [=[Basic movement:
• Moving the mouse around: Look around
• W: Move forwards
• A: Move to the left
• D: Move to the right
• S: Move backwards
• Space: Jump

Hints:
• Normally, you can jump just high enough to reach a block slightly above.
• Unless you're very slow, you may walk over tiny gaps without jumping.]=]
})

doc.new_entry("basics", "sneak", {
	name="Sneaking",
	data=
[=[Sneaking is a special move. As long as you sneak, you walk slower, but you are guaranteed to not accidentally fall off the edge of a block. This also allows you to “lean over” in a sense.
To sneak, keep the sneak key pressed. As soon as you release the sneak key, you walk at normal speed again. Be careful not releasing the sneak key when you are at a ledge, you might fall!

• Sneak: [Shift]

Keep in mind that the [Shift] key is used for a large number of other things in Minetest. Sneaking only works when you are not in a liquid, stand on solid ground and are not at a ladder.

If you jump while holding the sneak key, you also jump slightly higher than usual.

Note that in some subgames, sneaking might be disabled. If this is the case, you still walk slower by sneaking, but you will no longer be prevented from falling off ledges.]=]
})

doc.new_entry("basics", "controls", {
	name="Controls",
	data = [=[Controls in Minetest are somewhat tricky and not everything can be configured. This entry lists all default controls in Minetest:

Basic movement:
• Moving the mouse around: Look around
• W: Move forwards
• A: Move to the left
• D: Move to the right
• S: Move backwards

While standing on solid ground:
• Space: Jump
• Shift: Sneak (You walk slower and can't fall over the edge of a block) 

While on a ladder, swimming in a liquid or fly mode is active
• Space: Move up
• Shift: Move down 

Extended movement (requires privileges):
• J: Toggle fast mode, makes you run or fly fast (requires “fast” privilege)
• K: Toggle fly mode, makes you move freely in all directions (requires “fly” privilege)
• H: Toggle noclip mode, makes you go through walls in fly mode (requires “noclip” privilege)
• E: Walk fast in fast mode

World interaction:
• Left mouse button: Punch, mine blocks or collect dropped items
• Right mouse button: Use pointed block if applicable (e.g. open chest); build blocks otherwise
• Shift+Right mouse button: Build blocks without using pointed block
• Roll mouse wheel: Select next/previous item in hotbar
• 0-9: Select item in hotbar directly
• Q: Drop entire wielded itemstack
• Shift+Q: Drop single item of wielded itemstack
• I: Show/hide inventory menu 

Inventory interaction:
See the entry “Inventory”.

Interface:
• Esc: In the game: Opens menu window (pauses in singleplayer) or close current window. In the main menu: Quit Minetest.
• F1: Show/hide HUD
• F2: Show/hide chat and the “Minetest” text at the top left
• F7: Toggle camera mode
• F8: Toggle cinematic mode
• F9: Toggle minimap, minimap mode and zoom
• Shift+F9: Toggle minimap shape (square or circle)
• F10: open/close console/chat log
• F12: Take a screenshot (as a PNG image) 

Server interaction:
• T: Open chat window (You require the “shout” privilege to chat.)
• /: Start issuing a server command 

Technical:
• R: Toggle far view (disables all fog and allows viewing far away, may cause massive FPS drop)
• + (numpad)**: Increase minimal viewing distance
• - (numpad)**: Decrease minimal viewing distance
• F3: Enable/disable fog
• F5: Enable/disable debug screen which also shows your coordinates
• F6: Only useful for developers. Enables/disables profiler
• P: Only useful for developers. Writes current stack traces]=]
})

doc.new_entry("basics", "players", {
	name="Players",
	data=
[=[Players (actually: “player characters”) are the characters which user control.

Players are mortal beings which occupy a space of roughly 1×2×1 cubes and start with 20 health points (often, but not always represented by 20 “half hearts”) and 10 breath points (often represented by bubbles).

Players can take damage for a variety of reasons, here are some:
• Taking fall damage
• Touching a block which causes direct damage
• Drowning
• Being attacked by another player
• Being attacked by a computer enemy

At a health of 0, the player dies after which the player can just respawn in the world, usually somewhere else.
Other consequences of death vary wildly between subgame. The player could lose all items, or lose the round in a competitive game.

Breath is usually hidden unless it is reduced for being with the head inside some block which causes drowning. Such blocks reduce the breath by 1 for every 2 seconds and start to cause damage every 2 seconds when the player has lost all breath. As soon as player is outside of blocks that cause drowning, the breath points are very quickly restored.

Damage can be disabled on any world. Without damage, players are basically immortal. Health and breath don't play a role anymore and are hidden.]=]})

doc.new_entry("basics", "tools", {
	name="Tools and weapons",
	data=
[=[Some items may serve as a tool, melee weapon or both when wielded.

Any item which has some special use which can be directly used by its wielder is considered a tool.

A common tool in Minetest are, of course, mining tools. These are important to break all kinds of blocks.

Other tools with special uses (usually accessed by punching or rightclick) may also be introduced.

Melee weapons deal damage by punching players and possibly other animate objects.

For melee weapons, another attribute is important: The full punch interval. This is basically the time it takes for completely recovering from a punch with this weapon. 
A melee weapon only deals its full damage when it has completely recovered. This can be seen by the animation of the wielded item. As long it is still moving, the full punch interval is not over yet. The full punch interval does not limit how fast one can deal punches, it rather limits the damage: Any hit done before the end of a full punch interval will deal reduced damage.

When nothing is wielded, players use their hand which may or may not act as mining tool and melee weapon (depending on the subgame). The hand is always capable of collecting dropped items simply by punching them.]=]
})



doc.new_entry("basics", "cam", {
	name="Camera",
	data = 
[=[Minetest has 3 different views which determine the way you see the world. The modes are:

• First-person view (default)
• Third-person view from behind
• Third-person view from the front

You can change the camera mode by pressing [F7] (but you have to close this window first).

There is also Cinematic Mode which can be toggled with [F8]. Normally, the camera moves instantly as you move your mouse around. With Cinematic Mode enabled, the camera movements become more smooth. Some players don't like it, it is a matter of taste.

• Switch camera mode: [F7]
• Toggle Cinematic Mode: [F8]]=]
})

doc.new_entry("basics", "blocks", {
	name="Blocks",
	data=
[=[The world of Minetest is made entirely out of blocks, or voxels, to be precise. Blocks can be added or removed with the correct tools.

Blocks can have a wide range of different properties which determine mining times, behaviour, looks, shape, and much more. These are the most important attributes:

• Collidability: With collidable blocks block the way for players and other things, they cannot be passed through and they are walked upon by players. Non-collidable blocks can be passed through freely.
• Pointability: Pointable blocks will show a wireframe or a halo box when you point at them. But you will just point through non-pointable blocks as if they were not there. Liquids are usually non-pointable but they can be pointed at by some special tools.
• Mining properties: Mining properties determine by which tool a block can be mined (if at all).
• Climbability: While you are at a climbable block, you won't fall and you can climb and decent on it with the jump and sneak keys. Ladders are one example.
• Group memberships: Blocks may be a member of any number of groups. Groups are used to group similar items and blocks together. Most importantly, group memberships are used for mining. They are also used for many other purposes like crafting or interactions between blocks.
• Liquids: See the entry “Basics > Liquids”.]=]
})

-- TODO
doc.new_entry("basics", "craft", {
	name = "Crafting",
	data =
[=[Crafting is the task of taking several items and combining them to form a new item. Crafting is another important task in Minetest.

To craft something, you need a few items and a so-called crafting grid.

TO BE WRITTEN.]=]
})

doc.new_entry("basics", "minimap", {
	name="Minimap",
	data = 
[=[Press the [F9] key to make a minimap appear on the top right. The minimap helps you to find your way around the world. Press it again to toggle through different minimap modes and zoom levels.

There are 2 minimap modes and 3 zoom levels.

Surface mode is a top-down view of the world, roughly resembling the colors of the blocks this world is made on. It only shows the topmost blocks, everything below is hidden, like a satellite photo. Surface mode is useful if you got lost.

Radar mode is more complicated. It displays the “denseness” of the area around you and changes with your height. Roughly, the more green an area is, the less "dense" it is. Black areas have many blocks. Use the radar to find caverns, hidden areas, walls and more.

There are also two different direction modes. Normally, “up” on the minimap is always pointing to the North. But if you press [Shift]+[F9], the minimap will instead rotate with your looking direction, so “up” is always your looking direction.

In some subgames, the minimap may be disabled.

• Toggle minimap mode: [F9]
• Toggle minimap rotating: [Shift]+[F9]]=]
})

doc.new_entry("basics", "inventory", {
	name="Inventory",
	data = 
[=[An inventory is primarily used to store item stacks. There are other uses, such as crafting. An inventory consists of a rectangular grid of item slots. Each item slot can be either empty or hold one item stack. Item stacks can be moved freely between slot and slot, given that the destination slot is either empty or of the same item type.
You have your own inventory which is called your “player inventory”, you can open it with the inventory key (default: [I]). The first inventory slots are also used as slots in your hotbar.
Blocks can also have their own inventory, for example, things like chests and furnaces.

Inventory controls:

Taking: You can take items from an occupied slot if the cursor holds nothing.
• Left click: take entire item stack
• Right click: take half from the item stack (rounding up if uneven)
• Middle click: take 10 items from the item stack 

Dropping: You can drop items onto a slot if the cursor holds 1 or more items and the slot is either empty or contains an item stack of the same item type.
• Left click: drop entire item stack
• Right click: drop 1 item of the item stack
• Middle click: drop 10 items of the item stack 

Exchanging: You can exchange items if the cursor holds 1 or more items and the destination slot is occupied by a different item type.
• Left, middle and right click: exchange item stacks from cursor and from selected item slot 

Throwing away: If you hold an item stack and click with it somewhere outside the menu, the item stack gets thrown away into the environment.

Quick transfer: You can quickly transfer an item stack to/from the player inventory to/from another item's inventory slot like a furnace, chest, or any other item with an inventory slot when that item's inventory is accessed. The inventories chosen for quick transfer are context-dependent, usually those are the inventories which are considered to be most useful in this context.
• Sneak+Left click: Automatically transfer item stack.]=]
})

doc.new_entry("basics", "online", {
	name="Online help",
	data = 
[=[You may want to check out these online resources related to Minetest:

Official homepage of Minetest: <http://minetest.net/>
The main place to find the most recent version of Minetest.

Community wiki: <http://wiki.minetest.net/>
A community-based documentation website for Minetest. Anyone with an account can edit
it! It also features a documentation of the default game, which was NOT covered by
this tutorial.

Webforums: <http://forums.minetest.net/>
A web-based discussion platform where you can discuss everything related to Minetest. This is also a place where player-made mods and subgames are published and discussed. The discussions are mainly in English, but there is also space for discussion in other languages.

Chat: <irc://irc.freenode.net#minetest>
A generic Internet Relay Chat channel for everything related to Minetest where people can meet to discuss in real-time. If you do not understand IRC, see the Community Wiki for help.]=]
})



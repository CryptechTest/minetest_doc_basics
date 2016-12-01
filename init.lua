doc.new_category("basics",
{
	name="Basics",
	description = "Everything you need to know about Minetest to get started with playing",
	sorting = "custom",
	sorting_data = {"minetest", "controls", "sneak", "cam", "minimap", "players", "inventory", "hotbar", "tools", "blocks", "liquids", "craft", "cook", "groups", "settings","glossary", "online"},
	build_formspec = doc.entry_builders.text_and_gallery,
})

doc.new_category("online",
{
	name="Online multiplayer",
	description = "Help about playing online with other players",
	sorting = "custom",
	sorting_data = {"intro", "commands", "privs"},
	build_formspec = doc.entry_builders.text,
})

doc.new_entry("basics", "minetest", {
	name="Minetest",
	data = {
		text =
[=[Minetest is a free software game engine to create various games based on voxel gameplay, inspired by InfiniMiner, Minecraft, and the like. Minetest was originally created by Perttu Ahola (alias “celeron55”).

The basic idea of each game is always the same: The player is thrown into a huge world made out of cubes/blocks. Most of the time, these cubes make the landscape and these blocks can be removed and placed almost entirely freely. Using the collected items, new tools and other items can be crafted. Games (“subgames” in Minetest terms) in Minetest can, however, be much more complex than this.

A core concept of Minetest is a built-in modding capability, based on the Lua programming language. Mods allow one or more certain aspects of an existing game to be modified. Minetest mods can be as simple as adding a few decorational blocks or very complex by (for example) introducing complex new gameplay concepts or generating a completely different kind of world, and many other things. For the player, using a new mod requires to copy or extract some files into a certain location and pressing some buttons in Minetest's interface.

Minetest can be played alone or online together with multiple players. When playing online, from the player perspective all mods will work out of the box with no need for additional tools as they are entirely provided by the server.

Minetest is usually bundled with a simple default game, named “Minetest Game” (shown in images 1 and 2). You probably already have it. Other games for Minetest can be downloaded from the official Minetest forums <https://forum.minetest.net/viewforum.php?f=48>.

Minetest as well as Minetest Game are both unfinished at the moment, so please forgive us when not everything works out perfectly.]=],
		images = {{image="doc_basics_gameplay_mtg_1.png"}, {image="doc_basics_gameplay_mtg_2.png"}, {image="doc_basics_gameplay_carbone_ng.png"}, {image="doc_basics_gameplay_lott.png"}, {image="doc_basics_gameplay_pixture.png"}, {image="doc_basics_gameplay_outback.png"}, {image="doc_basics_gameplay_moontest.png"},
{image="doc_basics_gameplay_hades.png"}, {image="doc_basics_gameplay_xtraores_xtension.png"},}
}})

doc.new_entry("basics", "sneak", {
	name="Sneaking",
	data = { text =
[=[Sneaking is a special move. As long as you sneak, you walk slower, but you are guaranteed to not accidentally fall off the edge of a block. This also allows you to “lean over” in a sense.
To sneak, keep the sneak key pressed. As soon as you release the sneak key, you walk at normal speed again. Be careful not releasing the sneak key when you are at a ledge, you might fall!

• Sneak: [Shift]

Keep in mind that the [Shift] key is used for a large number of other things in Minetest. Sneaking only works when you are not in a liquid, stand on solid ground and are not at a ladder.

If you jump while holding the sneak key, you also jump slightly higher than usual.

Note that in some subgames, sneaking might be disabled. If this is the case, you still walk slower by sneaking, but you will no longer be prevented from falling off ledges.]=],
		images = { { image = "doc_basics_sneak.png" } },
}})

doc.new_entry("basics", "controls", {
	name="Controls",
	data = { text = [=[This entry lists all default controls in Minetest:

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
• Q: Drop entire wielded item stack
• Shift+Q: Drop single item of wielded item stack
• I: Show/hide inventory menu 

Inventory interaction:
See the entry “Inventory”.

Interface:
• Esc: In the game: Opens menu window (pauses in single-player mode) or close current window. In the main menu: Quit Minetest.
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
}})

doc.new_entry("basics", "players", {
	name="Players",
	data = {
		text =
[=[Players (actually: “player characters”) are the characters which user control.

Players are living beings which occupy a space of roughly 1×2×1 cubes and start with 20 health points and 10 breath points.
Players are capable of walking, sneaking, jumping, climbing ladders, swimming, diving, mining, building, fighting and using tools and blocks.

Players can take damage for a variety of reasons, here are some:
• Taking fall damage
• Touching a block which causes direct damage
• Drowning
• Being attacked by another player
• Being attacked by a computer enemy

At a health of 0, the player dies after which the player can just respawn in the world, usually somewhere else.
Other consequences of death vary wildly between subgame. The player could lose all items, or lose the round in a competitive game.

Breath is reduced for being with the head inside some block which causes drowning damage (usually liquids, but really any block cause this). Such blocks reduce the breath by 1 for every 2 seconds and start to cause damage every 2 seconds when the player has lost all breath. When being inside any other block, the breath is quickly restored.

Damage can be disabled on any world. Without damage, players are basically immortal. Health and breath don't play a role anymore and are hidden.

In online multiplayer, the name of other players is written above their head.]=],
		images = {{image="doc_basics_players_sam.png"}, {image="doc_basics_players_lott.png"}, {image="doc_basics_players_flat.png"}},
}})

doc.new_entry("basics", "tools", {
	name="Tools and weapons",
	data = { text =
[=[Some items may serve as a tool, melee weapon or both when wielded.

Any item which has some special use which can be directly used by its wielder is considered a tool.

A common tool in Minetest are, of course, mining tools. These are important to break all kinds of blocks.

Other tools with special uses (usually accessed by punching or right-click) may also be introduced.

Melee weapons deal damage by punching players and possibly other animate objects.

For melee weapons, another attribute is important: The full punch interval. This is basically the time it takes for completely recovering from a punch with this weapon. 
A melee weapon only deals its full damage when it has completely recovered. This can be seen by the animation of the wielded item. As long it is still moving, the full punch interval is not over yet. The full punch interval does not limit how fast one can deal punches, it rather limits the damage: Any hit done before the end of a full punch interval will deal reduced damage.

When nothing is wielded, players use their hand which may or may not act as mining tool and melee weapon (depending on the subgame). The hand is always capable of collecting dropped items simply by punching them.]=],
		images = {{image="doc_basics_tools.png"}, {image="doc_basics_tools_mining.png"}},
}})



doc.new_entry("basics", "cam", {
	name="Camera",
	data = {
		text =
[=[Minetest has 3 different views which determine the way you see the world. The modes are:

• First-person view (default)
• Third-person view from behind
• Third-person view from the front

You can change the camera mode by pressing [F7] (but you have to close this window first).

There is also Cinematic Mode which can be toggled with [F8]. Normally, the camera moves instantly as you move your mouse around. With Cinematic Mode enabled, the camera movements become more smooth. Some players don't like it, it is a matter of taste.

• Switch camera mode: [F7]
• Toggle Cinematic Mode: [F8]]=],
		images = {{image="doc_basics_camera_ego.png"}, {image="doc_basics_camera_behind.png"}, {image="doc_basics_camera_front.png"}}
}})

doc.new_entry("basics", "blocks", {
	name="Blocks",
	data = {
		text =
[=[The world of Minetest is made entirely out of blocks, or voxels, to be precise. Blocks can be added or removed with the correct tools.

Blocks can have a wide range of different properties which determine mining times, behavior, looks, shape, and much more. These are the most important attributes:

• Collidability: With collidable blocks block the way for players and other things, they cannot be passed through and they are walked upon by players. Non-collidable blocks can be passed through freely.
• Pointability: Pointable blocks will show a wireframe or a halo box when you point at them. But you will just point through non-pointable blocks as if they were not there. Liquids are usually non-pointable but they can be pointed at by some special tools.
• Mining properties: Mining properties determine by which tool a block can be mined (if at all).
• Climbability: While you are at a climbable block, you won't fall and you can climb and decent on it with the jump and sneak keys. Ladders are one example.
• Group memberships: Blocks may be a member of any number of groups. Groups are used to group similar items and blocks together. Most importantly, group memberships are used for mining. They are also used for many other purposes like crafting or interactions between blocks.
• Drowning damage: See the entry “Basics > Player”.
• Liquids: See the entry “Basics > Liquids”.]=],
}})

doc.new_entry("basics", "liquids", {
	name = "Liquids",
	data = {
		text =
[=[Liquids are special dynamic blocks. Liquids like to spread and flow to their surrounding blocks. Players can swim and drown in them.

Liquids usually come in two forms: In source form (S) and in flowing form (F).
Liquid sources have the shape of a full cube. A liquid source will generate flowing liquids around it from time to time, and, if the liquid is renewable, it also generates liquid sources. A liquid source can sustain itself. If no special event happens, a liquid source will keep its place forever and it will never drain out.
Flowing liquids take a sloped form. Flowing liquids spread around the map until they drain. A flowing liquid can not sustain itself and always comes from a liquid source, either directly or indirectly. Without a liquid source, a flowing liquid will eventually drain out and disappear.

All liquids share the following properties:
• All properties of blocks (including drowning damage)
• Renewability: Renewable liquids can create new sources (see below)
• Flowing range: How many flowing liquids are created at maximum per liquid source, it determines how far the liquid will “spread”, ranges from 0 to 8. If 0, no flowing liquids are generated at all.
• Viscosity: How slow players move through it and how fast new flowing liquids are created (i.e. how fast the liquid spreads)

Renewable liquids create new liquid sources at open spaces. A new liquid source is created when:
• Two renewable liquid blocks of the same type touch each other diagonally
• These blocks are also on the same height
• One of the two “corners” is open space which allows liquids to flow in

When those criteria are met, the open space is filled with a new liquid source of the same type.

Swimming in a liquid is fairly straightforward: The usual direction keys for basic movement, the jump key for rising and the sneak key for sinking.

The physics for swimming and diving in a liquid are:
• The higher the viscosity, the slower your movement speed
• If you don't do anything, you will slowly sink
• There is no fall damage for falling into a liquid as such
• If you fall into a liquid, you will be slowed down on impact (but don't come instantly to a halt). The faster you fell, the deeper you'll get. The slow-down effect is much stronger for liquids with a high viscosity. For a safe high drop into a liquid, make sure there is enough liquid above the ground, otherwise you might hit the ground and take fall damage

Liquids are usually not pointable. However, all liquids can be pointed by special items.]=],
		images = {
			{ image="doc_basics_liquids_types.png",
			  caption="A source liquid and its flowing liquids" },
			{ image="doc_basics_liquids_renewable_1.png",
			  caption="Renewable liquids need to be arranged like this to create a new source block" },
			{ image="doc_basics_liquids_renewable_2.png",
			  caption="A new liquid source is born" },
			{ image="doc_basics_liquids_nonrenewable.png",
			  caption="Non-renewable liquids creates a flowing liquid (F) instead" },
			{ image="doc_basics_liquids_range.png",
			  caption="Liquid with a flowing range of 2" },
		},
	},
})

doc.new_entry("basics", "craft", {
	name = "Crafting",
	data = {
		text =
[=[Crafting is the task of taking several items and combining them to form a new item. Crafting is another important task in Minetest.

To craft something, you need a few items and a so-called crafting grid (C). A crafting grid behaves like a normal inventory, with the addition that it can be used for crafting. In order to craft, items need to be put in a certain pattern into the crafting grid. Next to the crafting grid is an output slot (O), in which the result of a craft appears when you placed items in a valid arrangement. Note this is initially just a preview.

To complete the craft, take the result item from the output slot (like you would take items from other inventory slots), which will consume items from the crafting grid and creates a new item. It is not possible to place items into the output slot directly.

The description on how to craft a particular item is called a “crafting recipe”. In order to craft, you have to know some crafting recipes beforehand. One way is by using a crafting guide, which contains a list of available crafting recipes. Some subgames provide such crafting guides. There are also some mods which you can download online for installing a crafting guide.

Crafting recipes consist of at least one input item and exactly one stack of output items. When performing a single craft, it will consume exactly one item from each stack of the crafting grid, unless the crafting recipe defines replacements.

There are multiple kinds of crafting recipes: Shaped, shapeless, cooking and repairing.

• Shaped recipe (image 2): Items need to be placed in a particular shape
• Shapeless recipe (images 4 and 5): Items need to be placed in the crafting grid, but their positions don't matter (the images show the same recipe)
• Cooking: Explained in “Basics > Cooking”
• Repairing (image 6): Place two damaged tools of the same kind into the crafting grid anywhere, which gives you a new tool which is repaired by a certain percentage. This recipe may not be available in all subgames

In some crafting recipes, some or all input item do not need to be a concrete item, instead it needs to be a member of a particular group (see “Basics > Groups”). Such recipes offer a bit more freedom in the input items. Images 7 and 8 show a group-based recipe. Here, 8 items of the “stone” group are required, which is true for all of the shown items. Both images show the same crafting recipe.

Rarely, crafting recipes have replacements. This means, whenever you perform a craft, particular items in the crafting grid will not be consumed, but instead will be replaced by another item.
]=],
-- TODO: Replace image 3
-- TODO: Maybe add images demonstrating replacements
		images = {
			{image="doc_basics_craft_grid.png"}, {image="doc_basics_craft_shaped.png"}, {image="doc_basics_craft_shaped.png"},
			{image="doc_basics_craft_repair.png"}, {image="doc_basics_craft_shapeless_1.png"}, {image="doc_basics_craft_shapeless_2.png"},
			{image="doc_basics_craft_groups_1.png"}, {image="doc_basics_craft_groups_2.png"}, {image="doc_basics_craft_groups_3.png"},
		},
}})

-- TODO
doc.new_entry("basics", "cook", {
	name = "Cooking",
	data = {
		text =
[=[Cooking (or smelting) is a form of crafting, which does not involve a crafting grid. Cooking is done with a special block (usually a furnace), an cookable item, a fuel item and time in order to yield a new item.

Each fuel item has a burning time. This is the time a single item of the fuel keeps a furnace burning.
Each cookable item requires time to be cooked. This time is specific to the item type and the item must be “on fire” for the entirety of its cooking time to actually yield the result.

How cooking works in detail depends on the subgame and mods.]=]}})

doc.new_entry("basics", "hotbar", {
	name="Hotbar",
	data = {
		text =
[=[At the bottom of the screen you see some squares aligned horizontally. This is called the “hotbar”. The hotbar allows you to quickly access the first items from your player inventory.
You can change the selected item with the mouse wheel, or the number keys.

• Select previous item in hotbar: [Mouse wheel up]
• Select next item in hotbar: [Mouse wheel down]
• Select item in hotbar directly: [0]-[9]

The selected item is also your wielded item.]=],
		images = {{image="doc_basics_hotbar.png"}, {image="doc_basics_hotbar_relations.png"}},
}})

doc.new_entry("basics", "minimap", {
	name="Minimap",
	data = {
		text =
[=[Press the [F9] key to make a minimap appear on the top right. The minimap helps you to find your way around the world. Press it again to toggle through different minimap modes and zoom levels.

There are 2 minimap modes and 3 zoom levels.

Surface mode is a top-down view of the world, roughly resembling the colors of the blocks this world is made on. It only shows the topmost blocks, everything below is hidden, like a satellite photo. Surface mode is useful if you got lost.

Radar mode is more complicated. It displays the “denseness” of the area around you and changes with your height. Roughly, the more green an area is, the less "dense" it is. Black areas have many blocks. Use the radar to find caverns, hidden areas, walls and more.

There are also two different direction modes. Normally, “up” on the minimap is always pointing to the North. But if you press [Shift]+[F9], the minimap will instead rotate with your looking direction, so “up” is always your looking direction.

In some subgames, the minimap may be disabled.

• Toggle minimap mode: [F9]
• Toggle minimap rotating: [Shift]+[F9]]=],
		images = {{image="doc_basics_minimap_map.png"}, {image="doc_basics_minimap_radar.png"}, {image="doc_basics_minimap_round.png"}},
}})

doc.new_entry("basics", "inventory", {
	name="Inventory",
	data = {
		text =
[=[An inventory is primarily used to store item stacks. There are other uses, such as crafting. An inventory consists of a rectangular grid of item slots. Each item slot can be either empty or hold one item stack. Item stacks can be moved freely between slot and slot, given that the destination slot is either empty or of the same item type.
You have your own inventory which is called your “player inventory”, you can open it with the inventory key (default: [I]). The first inventory slots are also used as slots in your hotbar.
Blocks can also have their own inventory, for example, things like chests and furnaces.

Inventory controls:

Taking: You can take items from an occupied slot if the cursor holds nothing.
• Left click: take entire item stack
• Right click: take half from the item stack (rounding up if odd number)
• Middle click: take 10 items from the item stack 

Putting: You can put items onto a slot if the cursor holds 1 or more items and the slot is either empty or contains an item stack of the same item type.
• Left click: put entire item stack
• Right click: put 1 item of the item stack
• Middle click: put 10 items of the item stack 

Exchanging: You can exchange items if the cursor holds 1 or more items and the destination slot is occupied by a different item type.
• Left, middle and right click: exchange item stacks from cursor and from selected item slot 

Throwing away: If you hold an item stack and click with it somewhere outside the menu, the item stack gets thrown away into the environment.

Quick transfer: You can quickly transfer an item stack to/from the player inventory to/from another item's inventory slot like a furnace, chest, or any other item with an inventory slot when that item's inventory is accessed. The inventories chosen for quick transfer are context-dependent, usually those are the inventories which are considered to be most useful in this context.
• Sneak+Left click: Automatically transfer item stack.]=],
		images = {{image="doc_basics_inventory.png"}, {image="doc_basics_inventory_detail.png"}},
}})

doc.new_entry("basics", "online", {
	name="Online help",
	data = { text=
[=[You may want to check out these online resources related to Minetest:

Official homepage of Minetest: <http://minetest.net/>
The main place to find the most recent version of Minetest.

Community wiki: <http://wiki.minetest.net/>
A community-based documentation website for Minetest. Anyone with an account can edit it! It also features a documentation of Minetest Game.

Web forums: <http://forums.minetest.net/>
A web-based discussion platform where you can discuss everything related to Minetest. This is also a place where player-made mods and subgames are published and discussed. The discussions are mainly in English, but there is also space for discussion in other languages.

Chat: <irc://irc.freenode.net#minetest>
A generic Internet Relay Chat channel for everything related to Minetest where people can meet to discuss in real-time. If you do not understand IRC, see the Community Wiki for help.]=]
}})

-- TODO
doc.new_entry("basics", "groups", {
	name="Groups",
	data = {
		text =
[=[Items, players and objects (animate and inanimate) can be member of any number of groups. Groups serve multiple purposes:

• Crafting recipes: Sometimes, slots in a crafting recipe do not require a specific item, but instead they require an item which is a member of a particular group, or multiple groups
• Digging times: Diggable blocks belong to groups which are used to determine digging times. Mining tools are capable of digging blocks belonging to certain groups
• Block behavior: Blocks may behave in a special way and interact with other blocks when they belong to a particular group
• Damage and armor: Objects and players have armor groups, weapons have damage groups. A weapon is able to deal damage to things where at least one of its damage groups is also present at the attacked object. The actual damage depends on the weapon strength (stronger weapon means less damage) and the armor strength (stronger armor means less damage)
• Other uses: Groups can be used for a few other things as well, which largely depends on the mods being used

In the item help, most important groups of which an item is a member of are mentioned and explained.]=]}})

doc.new_entry("basics", "glossary", {
	name = "Glossary",
	data = {
		text =
[=[This is a list of commonly used terms in Minetest parlance:

Controls:
• Wielding: Holding an item in hand
• Pointing: Looking with the crosshair at something in range
• Dropping: Throwing an item or item stack to the ground
• Punching: Attacking with left-click, is also used on blocks
• Sneaking: Walking slowly while (usually) avoiding to fall over edges
• Climbing: Moving up or down a climbable block

Blocks:
• Block: Cubes that the worlds are made out of
• Mining/digging: Using a mining tool to break a block
• Building/placing: Putting a block somewhere
• Drop: The items you (may) get after mining a block
• Using a block: Right-clicking a block to access its special function

Items:
• Item: A single thing that players can possess
• Item stack: A collection of items of the same kind
• Maximum stack size: Maximum amount of items in an item stack
• Slot / inventory slot: Can hold one item stack
• Inventory: Provides several inventory slots for storage
• Player inventory: The main inventory of a player
• Tool: An item which you can use to do special things with when wielding
• Range: How far away things can be to be pointed by an item when wielding it
• Mining tool: A tool which allows to break blocks
• Craft item: An item which is (primarily or only) used for crafting

Gameplay:
• “heart”: A single health symbol, indicates 2 HP
• “bubble”: A single breath symbol, indicates 1 BP
• HP: Hit point (equals half a “heart”)
• BP: Breath point, indicates breath when swimming
• Mob: Computer-controlled enemy
• Crafting: Combining multiple items to create new ones
• Crafting guide: A helper which shows available crafting recipes; provided by mods
• Spawning: Appearing in the world
• Respawning: Appearing again in the world after death
• Group: Used to group similar things together; determines mining times, armor, damage, and more
• noclip: Allows to fly through walls

Interface
• Hotbar: The inventory slots at the bottom which you can select for wielding
• Statbar: Indicator made out of half-symbols, used for health and breath
• Minimap: The map or radar at the top right
• Crosshair: Seen in the middle, used to point to things

Online multiplayer:
• PvP: Player vs Player. Indicates that players can attack and deal damage to each other
• Griefing: Destroying the buildings of other players against their will
• Protection: Mechanism to own areas of the world, which only allows the owners to modify blocks inside

Technical:
• Minetest: This game engine
• Minetest Game: A subgame for Minetest from the Minetest developers
• Subgame: A complete playing experience to be used in Minetest; can be a game, a sandbox or something else
• Mod: A single subsystem which adds or modifies functionality; is the basic building block of subgames and can be used to further enhance or modify them
• Privilege: Allows a player to do something
• Node: Other word for “block”
]=]}})

-- TODO
doc.new_entry("basics", "settings", {
	name="Settings",
	data = {
		text =
[=[There is a large variety of settings to configure Minetest. Pretty much every aspect can be changed that way.

These are a few of the most important gameplay settings:

• Damage enabled (enable_damage): Enables the health and breath attributes for all players. If disabled, players are immortal
• Creative Mode (creative_mode): Enables sandbox-style gameplay focusing on creativity rather than a challenging gameplay. The meaning mostly depends on subgames but usually this means that you can access almost all items for free, can dig faster and some other “creative” changes
• PvP (enable_pvp): Short for “Player vs Player”. If enabled, players can deal damage to each other

For a full list of all available settings, use the “Advanced settings” dialog in the main menu.]=]
}})


-- TODO
doc.new_entry("online", "intro", {
	name="Introduction to online multiplayer",
	data=
[=[
Every Minetest server is (more or less) different. A server can have any subgame and mods the server operator likes to.

Servers provide ALL gameplay functionality (subgame, mods) and media files out of the box, no additional configuration necessary. You only need to make sure to have a recent Minetest version to be able to connect to most servers.
]=]})

-- TODO
doc.new_entry("online", "commands", {
	name="Server commands",
	data=
[=[Server commands are special commands to the server that can be entered by any player via the chat to cause the server to do something. There are a few commands which can be issued by everyone, but some commands only work if you have certain privileges granted on the server.

To issue a command, simply type it like a chat message or use the console. All commands have to begin with “/”, for example “/mods”.

Try it for yourselves: Close this window and say “/mods” in chat. This server will show you a list of mods installed on this server.

In Minetest, there is a small set of basic commands which are always available. Additional commands may be added by mods. This means, on other servers you might have new commands.

To help you get started, here are some basic commands:

• /help all: Lists and describes all server commands
• /privs: Lists your privileges]=]
})

-- TODO
doc.new_entry("online", "privs", {
	name="Privileges",
	data=[=[Every player has a set of privileges, which differ from server to server. Roughly spoken, one’s privileges determine what one is able to do and what not. Each privilege has a name. Privileges can be granted and revoked from other players by any player who has the privilege called “privs”.

On a multiplayer server with a default configuration, new players start with the privileges called “interact” and “shout”. The interact privilege is required for the most basic gameplay actions such as building, mining, using, etc. The shout privilege allows the player to use the chat.

Just like with server commands, there is a small set of core privileges which you'll find on every server, and other privileges might be added by mods.

To view your own privileges, issue the server command “/privs”.

Here are a few basic privilege-related commands:
• /privs: Lists your privileges
• /privs <player>: Lists the privileges of <player>
• /help privs: Shows a list and description about all privileges

Players with the “privs” privilege can modify privileges at will:
• /grant <player> <privilege>: Grant <privilege> to <player>
• /revoke <player> <privilege>: Revoke <privilege> from <player>

In single-player mode, you can use the shortcut “/grant singleplayer all” to allow you to do everything (this is considered cheating).]=]
})


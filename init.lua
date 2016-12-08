--[[
- TODO: Consider adding more categories if entry count gets too high
- TODO: Add API for subgame-specific changes so the entries are not too awfully generic
   - Support for landing page
   - Support to modify some parts of existing entries
- TODO: Add introduction to online play (if possible)
- TODO: Ideas for advanced entries:
   - Coordinates and cardinal directions, world structure?
   - Itemstrings
   - Sneak Glitch?
   - Rendering (far view, etc.)
   - Day/night cycle
]]


doc.new_category("basics",
{
	name="Basics",
	description = "Everything you need to know about Minetest to get started with playing",
	sorting = "custom",
	sorting_data = {"quick_start", "minetest", "controls", "point", "items", "inventory", "hotbar", "tools", "weapons", "blocks", "mine", "build", "craft", "cook", "minimap", "cam", "sneak", "players", "liquids", "light", "groups", "glossary"},
	build_formspec = doc.entry_builders.text_and_gallery,
})

doc.new_category("advanced",
{
	name = "Advanced usage",
	description = "Advanced information about Minetest which may be nice to know, but is not crucial to gameplay",
	sorting = "custom",
	sorting_data = {"console", "commands", "privs", "movement_modes", "settings", "online"},
	build_formspec = doc.entry_builders.text_and_gallery,
})

doc.new_entry("basics", "quick_start", {
	name = "Quick start",
	data = { text =
[=[This is a very brief introduction to the basic gameplay:

• Move mouse to look
• [W], [A], [S] and [D] to move
• [Space] to jump or go up
• [Shift] to sneak or go down
• Mouse wheel or [0]-[9] to select item
• Left-click to mine blocks or attack
• Recover from swings to deal full damage
• Right-click to build blocks and use things
• [I] for the inventory
• First items in inventory appear in hotbar below
• [F9] for the minimap
• Put items into crafting grid (usually 3×3 grid) to craft
• Use a crafting guide mod to learn crafting recipes or visit <http://wiki.minetest.net/wiki/Crafting>
• Read entries in this Documentation System to learn the rest
• [Esc] to close this window]=]
}})

doc.new_entry("basics", "minetest", {
	name="Minetest",
	data = {
		text =
[=[Minetest is a free software game engine to create various games based on voxel gameplay, inspired by InfiniMiner, Minecraft, and the like. Minetest was originally created by Perttu Ahola (alias “celeron55”).

The player is thrown into a huge world made out of cubes or blocks. These cubes usually make the landscape they blocks can be removed and placed almost entirely freely. Using the collected items, new tools and other items can be crafted. Games in Minetest (also called “subgames”) can, however, be much more complex than this.

A core feature of Minetest is the built-in modding capability. Mods modify existing gameplay. They can be as simple as adding a few decorational blocks or very complex by e.g. introducing completely new gameplay concepts, generating a completely different kind of world, and many other things.

Minetest can be played alone or online together with multiple players. When playing online, from the player perspective all mods will work out of the box with no need for additional tools as they are entirely provided by the server.

Minetest is usually bundled with a simple default game, named “Minetest Game” (shown in images 1 and 2). You probably already have it. Other games for Minetest can be downloaded from the official Minetest forums <https://forum.minetest.net/viewforum.php?f=48>.

Minetest as well as Minetest Game are both unfinished at the moment, so please forgive us when not everything works out perfectly.]=],
		images = {{image="doc_basics_gameplay_mtg_1.png"}, {image="doc_basics_gameplay_mtg_2.png"}, {image="doc_basics_gameplay_carbone_ng.png"}, {image="doc_basics_gameplay_lott.png"}, {image="doc_basics_gameplay_pixture.png"}, {image="doc_basics_gameplay_outback.png"}, {image="doc_basics_gameplay_moontest.png"},
{image="doc_basics_gameplay_hades.png"}, {image="doc_basics_gameplay_xtraores_xtension.png"},}
}})

doc.new_entry("basics", "sneak", {
	name="Sneaking",
	data = { text =
[=[Sneaking is a special move. Sneaking makes you walk slower and prevents you from falling off the edge of a block.
To sneak, keep the sneak key (default: [Shift]) pressed. When you release it, stop sneaking. Careful: When you release the sneak key at a ledge, you might fall!

• Sneak: [Shift]

Sneaking only works when you stand on solid ground, are not in a liquid and don't climb.

If you jump while holding the sneak key, you also jump slightly higher than usual.

Sneaking might be disabled by mods. In this case, you still walk slower by sneaking, but you will no longer be stopped at ledges.]=],
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
• Shift: Sneak

While on a ladder, swimming in a liquid or fly mode is active
• Space: Move up
• Shift: Move down 

Extended movement (requires privileges):
• J: Toggle fast mode, makes you run or fly fast (requires “fast” privilege)
• K: Toggle fly mode, makes you move freely in all directions (requires “fly” privilege)
• H: Toggle noclip mode, makes you go through walls in fly mode (requires “noclip” privilege)
• E: Walk fast in fast mode

World interaction:
• Left mouse button: Punch / mine blocks / take items
• Right mouse button: Use pointed block or build
• Shift+Right mouse button: Build
• Roll mouse wheel: Select next/previous item in hotbar
• 0-9: Select item in hotbar directly
• Q: Drop item stack
• Shift+Q: Drop 1 item
• I: Show/hide inventory menu 

Inventory interaction:
See the entry “Inventory”.

Interface:
• Esc: Open menu window (pauses in single-player mode) or close current window
• F1: Show/hide HUD
• F2: Show/hide chat
• F7: Toggle camera mode
• F8: Toggle cinematic mode
• F9: Toggle minimap, minimap mode and zoom
• Shift+F9: Toggle minimap shape
• F10: Open/close console/chat log
• F12: Take a screenshot

Server interaction:
• T: Open chat window (chat requires the “shout” privilege)
• /: Start issuing a server command 

Technical:
• R: Toggle far view (disables all fog and allows viewing far away, can make game very slow)
• +: Increase minimal viewing distance
• -: Decrease minimal viewing distance
• F3: Enable/disable fog
• F5: Enable/disable debug screen which also shows your coordinates
• F6: Only useful for developers. Enables/disables profiler
• P: Only useful for developers. Writes current stack traces]=]
}})

doc.new_entry("basics", "players", {
	name="Players",
	data = {
		text =
[=[Players (actually: “player characters”) are the characters which users control.

Players are living beings which occupy a space of about 1×2×1 cubes. They start with 20 health points (HP) and 10 breath points (BP).
Players are capable of walking, sneaking, jumping, climbing ladders, swimming, diving, mining, building, fighting and using tools and blocks.

Players can take damage for a variety of reasons, here are some:
• Taking fall damage
• Touching a block which causes direct damage
• Drowning
• Being attacked by another player
• Being attacked by a computer enemy

At a health of 0, the player dies. The player can just respawn in the world.
Other consequences of death depend on the subgame. The player could lose all items, or lose the round in a competitive game.

Some blocks reduce breath. While being with the head in a block which causes drowning, the breah points are reduced by 1 for every 2 seconds. If all breath is gone, the player starts to suffer drowning damage. Breath is quickly restored in any other block.

Damage can be disabled on any world. Without damage, players are immortal and health and breath are unimportant.

In multi-player mode, the name of other players is written above their head.]=],
		images = {{image="doc_basics_players_sam.png"}, {image="doc_basics_players_lott.png"}, {image="doc_basics_players_flat.png"}},
}})

doc.new_entry("basics", "items", {
	name="Items",
	data = {
		text =
[=[Items are things you can carry along and store in inventories. They can be used for crafting, smelting, building, mining, and more. Types of items include blocks, tools, weapons and items for crafing only.

An item stack is a collection of items of the same type which fits into a single item slot. Item stacks can be dropped on the ground. Items which drop into the same coordinates will form an item stack.

Items have several properties, including the following:

• Maximum stack size: Number of items which fit on 1 item stack
• Pointing range: How close things must be to be pointed while wielding this item
• Group memberships: See “Basics > Groups”
• May be used for crafting or cooking

A dropped item stack can be collected by punching it.]=],
		images = {{image="doc_basics_inventory_detail.png"}, {image="doc_basics_items_dropped.png"}},
}})

doc.new_entry("basics", "tools", {
	name="Tools",
	data = { text =
[=[Some items may serve as a tool when wielded. Any item which has some special use which can be directly used by its wielder is considered a tool.

A common tool in Minetest are, of course, mining tools. These are important to break all kinds of blocks. Weapons are a kind of tool in Minetest. There are of course many other possible tools. Special actions of tools are usually done by left-click or right-click.

When nothing is wielded, players use their hand which may act as tool and weapon. The hand is capable of collecting dropped items by punching.

Many tools will wear off when using them and may eventually get destroyed. The damage is displayed in a damage bar below the tool icon. If no damage bar is shown, the tool is in mit condition. Tools may be repairable by crafting, see “Basics > Crafting”.]=],
		images = {{image="doc_basics_tools.png"}, {image="doc_basics_tools_mining.png"}},
}})

-- TODO: Check the facts on damage groups!
-- TODO: Screenshot
doc.new_entry("basics", "weapons", {
	name="Weapons",
	data = { text =
[=[Some items are useable as a melee weapon when wielded. Weapons share most of the properties of tools.

Melee weapons deal damage by punching players and other animate objects. There are two ways to attack:
• Single punch: Left-click once to deal a single punch
• Quick punching: Hold down the left mouse button to deal repeated punches as fast as you can, but the damage of each hit will be low

There are two core attributes of melee weapons:
• Maximum damage: Damage which is dealt after a hit when the weapon was fully recovered
• Full punch interval: Time it takes for fully recovering from a punch

Look at your weapon closely: As long it is still moving, the full punch interval is not over yet. The full punch interval does not limit how fast you can attack, it rather limits the damage: Any hit done before the end of the full punch interval will deal reduced damage.

There is a rule which sometimes makes attacks impossible: Players, animate objects and weapons belong to damage groups. A weapon only deals damage to those who share at least one damage group with it. So if you're using the wrong weapon, you might not deal any damage at all.]=]
}})


doc.new_entry("basics", "point", {
	name="Pointing",
	data = {
		text =
[=[“Pointing” means looking at something in range with the crosshair. Pointing is needed for interaction, like mining, punching, using, etc. Pointable things include blocks, dropped items, players, computer enemies and objects.

To point something, it must be in the pointing range (also just called “range”) of your wielded item. There's a default range when you are not wielding anything. A pointed thing will be outlined or highlighted (depending on your settings). Pointing is not possible with the 3rd person front camera.

A few things can not be pointed. Most blocks are pointable. A few blocks, like air, can never be pointed. Other blocks, like liquids can only be pointed by special items.]=],
		images = {{ image = "doc_basics_pointing.png" }},
}})

doc.new_entry("basics", "cam", {
	name="Camera",
	data = {
		text =
[=[Minetest has 3 different views which determine the way you see the world. The modes are:

• 1: First-person view (default)
• 2: Third-person view from behind
• 3: Third-person view from the front

You can change the camera mode by pressing [F7].

There is also Cinematic Mode which can be toggled with [F8]. With Cinematic Mode enabled, the camera movements become more smooth. Some players don't like it, it is a matter of taste.

• Switch camera mode: [F7]
• Toggle Cinematic Mode: [F8]]=],
		images = {{image="doc_basics_camera_ego.png"}, {image="doc_basics_camera_behind.png"}, {image="doc_basics_camera_front.png"}}
}})

doc.new_entry("basics", "blocks", {
	name="Blocks",
	data = {
		text =
[=[The world of Minetest is made entirely out of blocks (voxels, to be precise). Blocks can be added or removed with the correct tools.

Blocks can have a wide range of different properties which determine mining times, behavior, looks, shape, and much more. Their properties include:

• Collidability: Collidable blocks can normally not be passed through; players can walk on them. Non-collidable blocks can be passed through freely.
• Pointability: Pointable blocks show a wireframe or a halo box when pointed. But you will just point through non-pointable blocks as if they were not there. Liquids are usually non-pointable but they can be pointed at by some special tools.
• Mining properties: Mining properties determine by which tools a block can be mined (if at all) and how fast.
• Climbability: While you are at a climbable block, you won't fall and you can move up and down with the jump and sneak keys. Ladders are one example.
• Drowning damage: See the entry “Basics > Player”.
• Liquids: See the entry “Basics > Liquids”.
• Group memberships: Group memberships are used to determine mining properties, crafting, interactions between blocks and more.]=],
}})

doc.new_entry("basics", "mine", {
	name = "Mining",
	data = {
		text =
[=[Mining (or digging) is the process of breaking blocks to remove them. To mine a block, point it and hold down the left mouse button until it breaks.

Some blocks can not be mined, and some blocks can always be mined. Usually, blocks require a certain type of mining tool to be mined. When in doubt, just try out different mining tools on a block and see what happens.

Mineable blocks have mining properties (based on groups) and a mining level. Mining tools have the same properties. Each mining property of a block also has a rating, while tools can be able to break blocks within a range of mining ratings.

In order to mine a block at all, these conditions need to be met:
• The block and tool share at least one mining property for which the have a matching mining rating
• The tool's mining level is equal or less than the block's mining level.

The time it takes to mine a block depends on the mining ratings and the mining level. Mining usually wears off tools. Mining blocks with a higher mining level will wear out your tools faster.

Example: A block with the mining property “cracky”, rating 3 and level 0 can only be broken by a tool which is able to break “cracky” blocks at rating 3 and it must have a mining level of 0 or larger.

After mining, a block will leave a “drop” behind. This is a number of items you get after mining. The following drop types are possible:
• Always drops itself (most common)
• Always drops the same items
• Drops items based on probability
• Drops nothing]=],
		images = {{image="doc_basics_tools_mining.png"}},
}})

doc.new_entry("basics", "build", {
	name = "Building",
	data = {
		text =
[=[Allmost all blocks can be built (or placed). Building is very simple and has no delay.

To build your wielded block, point at a block in the world and right-click. If this is not possible because the pointed block has a special right-click action, hold down the sneak key before right-clicking.

Blocks can almost always be built at pointable blocks. One exception are blocks attached to the floor; these can only be built on the floor.

Normally, blocks are built in front of the pointed side of the pointed block. A few blocks are different: When you try to build at them, they are replaced.]=],
		images = {{image="doc_basics_build.png"}},
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
• Renewability: Renewable liquids can create new sources
• Flowing range: How many flowing liquids are created at maximum per liquid source, it determines how far the liquid will “spread”, ranges from 0 to 8. If 0, no flowing liquids are generated at all. Image 5 shows a liquid of flowing range 2
• Viscosity: How slow players move through it and how fast new flowing liquids are created (i.e. how fast the liquid spreads)

Renewable liquids create new liquid sources at open spaces (image 2). A new liquid source is created when:
• Two renewable liquid blocks of the same type touch each other diagonally
• These blocks are also on the same height
• One of the two “corners” is open space which allows liquids to flow in

When those criteria are met, the open space is filled with a new liquid source of the same type (image 3).

Swimming in a liquid is fairly straightforward: The usual direction keys for basic movement, the jump key for rising and the sneak key for sinking.

The physics for swimming and diving in a liquid are:
• The higher the viscosity, the slower your movement speed
• If you don't do anything, you will slowly sink
• There is no fall damage for falling into a liquid as such
• If you fall into a liquid, you will be slowed down on impact (but don't come instantly to a halt). Your impact depth is determined by your speed and the liquid viscosity. For a safe high drop into a liquid, make sure there is enough liquid above the ground, otherwise you might hit the ground and take fall damage.

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
[=[Crafting is the task of combining several items to form a new item.

To craft something, you need one or more items, a crafting grid (C) and a crafting recipe. A crafting grid is like a normal inventory which can also be used for crafting. Items need to be put in a certain pattern into the crafting grid. Next to the crafting grid is an output slot (O). Here the result will appear when you placed items correctly. This is just a preview, not the actual item. Crafting grids can come in different sizes which limits the possible recipes you can craft.

To complete the craft, take the result item from the output slot, which will consume items from the crafting grid and creates a new item. It is not possible to place item into the output slot.

A description on how to craft a particular item is called a “crafting recipe”. You need this knowledge to craft. There are multiple ways to learn about crafting recipes. One way is by using a crafting guide, which contains a list of available crafting recipes. Some subgames provide crafting guides. There are also some mods which you can download online for installing a crafting guide. Another way is by reading the online manual of the subgame (if one is available).

Crafting recipes consist of at least one input item and exactly one stack of output items. When performing a single craft, it will consume exactly one item from each stack of the crafting grid, unless the crafting recipe defines replacements.

There are multiple types of crafting recipes:

• Shaped (image 2): Items need to be placed in a particular shape
• Shapeless (images 3 and 4): Items need to be placed somewhere in input (both images show the same recipe)
• Cooking: Explained in “Basics > Cooking”
• Repairing (image 5): Place two damaged tools into the crafting grid anywhere to get a tool which is repaired by a certain percentage. This recipe may not be available in all subgames

In some crafting recipes, some or all input item do not need to be a concrete item, instead it needs to be a member of a particular group (see “Basics > Groups”). These recipes offer a bit more freedom in the input items. Images 6-8 show the same group-based recipe. Here, 8 items of the “stone” group are required, which is true for all of the shown items.

Rarely, crafting recipes have replacements. This means, whenever you perform a craft, particular items in the crafting grid will not be consumed, but instead will be replaced by another item.]=],
-- TODO: Maybe add images demonstrating replacements
		images = {
			{image="doc_basics_craft_grid.png"}, {image="doc_basics_craft_shaped.png"},
			{image="doc_basics_craft_shapeless_1.png"}, {image="doc_basics_craft_shapeless_2.png"}, {image="doc_basics_craft_repair.png"},
			{image="doc_basics_craft_groups_1.png"}, {image="doc_basics_craft_groups_2.png"}, {image="doc_basics_craft_groups_3.png"},
		},
}})

-- TODO
doc.new_entry("basics", "cook", {
	name = "Cooking",
	data = {
		text =
[=[Cooking (or smelting) is a form of crafting which does not involve a crafting grid. Cooking is done with a special block (usually a furnace), an cookable item, a fuel item and time in order to yield a new item.

Each fuel item has a burning time. This is the time a single item of the fuel keeps a furnace burning.
Each cookable item requires time to be cooked. This time is specific to the item type and the item must be “on fire” for the whole cooking time to actually yield the result.

How cooking works in detail depends on the subgame and mods.]=]}})

doc.new_entry("basics", "hotbar", {
	name="Hotbar",
	data = {
		text =
[=[At the bottom of the screen you see some squares. This is called the “hotbar”. The hotbar allows you to quickly access the first items from your player inventory.
You can change the selected item with the mouse wheel or the number keys.

• Select previous item in hotbar: [Mouse wheel up]
• Select next item in hotbar: [Mouse wheel down]
• Select item in hotbar directly: [0]-[9]

The selected item is also your wielded item.]=],
		images = {{image="doc_basics_hotbar.png"}, {image="doc_basics_hotbar_relations.png"}},
}})

-- FIXME: Be careful when talking about “North”
doc.new_entry("basics", "minimap", {
	name="Minimap",
	data = {
		text =
[=[Press [F9] to make a minimap appear on the top right. The minimap helps you to find your way around the world. Press it again to toggle through different minimap modes and zoom levels. The minimap also shows the positions of other players.

There are 2 minimap modes and 3 zoom levels.

Surface mode (image 1) is a top-down view of the world, roughly resembling the colors of the blocks this world is made of. It only shows the topmost blocks, everything below is hidden, like a satellite photo. Surface mode is useful if you got lost.

Radar mode (image 2) is more complicated. It displays the “denseness” of the area around you and changes with your height. Roughly, the more green an area is, the less "dense" it is. Black areas have many blocks. Use the radar to find caverns, hidden areas, walls and more. The rectangular shapes in image 2 clearly expose the position of a dungeon.

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
[=[An inventory is used to store item stacks. There are other uses, such as crafting. An inventory consists of a rectangular grid of item slots. Each item slot can either be empty or hold one item stack. Item stacks can be moved freely between most slots.
You have your own inventory which is called your “player inventory”, you can open it with the inventory key (default: [I]). The first inventory slots are also used as slots in your hotbar.
Blocks can also have their own inventory, for example, things like chests and furnaces.

Inventory controls:

Taking: You can take items from an occupied slot if the cursor holds nothing.
• Left click: take entire item stack
• Right click: take half from the item stack (rounded up)
• Middle click: take 10 items from the item stack 

Putting: You can put items onto a slot if the cursor holds 1 or more items and the slot is either empty or contains an item stack of the same item type.
• Left click: put entire item stack
• Right click: put 1 item of the item stack
• Middle click: put 10 items of the item stack 

Exchanging: You can exchange items if the cursor holds 1 or more items and the destination slot is occupied by a different item type.
• Click: exchange item stacks from cursor and from selected item slot

Throwing away: If you hold an item stack and click with it somewhere outside the menu, the item stack gets thrown away into the environment.

Quick transfer: You can quickly transfer an item stack to/from the player inventory to/from another item's inventory slot like a furnace, chest, or any other item with an inventory slot when that item's inventory is accessed. The target inventory is generally the most relevant inventory in this context.
• Sneak+Left click: Automatically transfer item stack.]=],
		images = {{image="doc_basics_inventory.png"}}
}})

doc.new_entry("advanced", "online", {
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

doc.new_entry("basics", "groups", {
	name="Groups",
	data = {
		text =
[=[Items, players and objects (animate and inanimate) can be members of any number of groups. Groups serve multiple purposes:

• Crafting recipes: Slots in a crafting recipe may not require a specific item, but instead an item which is a member of a particular group, or multiple groups
• Digging times: Diggable blocks belong to groups which are used to determine digging times. Mining tools are capable of digging blocks belonging to certain groups
• Block behavior: Blocks may show a special behaviour and interact with other blocks when they belong to a particular group
• Damage and armor: Objects and players have armor groups, weapons have damage groups. See also: “Basics > Weapons”
• Other uses

In the item help, many important groups are usually mentioned and explained.]=]}})

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
• Range: How far away things can be to be pointed by an item
• Mining tool: A tool which allows to break blocks
• Craft item: An item which is (primarily or only) used for crafting

Gameplay:
• “heart”: A single health symbol, indicates 2 HP
• “bubble”: A single breath symbol, indicates 1 BP
• HP: Hit point (equals half 1 “heart”)
• BP: Breath point, indicates breath when swimming
• Mob: Computer-controlled enemy
• Crafting: Combining multiple items to create new ones
• Crafting guide: A helper which shows available crafting recipes
• Spawning: Appearing in the world
• Respawning: Appearing again in the world after death
• Group: Puts similar things together, often affects gameplay
• noclip: Allows to fly through walls

Interface
• Hotbar: Inventory slots at the bottom
• Statbar: Indicator made out of half-symbols, used for health and breath
• Minimap: The map or radar at the top right
• Crosshair: Seen in the middle, used to point to things

Online multiplayer:
• PvP: Player vs Player. If avtive, players can deal damage to each other
• Griefing: Destroying the buildings of other players against their will
• Protection: Mechanism to own areas of the world, which only allows the owners to modify blocks inside

Technical terms:
• Minetest: This game engine
• Minetest Game: A subgame for Minetest from the Minetest developers
• Subgame: A complete playing experience to be used in Minetest; such as a game or sandbox or similar
• Mod: A single subsystem which adds or modifies functionality; is the basic building block of subgames and can be used to further enhance or modify them
• Privilege: Allows a player to do something
• Node: Other word for “block”
]=]}})

-- TODO
doc.new_entry("advanced", "settings", {
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

doc.new_entry("advanced", "movement_modes", {
	name = "Movement modes",
	data = { text =
[=[If you have the requiried privileges, you can use up to three special movement modes. Using the movement modes is generally considered cheating.

Fast mode:
• Description: Allows you to move much faster. When not in fly mode, you can use the “Use” key [E] to run faster. In the client configuration, you can further customize fast mode.
• Default key: J
• Required privilege: fast

Fly mode:
• Description: While enabled, you are not subject to gravity anymore and can move freely in all directions. Use the jump key to rise and the sneak key to sink.
• Default key: K
• Required privilege: fly

Noclip mode:
• Description: Allows you to move through walls. Only works when fly mode is enabled, too.
• Default key: H
• Required privilege: noclip]=]
}})

doc.new_entry("advanced", "console", {
	name = "Console",
	data = { text =
[=[With [F10] you can open and close the console. The main use of the console is to show the chat log and enter chat messages or server commands.
Using the chat or server command key also opens the console, but it is smaller and will be closed after you sent a message.

Use the chat to communicate to other players. This requires you to have the “shout” privilege.
Just type in the message and hit [Enter]. Chat messages can not begin with “/”.

Write “/msg <player> <message>” to write “<message>” to <player> which can only be seen by <player>.

There are some special controls while the console is open:

• [F10] Open/close console
• [Enter]: Send chat message or server command
• [Tabulator]: Try to auto-complete a partially-entered player name
• [Ctrl]+[Left]: Move cursor to the beginning of the previous word
• [Ctrl]+[Right]: Move cursor to the beginning of the next word
• [Ctrl]+[Backspace]: Delete previous word
• [Ctrl]+[Delete]: Delete next word
• [Ctrl]+[U]: Delete all text before the cursor
• [Ctrl]+[K]: Delete all text after the cursor
• [Page up]: Scroll up
• [Page down]: Scroll down

There is also an input history. Minetest saves your previous console inputs which you can quickly access later:

• [Up]: Go to previous entry in history
• [Down]: Go to next entry in history]=]
}})

doc.new_entry("advanced", "commands", {
	name="Server commands",
	data = { text =
[=[Server commands (also called “chat commands”) are little helpers for advanced users. You don't need to use these commands when playing. But they might come in handy to perform some more technical tasks. Server commands work both in multi-player and single-player mode.

Server commands can be entered by players using the chat to perform a special server action. There are a few commands which can be issued by everyone, but some commands only work if you have certain privileges granted on the server. There is a small set of basic commands which are always available, other commands can be added by mods.

To issue a command, simply type it like a chat message or press Minetest's command key (default: [/]). All commands have to begin with “/”, for example “/mods”. The Minetest command key does the same as the chat key, except that the slash is already entered.
Commands may or may not give a response in the chat log, but errors will generally be shown in the chat. Try it for yourselves: Close this window and type in the “/mods” command. This will give you the list of available mods on this server.

“/help all” is a very important command: You get a list of all available commands on the server, a short explanation and the allowed parameters. This command is also important because the available commands often differ per server.

Commands are followed by zero or more parameters.

In the command reference, you see some placeholders which you need to replace with an actual value. Here's an explanation:

• Text in greater-than and lower-than signs (e.g. “<param>”): Placeholder for a parameter
• Anything in square brackets (e.g. “[text]”) is optional and can be omitted
• Pipe or slash (e.g. “text1 | text2 | text3”): Alternation. One of multiple texts must be used (e.g. “text2”)
• Parenthesis: (e.g. “(word1 word2) | word3”): Groups multiple words together, used for alternations
• Everything else is to be read as literal text

Here are some examples to illustrate the command syntax:

• /mods: No parameters. Just enter “/mods”
• /me <action>: 1 parameter. You have to enter “/me ” followed by any text, e.g. “/me orders pizza”
• /give <name> <ItemString>: Two parameters. Example: “/give Player default:apple”
• /help [all|privs|<cmd>]: Valid inputs are “/help”, “/help all”, “/help privs”, or “/help ” followed by a command name, like “/help time”
• /spawnentity <EntityName> [<X>,<Y>,<Z>]: Valid inputs include “/spawnentity boats:boat” and “/spawnentity boats:boat 0,0,0”



Some final remarks:

• For /give and /giveme, you need an itemstring. This is an internally used unique item identifier
• For /spawnentity you need an entity name, which is another identifier]=]
}})

doc.new_entry("advanced", "privs", {
	name="Privileges",
	data= { text =
[=[Each player has a set of privileges, which differs from server to server. Your privileges determine what you can and can't do. Privileges can be granted and revoked from other players by any player who has the privilege called “privs”.

On a multiplayer server with the default configuration, new players start with the privileges called “interact” and “shout”. The “interact” privilege is required for the most basic gameplay actions such as building, mining, using, etc. The “shout” privilege allows to chat.

There is a small set of core privileges which you'll find on every server, other privileges might be added by mods.

To view your own privileges, issue the server command “/privs”.

Here are a few basic privilege-related commands:

• /privs: Lists your privileges
• /privs <player>: Lists the privileges of <player>
• /help privs: Shows a list and description about all privileges

Players with the “privs” privilege can modify privileges at will:

• /grant <player> <privilege>: Grant <privilege> to <player>
• /revoke <player> <privilege>: Revoke <privilege> from <player>

In single-player mode, you can use “/grant singleplayer all” to unlock all abilities (which is considered cheating).]=]
}})

doc.new_entry("basics", "light", {
	name = "Light",
	data = { text =
[=[As the world is entirely block-based, so is the light in the world. Each block has its own brightness. The brightness of a block is expressed in a “light level” which ranges from 0 (total darkness) to 15 (as bright as the sun).

There are two types of light: Sunlight and artificial light.

Artificial light is emitteed by luminous blocks. Artificial light has a light level from 1-14.
Sunlight is the brightest light and always goes perfectly straight down from the sky at each time of the day. blocks. At night, the sunlight will become moonlight instead, which still provides a small amount of light. The light level of sunlight is 15.

Blocks have 3 levels of transparency:

• Transparent: Sunlight goes through limitless, artificial light goes through with losses
• Semi-transparent: Sunlight and artificial light go through with losses
• Opaque: No light passes through

Artificial light will lose one level of brightness for each transparent or semi-transparent block it passes through, until only darkness remains (image 1).
Sunlight will preserve its brightness as long it only passes fully transparent blocks. When it passes through a semi-transparent block, it turns to artificial light. Image 2 shows the difference.

Note that “transparency” here does not always mean you can see through a block. It only means that the block is able to carry brightness from its neighboring blocks.]=],
		images = {{image="doc_basics_light_torch.png"}, {image="doc_basics_light_test.png"}}
}})

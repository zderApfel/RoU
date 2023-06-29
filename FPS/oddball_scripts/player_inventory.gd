extends Node


@onready var PLAYER_INVENTORY = {
	"HEAD_SLOT": null, # Item
	"BACKPACK_INVENTORY": {"MAX_SLOTS": 0, "OCCUPIED_SLOTS": 0, "ITEMS": []},
	"POCKET_INVENTORY": {"MAX_SLOTS": 8, "OCCUPIED_SLOTS": 0, "ITEMS": []},
	"HELMET": null,
	"ARMOR": null, # Item
	"WEAPON_SLOTS": {
		"TOOL": null,
		"SLING_WEAPON": null,
		"BACK_WEAPON": null,
		"HOLSTER_WEAPON": null,
		"SHEATH_WEAPON": null,
	},
	"HELD_ITEM": null,
}

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	inputs()
	use_item()

'''-----------------Inputs--------------------------'''

func inputs():
	if Input.is_action_just_released("inventory"):
		print(PLAYER_INVENTORY)
		
	if Input.is_action_just_released("tool"):
		draw_weapon(PLAYER_INVENTORY.WEAPON_SLOTS.TOOL)

	if Input.is_action_just_released("sling_weapon"):
		draw_weapon(PLAYER_INVENTORY.WEAPON_SLOTS.SLING_WEAPON)
		
	if Input.is_action_just_released("back_weapon"):
		draw_weapon(PLAYER_INVENTORY.WEAPON_SLOTS.BACK_WEAPON)
		
	if Input.is_action_just_released("holster_weapon"):
		draw_weapon(PLAYER_INVENTORY.WEAPON_SLOTS.HOLSTER_WEAPON)
		
	if Input.is_action_just_released("sheath_weapon"):
		#Add a block for adding fists as an option if there's nothing in the sheath
		
		draw_weapon(PLAYER_INVENTORY.WEAPON_SLOTS.SHEATH_WEAPON)
	if Input.is_action_just_released("stow_weapon"):
		stow_weapon()

'''-----------------Inventory Actions--------------------------'''

func use_item():
	if PLAYER_INVENTORY.HELD_ITEM != null:
		if Input.is_action_just_pressed("primary_action"):
			PLAYER_INVENTORY.HELD_ITEM.primary_action()

		if Input.is_action_just_pressed("secondary_action"):
			PLAYER_INVENTORY.HELD_ITEM.secondary_action()

func store_to_pockets(item):
		var x = PLAYER_INVENTORY.POCKET_INVENTORY.MAX_SLOTS
		var y = PLAYER_INVENTORY.POCKET_INVENTORY.OCCUPIED_SLOTS
		var z = item.bulk
			
		if (z+y) <= x:
			PLAYER_INVENTORY.POCKET_INVENTORY.ITEMS.append(item)
			PLAYER_INVENTORY.POCKET_INVENTORY.OCCUPIED_SLOTS += z
		else:
			print("Pockets full!")

func draw_weapon(weapon):
	if weapon != null and weapon != PLAYER_INVENTORY.HELD_ITEM:
		PLAYER_INVENTORY.HELD_ITEM = weapon
		equip(weapon)
		
	elif PLAYER_INVENTORY.HELD_ITEM != null and weapon == null:
		print("Slot is empty")
	
	elif PLAYER_INVENTORY.HELD_ITEM == null and weapon == null:
		print("Slot is empty")

func stow_weapon():
	PLAYER_INVENTORY.HELD_ITEM = null
	print("Weapon stowed")

func equip(weapon):
	print(weapon.display_name+" equipped")

func loot_action(item_to_loot):
	match item_to_loot.type:
		"Tool":
			PLAYER_INVENTORY.WEAPON_SLOTS.TOOL_SLOT.append(item_to_loot)
			
		"TwoHandFirearm":
			if PLAYER_INVENTORY.WEAPON_SLOTS.SLING_WEAPON == null:
				PLAYER_INVENTORY.WEAPON_SLOTS.SLING_WEAPON = item_to_loot
				
			else:
				if PLAYER_INVENTORY.WEAPON_SLOTS.BACK_WEAPON == null:
					PLAYER_INVENTORY.WEAPON_SLOTS.BACK_WEAPON = item_to_loot
				else:
					pass
		_:
			store_to_pockets(item_to_loot)

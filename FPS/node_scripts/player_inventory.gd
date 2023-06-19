extends Node

@onready var PLAYER_INVENTORY = {
	"HEAD_SLOT": null, # Item
	"BACKPACK": [],
	"POCKETS": [],
	"CHEST_SLOTS": [],
	"ARMOR_SLOT": null, # Item
	"CHEST_RIG": null, # Item
	"WEAPON_SLOTS": {
		"TOOL_SLOT": null,
		"SLING_WEAPON": null,
		"BACK_WEAPON": null,
		"HOLSTER_WEAPON": null,
		"SHEATHE_WEAPON": null,
	},
	"HELD_ITEM": null
}

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	inputs()
	use_item()
	

func loot_action(item_to_loot):
	match item_to_loot.type:
		"Item":
			PLAYER_INVENTORY.POCKETS.append(item_to_loot)

		"Tool":
			PLAYER_INVENTORY.WEAPON_SLOTS.TOOL_SLOT.append(item_to_loot)
			
		"TwoHandFirearm":
			if PLAYER_INVENTORY.WEAPON_SLOTS.SLING_WEAPON == null:
				PLAYER_INVENTORY.WEAPON_SLOTS.SLING_WEAPON = item_to_loot
				
			else:
				if PLAYER_INVENTORY.WEAPON_SLOTS.BACK_WEAPON == null:
					PLAYER_INVENTORY.WEAPON_SLOTS.BACK_WEAPON = item_to_loot
				else:
					print("No room!")

func inputs():
	if Input.is_action_just_released("inventory"):
		print(PLAYER_INVENTORY)
		
	if Input.is_action_just_released("tool"):
		draw_weapon(PLAYER_INVENTORY.WEAPON_SLOTS.TOOL_SLOT)

	if Input.is_action_just_released("sling_weapon"):
		draw_weapon(PLAYER_INVENTORY.WEAPON_SLOTS.SLING_WEAPON)
		
	if Input.is_action_just_released("back_weapon"):
		draw_weapon(PLAYER_INVENTORY.WEAPON_SLOTS.BACK_WEAPON)
		
	if Input.is_action_just_released("holster_weapon"):
		draw_weapon(PLAYER_INVENTORY.WEAPON_SLOTS.HOLSTER_WEAPON)
		
	if Input.is_action_just_released("sheathe_weapon"):
		draw_weapon(PLAYER_INVENTORY.WEAPON_SLOTS.SHEATHE_WEAPON)
	if Input.is_action_just_released("stow_weapon"):
		stow_weapon()
		
func use_item():
	if PLAYER_INVENTORY.HELD_ITEM != null:
		if Input.is_action_just_pressed("primary_action"):
			PLAYER_INVENTORY.HELD_ITEM.primary_action()

		if Input.is_action_just_pressed("secondary_action"):
			PLAYER_INVENTORY.HELD_ITEM.secondary_action()

'''------------------------------------------------------------------'''

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
	



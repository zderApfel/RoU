extends Node

@onready var HELD_ITEM_BODY_POSITION = get_tree().get_current_scene().get_node("Player/Body/held_item")

@onready var PLAYER_INVENTORY = {
	"HEAD_SLOT": null, # Item
	"BACKPACK": [],
	"POCKETS": [],
	"CHEST_SLOTS": [],
	"ARMOR_SLOT": null, # Item
	"CHEST_RIG": null, # Item
	"WEAPON_SLOTS": {
		"SLING_WEAPON": null,
		"BACK_WEAPON": null,
		"HOLSTER_WEAPON": null,
		"SHEATHE_WEAPON": null,
	},
	"HELD_WEAPON": null
}

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	inputs()

func loot_action(item_to_loot):
	match item_to_loot.type:
		"Item":
			PLAYER_INVENTORY.POCKETS.append(item_to_loot)
			
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

func draw_weapon(weapon):
	print(PLAYER_INVENTORY.WEAPON_SLOTS.SLING_WEAPON)
	if weapon != null and weapon != PLAYER_INVENTORY.HELD_WEAPON:
		PLAYER_INVENTORY.HELD_WEAPON = weapon
		equip(weapon)
		
	elif PLAYER_INVENTORY.HELD_WEAPON != null and weapon == null:
		print("Condition 2")
	
	elif PLAYER_INVENTORY.HELD_WEAPON == null and weapon == null:
		print("Condition 3")

func stow_weapon():
	PLAYER_INVENTORY.HELD_WEAPON = null
	print("Weapon stowed")

func equip(weapon):
	print(weapon.display_name+" equipped")

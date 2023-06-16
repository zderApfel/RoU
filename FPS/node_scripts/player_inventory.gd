extends Node

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
	match item_to_loot.SELF.TAG:
		"generic":
			PLAYER_INVENTORY.POCKETS.append(item_to_loot.SELF)
			item_to_loot.queue_free()
			
		"two_hand_firearm":
			if PLAYER_INVENTORY.WEAPON_SLOTS.SLING_WEAPON == null:
				PLAYER_INVENTORY.WEAPON_SLOTS.SLING_WEAPON = item_to_loot.SELF
				item_to_loot.queue_free()
				
			else:
				if PLAYER_INVENTORY.WEAPON_SLOTS.BACK_WEAPON == null:
					PLAYER_INVENTORY.WEAPON_SLOTS.BACK_WEAPON = item_to_loot.SELF
					item_to_loot.queue_free()
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
	
	if weapon != null and weapon != PLAYER_INVENTORY.HELD_WEAPON:
		PLAYER_INVENTORY.HELD_WEAPON = weapon
		print(weapon.DISPLAY_NAME+" equipped")
		
	elif PLAYER_INVENTORY.HELD_WEAPON != null and weapon == null:
		print("Empty slot!")
	
	elif PLAYER_INVENTORY.HELD_WEAPON == null and weapon == null:
		print("Empty slot!")

func stow_weapon():
	PLAYER_INVENTORY.HELD_WEAPON = null
	print("Weapon stowed")

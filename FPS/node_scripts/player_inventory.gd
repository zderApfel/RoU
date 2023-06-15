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
	}
}

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("inventory"):	
		print(PLAYER_INVENTORY)

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

func draw_weapon(x):
	print(x)
	match x:
		1:
			return PLAYER_INVENTORY.WEAPON_SLOTS.SLING_WEAPON
		2:
			return PLAYER_INVENTORY.WEAPON_SLOTS.BACK_WEAPON
		3:
			return PLAYER_INVENTORY.WEAPON_SLOTS.HOLSTER_WEAPON
		4:
			return PLAYER_INVENTORY.WEAPON_SLOTS.SHEATHE_WEAPON

func stow_weapon():
	print("Weapon stowed")

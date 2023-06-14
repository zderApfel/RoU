extends Node
@onready

var EMPTY = null

var PLAYER_INVENTORY = {
	"HEAD_SLOT": null, # Item
	"BACKPACK": [],
	"POCKETS": [],
	"CHEST_SLOTS": [],
	"ARMOR_SLOT": null, # Item
	"CHEST_RIG": null, # Item
	"WEAPON_SLOTS": {
		"BACK_WEAPON": null,
		"SLING_WEAPON": null,
		"HOLSTER_WEAPON": null,
		"SHEATH": null
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
			if PLAYER_INVENTORY.WEAPON_SLOTS.BACK_WEAPON == EMPTY:
				PLAYER_INVENTORY.WEAPON_SLOTS.BACK_WEAPON = item_to_loot.SELF
				item_to_loot.queue_free()
				
			else:
				if PLAYER_INVENTORY.WEAPON_SLOTS.SLING_WEAPON == EMPTY:
					PLAYER_INVENTORY.WEAPON_SLOTS.SLING_WEAPON = item_to_loot.SELF
					item_to_loot.queue_free()
				else:
					print("No room!")


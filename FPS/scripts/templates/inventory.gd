extends Node
@onready

var INVENTORY = {
	"HEAD_SLOT": null, # Item
	"BACK_SLOT": {
		"BACK_WEAPON": null, # Weapon
		"BACKPACK": null # Item
	},
	"ARMOR_SLOT": null, # Item
	"CHEST_SLOT": null, # Item
	"SLING_WEAPON": null, # Weapon
	"HOLSTER_WEAPON": null, # Item
	"EXTRA_SLOTS": {
		"POCKET_INVENTORY": [],
		"CHEST_INVENTORY": [],
		"BACK_INVENTORY": []
	}
}

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func loot_action(item_to_loot):

	if item_to_loot.SELF.TAG == "generic":
		INVENTORY.EXTRA_SLOTS.BACK_INVENTORY.append(item_to_loot)
		item_to_loot.queue_free()

	elif item_to_loot.SELF.TAG == "two_hand_firearm":
		
		if INVENTORY.BACK_SLOT.BACK_WEAPON == null && INVENTORY.SLING_WEAPON == null:
			INVENTORY.BACK_SLOT.BACK_WEAPON = item_to_loot
			item_to_loot.queue_free()
			
		if INVENTORY.BACK_SLOT.BACK_WEAPON == null && INVENTORY.SLING_WEAPON != null:
			INVENTORY.SLING_WEAPON = item_to_loot
			item_to_loot.queue_free()
			
		elif INVENTORY.BACK_SLOT.BACK_WEAPON != null && INVENTORY.SLING_WEAPON != null: 
			print("No room!")
			
	print("   ")
	print(INVENTORY.EXTRA_SLOTS.BACK_INVENTORY)
	if INVENTORY.BACK_SLOT.BACK_WEAPON != null: 
		print(INVENTORY.BACK_SLOT.BACK_WEAPON.SELF.DISPLAY_NAME)
	if INVENTORY.SLING_WEAPON != null:
		print(INVENTORY.SLING_WEAPON.SELF.DISPLAY_NAME)
	print("   ")

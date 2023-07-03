extends Node

@onready var INVENTORY = {
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

@onready var RIGHT_HAND = get_tree().get_current_scene().get_node("player/Skeleton3D/right_hand/hold_area")
@onready var LEFT_HAND = get_tree().get_current_scene().get_node("player/Skeleton3D/left_hand/hold_area")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	inputs()
	use_item()

'''-----------------Inputs--------------------------'''

func inputs():
	if Input.is_action_just_released("inventory"):
		print(INVENTORY)
		
	if Input.is_action_just_released("tool"):
		draw_weapon(INVENTORY.WEAPON_SLOTS.TOOL)

	if Input.is_action_just_released("sling_weapon"):
		draw_weapon(INVENTORY.WEAPON_SLOTS.SLING_WEAPON)
		
	if Input.is_action_just_released("back_weapon"):
		draw_weapon(INVENTORY.WEAPON_SLOTS.BACK_WEAPON)
		
	if Input.is_action_just_released("holster_weapon"):
		draw_weapon(INVENTORY.WEAPON_SLOTS.HOLSTER_WEAPON)
		
	if Input.is_action_just_released("sheath_weapon"):
		#Add a block for adding fists as an option if there's nothing in the sheath
		
		draw_weapon(INVENTORY.WEAPON_SLOTS.SHEATH_WEAPON)
	if Input.is_action_just_released("stow_weapon"):
		if INVENTORY.HELD_ITEM != null:
			stow_weapon()

'''-----------------Inventory Actions--------------------------'''

func use_item():
	if INVENTORY.HELD_ITEM != null:
		if Input.is_action_just_pressed("primary_action"):
			INVENTORY.HELD_ITEM.primary_action()

		if Input.is_action_just_pressed("secondary_action"):
			INVENTORY.HELD_ITEM.secondary_action()

func store_to_pockets(item):
		var x = INVENTORY.POCKET_INVENTORY.MAX_SLOTS
		var y = INVENTORY.POCKET_INVENTORY.OCCUPIED_SLOTS
		var z = item.bulk
			
		if (z+y) <= x:
			INVENTORY.POCKET_INVENTORY.ITEMS.append(item)
			INVENTORY.POCKET_INVENTORY.OCCUPIED_SLOTS += z
		else:
			print("Pockets full!")

func draw_weapon(weapon):
	
	
	if weapon != null and weapon != INVENTORY.HELD_ITEM:
		INVENTORY.HELD_ITEM = weapon
		INVENTORY.HELD_ITEM.freeze = true
		INVENTORY.HELD_ITEM.is_lootable = false
		
		
		if INVENTORY.HELD_ITEM != null: RIGHT_HAND.add_child(INVENTORY.HELD_ITEM)
		
		print(INVENTORY.HELD_ITEM.display_name + " drawn")
		
	elif INVENTORY.HELD_ITEM != null and weapon == null:
		print("Slot is empty")
	
	elif INVENTORY.HELD_ITEM == null and weapon == null:
		print("Slot is empty")


func stow_weapon():
	INVENTORY.HELD_ITEM = null
	for y in RIGHT_HAND.get_children():
		RIGHT_HAND.remove_child(y)
	print("Weapon stowed")


func loot_action(item_to_loot):
	print(item_to_loot.display_name)
	
	#if item_to_loot is Tool:
		#INVENTORY.WEAPON_SLOTS.TOOL_SLOT.append(item_to_loot)
	if item_to_loot is TwoHandFirearm:
		if INVENTORY.WEAPON_SLOTS.SLING_WEAPON == null:
			INVENTORY.WEAPON_SLOTS.SLING_WEAPON = item_to_loot
	
		else:
			if INVENTORY.WEAPON_SLOTS.BACK_WEAPON == null:
				INVENTORY.WEAPON_SLOTS.BACK_WEAPON = item_to_loot
			else:
				pass
	else:
		store_to_pockets(item_to_loot)

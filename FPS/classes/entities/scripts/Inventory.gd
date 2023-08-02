extends Node

@onready var PLAYER = get_parent()

@onready var HOLD_SLOT = PLAYER.get_node("pivot/Camera3D/hold_slot")
@onready var UNARMED = preload("res://nodes/items/Melee Weapon/fists.tscn").instantiate()

@onready var INVENTORY = {
	"BACKPACK_INVENTORY": {"MAX_SLOTS": 0, "OCCUPIED_SLOTS": 0, "ITEMS": []},
	"POCKET_INVENTORY": {"MAX_SLOTS": 8, "OCCUPIED_SLOTS": 0, "ITEMS": []},
	"WEAPON_SLOTS": {
		"SLING_WEAPON": null,
		"BACK_WEAPON": null,
		"HOLSTER_WEAPON": null,
		"SHEATH_WEAPON": null,
	},
	"HELMET": null,
	"ARMOR": null, 
	"BACKPACK": null,
}

@onready var HOTBAR = [
	null, #Slot 5
	null, #Slot 6
	null, #Slot 7
	null, #Slot 8
	null, #Slot 9
	null #Slot 0
]

func _ready():
	Helpers.switch_child(HOLD_SLOT,UNARMED)

func _physics_process(_delta):
	inputs()

'''-----------------Inputs--------------------------'''

func inputs():
	var z
	if Input.is_action_just_released("hotbar0"):
		z = 5
		Helpers.switch_child(HOLD_SLOT,HOTBAR[z])
		
	if Input.is_action_just_released("hotbar1"):
		Helpers.switch_child(HOLD_SLOT,INVENTORY.WEAPON_SLOTS.SLING_WEAPON)
	
	if Input.is_action_just_released("hotbar2"):
		Helpers.switch_child(HOLD_SLOT,INVENTORY.WEAPON_SLOTS.BACK_WEAPON)
	
	if Input.is_action_just_released("hotbar3"):
		Helpers.switch_child(HOLD_SLOT,INVENTORY.WEAPON_SLOTS.HOLSTER_WEAPON)
	
	if Input.is_action_just_released("hotbar4"):
		if INVENTORY.WEAPON_SLOTS.SHEATH_WEAPON != null:
			pass
		else:
			Helpers.switch_child(HOLD_SLOT, UNARMED)
	
	if Input.is_action_just_released("hotbar5"):
		z = 0
		Helpers.switch_child(HOLD_SLOT,HOTBAR[z])
	
	if Input.is_action_just_released("hotbar6"):
		z = 1
		Helpers.switch_child(HOLD_SLOT,HOTBAR[z])
	
	if Input.is_action_just_released("hotbar7"):
		z = 2
		Helpers.switch_child(HOLD_SLOT,HOTBAR[z])
	
	if Input.is_action_just_released("hotbar8"):
		z = 3
		Helpers.switch_child(HOLD_SLOT,HOTBAR[z])
	
	if Input.is_action_just_released("hotbar9"):
		z = 4
		Helpers.switch_child(HOLD_SLOT,HOTBAR[z])
		
	if Input.is_action_just_released("inventory"):
		print(INVENTORY)
	

	
'''-----------------Inventory Actions--------------------------'''
		
func store_to_pockets(item):
		var x = INVENTORY.POCKET_INVENTORY.MAX_SLOTS
		var y = INVENTORY.POCKET_INVENTORY.OCCUPIED_SLOTS
		var z = item.bulk
			
		if (z+y) <= x:
			INVENTORY.POCKET_INVENTORY.ITEMS.append(item)
			INVENTORY.POCKET_INVENTORY.OCCUPIED_SLOTS += z
		else:
			print("Pockets full!")


func loot_action(item_to_loot):
	if item_to_loot.hands == 1:
		if INVENTORY.WEAPON_SLOTS.SLING_WEAPON == null:
			INVENTORY.WEAPON_SLOTS.SLING_WEAPON = item_to_loot
	
		else:
			if INVENTORY.WEAPON_SLOTS.BACK_WEAPON == null:
				INVENTORY.WEAPON_SLOTS.BACK_WEAPON = item_to_loot
			else:
				pass
	else:
		store_to_pockets(item_to_loot)

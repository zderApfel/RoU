extends Node

@onready var PLAYER = get_parent()

@onready var HOLD_SLOT = PLAYER.get_node("Skeleton3D/neck/Camera3D/first_person")
@onready var UNARMED = load("res://nodes/entities/fp_arms/unarmed.tscn")
@onready var HELD_ITEM = UNARMED
#Instantiate when ready to use

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
	"ARMOR": null, # Item
	"BACKPACK": null,
}

@onready var HOTBAR = [
	{"item": UNARMED, "active": true},
	{"item": INVENTORY.WEAPON_SLOTS.SLING_WEAPON, "active": false},
	{"item": INVENTORY.WEAPON_SLOTS.BACK_WEAPON, "active": false},
	{"item": INVENTORY.WEAPON_SLOTS.HOLSTER_WEAPON, "active": false},
	{"item": INVENTORY.WEAPON_SLOTS.SHEATH_WEAPON, "active": false},
	{"item": null, "active": false},
	{"item": null, "active": false},
	{"item": null, "active": false},
	{"item": null, "active": false},
	{"item": null, "active": false}
]
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	inputs()

'''-----------------Inputs--------------------------'''

func inputs():
	
	
	if Input.is_action_just_released("hotbar0"):
		#Load the item in each option
		Helpers.bool_switch(HOTBAR[0].active)
		change_item()
		
	if Input.is_action_just_released("hotbar1"):
		Helpers.bool_switch(HOTBAR[1].active)
		change_item()
	
	if Input.is_action_just_released("hotbar2"):
		Helpers.bool_switch(HOTBAR[2].active)
		change_item()
	
	if Input.is_action_just_released("hotbar3"):
		Helpers.bool_switch(HOTBAR[3].active)
		change_item()
	
	if Input.is_action_just_released("hotbar4"):
		Helpers.bool_switch(HOTBAR[4].active)
		change_item()
	
	if Input.is_action_just_released("hotbar5"):
		Helpers.bool_switch(HOTBAR[5].active)
		change_item()
	
	if Input.is_action_just_released("hotbar6"):
		Helpers.bool_switch(HOTBAR[6].active)
		change_item()
	
	if Input.is_action_just_released("hotbar7"):
		Helpers.bool_switch(HOTBAR[7].active)
		change_item()
	
	if Input.is_action_just_released("hotbar8"):
		Helpers.bool_switch(HOTBAR[8].active)
		change_item()
	
	if Input.is_action_just_released("hotbar9"):
		Helpers.bool_switch(HOTBAR[9].active)
		change_item()
		
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

func change_item():
	
	pass


func loot_action(item_to_loot):
	if item_to_loot.hands == "2":
		if INVENTORY.WEAPON_SLOTS.SLING_WEAPON == null:
			INVENTORY.WEAPON_SLOTS.SLING_WEAPON = item_to_loot
	
		else:
			if INVENTORY.WEAPON_SLOTS.BACK_WEAPON == null:
				INVENTORY.WEAPON_SLOTS.BACK_WEAPON = item_to_loot
			else:
				pass
	else:
		store_to_pockets(item_to_loot)

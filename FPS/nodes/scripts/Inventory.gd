extends Node

@onready var PLAYER = get_parent()

@onready var HOLD_SLOT = PLAYER.get_node("Skeleton3D/neck/Camera3D/first_person/")
@onready var UNARMED = preload("res://nodes/items/Generic/dingdong.tscn").instantiate()

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
	UNARMED, #Slots 0, and 5-9
	null,
	null,
	null,
	null,
	null
]

func _ready():
	change_item(UNARMED)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	inputs()

'''-----------------Inputs--------------------------'''

func inputs():
	var z
	if Input.is_action_just_released("hotbar0"):
		z = 0
		change_item(HOTBAR[z])
		
	if Input.is_action_just_released("hotbar1"):
		change_item(INVENTORY.WEAPON_SLOTS.SLING_WEAPON)
	
	if Input.is_action_just_released("hotbar2"):
		change_item(INVENTORY.WEAPON_SLOTS.BACK_WEAPON)
	
	if Input.is_action_just_released("hotbar3"):
		change_item(INVENTORY.WEAPON_SLOTS.HOLSTER_WEAPON)
	
	if Input.is_action_just_released("hotbar4"):
		change_item(INVENTORY.WEAPON_SLOTS.SHEATH_WEAPON)
	
	if Input.is_action_just_released("hotbar5"):
		z = 5
		change_item(HOTBAR[z])
	
	if Input.is_action_just_released("hotbar6"):
		z = 6
		change_item(HOTBAR[z])
	
	if Input.is_action_just_released("hotbar7"):
		z = 7
		change_item(HOTBAR[z])
	
	if Input.is_action_just_released("hotbar8"):
		z = 8
		change_item(HOTBAR[z])
	
	if Input.is_action_just_released("hotbar9"):
		z = 9
		change_item(HOTBAR[z])
		
	if Input.is_action_just_released("inventory"):
		print(INVENTORY)

	
'''-----------------Inventory Actions--------------------------'''

func change_item(x):
	if x != null:
		var y = load(x.arm_path).instantiate()
		
		if HOLD_SLOT.get_children() != []:
			HOLD_SLOT.get_children()[0].queue_free()


		print(y)
		HOLD_SLOT.add_child(y)

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

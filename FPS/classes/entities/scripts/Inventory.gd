class_name Inventory extends Node

## Maximum bulk for pockets
@export var pockets_max_bulk: float = 8.0 #+ PACK_RAT_BONUS
## Current bulk used up in pockets
@export var pockets_bulk: float = 0.0

@onready var pockets = []
@onready var sheath: Item = null
@onready var holster: Firearm = null
@onready var sling: Firearm = null
@onready var head = null #Helmet
@onready var armor = null #Armor
@onready var backpack = null #Backpack

func ready():
	pass

func _physics_process(delta):
	inputs()

func inputs():
	if Input.is_action_just_pressed("inventory"):
		print(pockets)
		print(sheath)
		print(holster)
		print(sling)
		print(head)
		print(armor)
		print(backpack)

'''-----------------Inventory Actions--------------------------'''

func loot_action(item_to_loot) -> void:
	print("Attempting to loot "+item_to_loot.display_name)
	
	match item_to_loot.get_class():
		"Firearm":
			store_to(sling, item_to_loot)
		"MeleeWeapon":
			pass
		"Bullet":
			pass
		"Tool":
			pass
		_:
			store_to(pockets, item_to_loot)

func store_to(slot, item) -> void:
	var z = load(item.uid).instantiate()
	item.queue_free()
	
	match slot:
		pockets:
			store_to_pockets(z)
		sheath:
			if sheath.get_children() != []:
				sheath = z
			else:
				store_to_pockets(z)

func store_to_pockets(item):
	if pockets_bulk + item.bulk <= pockets_max_bulk:
			pockets.append(item)
	else:
		print("Pockets full!")

class_name Inventory extends Node

## Maximum bulk for pockets
@export var pockets_max_bulk: float = 8.0 #+ PACK_RAT_BONUS
## Current bulk used up in pockets
@export var pockets_bulk: float = 0.0

var fists = load("uid://yp3kbmhj4ipg").instantiate()

@onready var pockets = []
@onready var unarmed = {"name": "unarmed", "item": fists}
@onready var sheath = {"name": "sheath", "item": null}
@onready var holster = {"name": "holster", "item": null}
@onready var sling = {"name": "sling", "item": null}
@onready var head = {"name": "head", "item": null}
@onready var armor = {"name": "armor", "item": null}
@onready var backpack = {"name": "backpack", "item": null}

@onready var hold_slot = get_parent().get_node("pivot/Camera3D/hold_slot")
@onready var active_slot

func _ready():
	if active_slot == null:
		unarmed.item.when_held(true)
		hold_slot.add_child(unarmed.item)
		unarmed.item.reposition()
		
		active_slot = unarmed

func _physics_process(delta):
	inputs()

func inputs():
	if Input.is_action_just_pressed("inventory"):
		print(pockets)
		print(sheath.item)
		print(holster.item)
		print(sling.item)
		print(head.item)
		print(armor.item)
		print(backpack.item)
		
	if Input.is_action_just_pressed("unarmed"):
		switch_item(hold_slot, unarmed)
		
	if Input.is_action_just_pressed("sling_weapon"):
		switch_item(hold_slot, sling)

'''-----------------Inventory Actions--------------------------'''

func loot_action(item_to_loot) -> void:
	print("Attempting to loot "+item_to_loot.display_name)
	
	match item_to_loot.item_type:
		"MeleeWeapon": # Melee Weapon
			pass
		"Firearm": # Firearm
			store_to(sling, item_to_loot)
		_:
			store_to(pockets, item_to_loot)

func store_to(slot, item) -> void:
	var z = item.dupe_self()
	z.when_held(true)

	item.queue_free()
	
	match slot:
		pockets:
			store_to_pockets(z)
		sling:
			if sling.item == null:
				sling.item = z
			else:
				store_to_pockets(z)

func store_to_pockets(item):
	if pockets_bulk + item.bulk <= pockets_max_bulk:
			pockets.append(item)
	else:
		print("Pockets full!")

func switch_item(parent, new_child):
	var x
			
	if active_slot.item != null:
		x = active_slot.item.dupe_self()
		active_slot.item = x
	
	if parent.get_children() != [] and new_child.item != null:
		parent = Helpers.familicide(parent)
		
		new_child.item.when_held(true)
		
		parent.add_child(new_child.item)
		new_child.item.reposition()

	active_slot = new_child

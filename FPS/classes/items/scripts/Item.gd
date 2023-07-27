class_name Item extends Node3D

@onready var equipped: bool = false
@onready var type = "Generic"

## In-game name of the item
@export var display_name: String

## In-game description
@export var description: String

## If the item is looatable
@export var is_lootable: bool = true

## If the item can be physically held by the character
@export var is_holdable: bool = false

## If the item can stack (be be combined with other identical items)
@export var is_stackable: bool = false

## If this is false, you will incite frightened/hostile response from most people when held
@export var legal: bool = true

## The item's rarity for loot pools
@export_enum("N/A","Common","Uncommon","Rare","Epic","Legendary") var rarity: int

## The item's damage type (if applicable)
@export_enum("None", "Ballistic", "Bludgeon", "Pierce", "Slash", "Poison", "Fire", "Caustic", "Fire", "Explosive", "Impulse") var damage_type: int

## How many of this item there are in any instance
@export var amount: int = 1

## How many you can stack together
@export var max_stack: int = 1

## A value that represents the space the item takes up in inventory
@export var bulk: float = 1

## MAY BE DEPRICIATED
@export_enum("1", "2") var hands: int

## MAY BE DEPRICIATED
@export var arm_path: String

## MAY BE DEPRICIATED
@export_enum("unarmed", "onehand_gun", "twohand_gun", "onehand_melee", "twohand_melee") var pose: String



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	bulk = bulk * amount

func equip():
	if equipped: #Unequip action
		equipped = false
		
	else: #Equip action
		equipped = true

func primary_action():
	if Input.is_action_just_pressed("primary_action"):
		print("Primary Action")

func secondary_action():
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")

func _physics_process(delta):
	equip()

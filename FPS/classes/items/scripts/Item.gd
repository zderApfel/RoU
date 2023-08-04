class_name Item extends Node3D

## In-game name of the item
@export var display_name: String

## Internal reference
@export var uid: String

@export var held: bool

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

## How many hands this weapon requires (used for looting algorithms)
@export_enum("1", "2") var hands: int

@export var first_person_position: Vector3

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	bulk = bulk * amount
	when_held()


func primary_action():
	if Input.is_action_just_pressed("primary_action"):
		print("Primary Action")

func secondary_action():
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")

func when_held():
	if self.held:
		$CollisionShape3D.disabled = false
		self.freeze = true
	
	else:
		$CollisionShape3D.disabled = true
		self.freeze = false

class_name Item extends Node3D

## In-game name of the item
@export var display_name: String

## Internal reference (Depreciated)
#@export var uid: String

## If the item is held, used for stopping it from doing actions when existing in the world
@export var is_held: bool = false

## If the item is lootable
@export var is_lootable: bool = true

## If the item can be physically held by the character
@export var is_holdable: bool = false

## If the item can stack (be be combined with other identical items)
@export var is_stackable: bool = false

## If this is false, you will incite frightened/hostile response from most people when held
@export var legal: bool = true

## The Item's Type
@export_enum("Generic", "Melee Weapon", "Firearm", "Bullet", "Tool", "Armor", "Helmet", "Backpack") var type: int

## The item's rarity for loot pools
@export_enum("N/A","Common","Uncommon","Rare","Epic","Legendary") var rarity: int

## How many of this item there are in any instance
@export var amount: int = 1

## How many you can stack together
@export var max_stack: int = 1

## A value that represents the space the item takes up in inventory
@export var bulk: float = 1

## How many hands this weapon requires (used for looting algorithms)
@export_enum("1", "2") var hands: int

@export var first_person_position: Vector3

func _physics_process(delta):
	if self.is_held: primary_action(delta)
	if self.is_held: secondary_action(delta)


func primary_action(triangle):
	if Input.is_action_just_pressed("primary_action"):
		pass

func secondary_action(triangle):
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")

func when_held(x: bool):
	if x == true:
		if self.hands == 0:
			$right_arm.visible = true
		elif self.hands == 1:
			$right_arm.visible = true
			$left_arm.visible = true
			
		$CollisionShape3D.disabled = true
		self.freeze = true
		self.is_lootable = false
		self.is_held = true
	
	else:
		$right_arm.visible = false
		$left_arm.visible = false
		$CollisionShape3D.disabled = false
		self.freeze = false
		self.is_lootable = true
		self.is_held = false

func dupe_self() -> Item:
	var x = self.duplicate()
	return x

func reposition():
	self.rotation = Vector3.ZERO
	self.position = self.first_person_position

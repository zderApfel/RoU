class_name Item extends Node3D

@export_category("Technical")
## In-game name of the item
@export var display_name: String

## The Item's Type
@export_enum("Generic", "Melee Weapon", "Firearm", "Bullet", "Tool", "Armor", "Helmet", "Backpack") var type: String = "Generic"

## The item's rarity for loot pools
@export_enum("N/A","Common","Uncommon","Rare","Epic","Legendary") var rarity: String = "N/A"

## Not implemented yet
@export var amount: int = 1

@export var bulk: int = 1

## Not implemented yet
@export var max_stack: int = 1

## An animation step counter
@export var animation_step: int = 0

## How many hands this weapon requires (used for looting algorithms)
@export_enum("1", "2") var hands: int

## DO NOT EDIT
@export var is_held: bool = false

## If the item is lootable
@export var is_lootable: bool = true

## If this is false, you will incite frightened/hostile response from most people when held
@export var legal: bool = true

## Blocks inputs when enabled
@export var block_inputs: bool = false

## Where the weapon's first person viewmodel should be positioned
@export var first_person_position: Vector3

@export_category("Offensive")
## The three damage values that this item does when attacking
## Leave this zero for non-offensive items
## In order: Health Points, Balance Points, Armor Points
@export var damage: Array = [0.0, 0.0, 0.0]

## The damage type of the item when used as a melee weapon
## Defaults to bludgeon
@export_enum("Bludgeon", "Pierce", "Slash", "Poison", "Shock", "Fire", "Explosive", "Frost") var damage_type: String = "Bludgeon"

## The strength of the weapon's block-parry.
## In a block-parry contest, the higher block-parry wins.
## A lost parry results in severe BP loss and a small amount of HP loss.
## A lost block results in mild BP and HP loss.
## A tie favors the blocker.
@export var block_parry_level: int

## Chance to land a critical hit
## Is a range from 0 to 1
@export var crit_chance: float

## What to multiply the damage by
@export var crit_modifier: float

func _ready():
	if is_held: to_idle()
	block_inputs = false

func _physics_process(delta):
	if self.is_held: 
		primary_action(delta)
		secondary_action(delta)


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
		to_idle()
		if "freeze" in self: self.freeze = true
		self.is_lootable = false
		self.is_held = true
	else:
		$right_arm.visible = false
		$left_arm.visible = false
		$CollisionShape3D.disabled = false
		$AnimationPlayer.play("RESET")
		if "freeze" in self: self.freeze = false
		self.is_lootable = true
		self.is_held = false

func dupe_self() -> Item:
	var x = self.duplicate()
	return x

func reposition():
	self.rotation = Vector3.ZERO
	self.position = self.first_person_position
	self.scale = Vector3(0.75, 0.75, 0.75)

func to_idle():
	$AnimationPlayer.play("idle")
	animation_step = 0

func melee_strike(hitbox, weapon_damage, weapon_damage_type: String = "Bludgeon"):
	hitbox.struck(weapon_damage, weapon_damage_type)
	

class_name Firearm extends Item

## The caliber that the gun fires
@export_enum("762x39","545x39","556x45", "310", "22lr", "9x19", "45 acp", "44 Magnum", "12 Gauge") var caliber: int

## The currently loaded ammo variant
@export_enum("FMJ", "HP", "FMJ+P", "T", "AP", "S") var loaded_type: int

## Lowest random value to affect accuracy by
@export var accuracy_min: float

## Highest random value to affect accuracy by
@export var accuracy_max: float

## Speed of the bullet after coming out of the gun
@export var muzzle_velocity: float = 0.0

## Maximum ammo that can be loaded at any time. Most guns can have a +1 for one in the chamber
@export var max_ammo: int

## How much ammo is in the current magazine
@export var current_ammo: int = 0


@onready var format_string = "res://nodes/items/Ammo/%s.tscn"
@onready var ammo = format_string % caliber
@onready var muzzle: Node3D

func _process(_delta):
	pass

func primary_action():
	if Input.is_action_just_pressed("primary_action"):
		var x = load(ammo).instantiate()
		
		muzzle.add_child(x)
		x.transform = muzzle.transform
		x.VELOCITY = -x.transform.basis.z * x.MUZZLE_VELOCITY
		#print("Primary Action")

func secondary_action():
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")

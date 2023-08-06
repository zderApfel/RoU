class_name Firearm extends Item

## The caliber that the gun fires
@export_enum("N/A", "7.62 SOVIET", "7.62 RIMMED", "5.45x39", "5.56x45", ".308 WINAR", ".300 Blackout", "5.7x28", ".22lr", "9x19", ".45 acp", ".44 Magnum", ".50 AE", "12 Gauge") var caliber: int

## Lowest random value to affect accuracy by
@export var accuracy_min: float

## Highest random value to affect accuracy by
@export var accuracy_max: float

## Speed of the bullet after coming out of the gun
@export var muzzle_velocity: float = 0.0


@onready var format_string = "res://nodes/items/Ammo/%s.tscn"
@onready var ammo = format_string % caliber
@onready var muzzle: Node3D

func ready():
	muzzle = $main_body/muzzle_slot

func _process(_delta):
	pass

func primary_action():
	if Input.is_action_just_pressed("primary_action"):
		var x = load(ammo).instantiate()
		
		muzzle.add_child(x)
		x.transform = muzzle.transform
		x.VELOCITY = -x.transform.basis.z * x.MUZZLE_VELOCITY
		print("POW")

func secondary_action():
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")

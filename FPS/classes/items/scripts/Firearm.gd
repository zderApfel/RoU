class_name Firearm extends Item

## The caliber that the gun fires. Non-technical
@export_enum("N/A", "7.62 SOVIET", "7.62 RIMMED", "5.45 RU", "5.56 NATO", "7.62 NATO", ".300 Blackout", ".22 LR", "9mm LE", ".45acp", "Five Seven", ".44 Magnum", ".50 AE", "12 Gauge") var caliber: int

## The UID for the ammo used by this gun. Used for technical reference
@export var ammo: String

## Lowest random value to affect accuracy by
@export var accuracy_min: float

## Highest random value to affect accuracy by
@export var accuracy_max: float

## Speed of the bullet after coming out of the gun
@export var muzzle_velocity: float = 0.0

@onready var muzzle: Node

func ready():
	print(get_parent())

func _physics_process(delta):
	self.primary_action(delta)
	self.secondary_action(delta)

func primary_action(triangle):
	if Input.is_action_just_pressed("primary_action"):
		
		$AnimationPlayer.stop()
		$AnimationPlayer.play("shoot")

func secondary_action(triangle):
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")

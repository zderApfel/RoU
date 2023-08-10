class_name Firearm extends Item

## The caliber that the gun fires. Non-technical
@export_enum("N/A", "7.62 SOVIET", "7.62 RIMMED", "5.45 RU", "5.56 NATO", "7.62 NATO", ".300 Blackout", ".22 LR", "9mm LE", ".45acp", "Five Seven", ".44 Magnum", ".50 AE", "12 Gauge") var caliber: int

## The UID for the ammo used by this gun. Used for technical reference
@export var ammo: String

## Lowest random value to affect accuracy by
@export var recoil_horizontal: float

## Highest random value to affect accuracy by
@export var recoil_vertical: float

## Speed of the bullet after coming out of the gun
@export var muzzle_velocity: float = 0.0

@onready var muzzle: Node


func ready():
	pass

func _physics_process(delta):
	if is_held: self.primary_action(delta)
	if is_held: self.secondary_action(delta)

func primary_action(triangle):
	if Input.is_action_just_pressed("primary_action"):
		shoot()

func secondary_action(triangle):
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")

func shoot():
	$AnimationPlayer.stop()
	$AnimationPlayer.play("shoot")

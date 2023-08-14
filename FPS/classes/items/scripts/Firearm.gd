class_name Firearm extends Item

## The caliber that the gun fires. Non-technical
@export_enum("N/A", "7.62 SOVIET", "7.62 RIMMED", "5.45 RU", "5.56 NATO", "7.62 NATO", ".300 Blackout", ".22 LR", "9mm LE", ".45acp", "Five Seven", ".44 Magnum", ".50 AE", "12 Gauge") var caliber: int

## If the gun can switch from semi to fully automatic
@export var is_automatic: bool = false

## The UID for the ammo used by this gun. Used for technical reference
@export var ammo: String

## How much recoil this gun has when firing
@export var recoil: float

## Maxmimum ammo in a magazine
@export var max_ammo: int

## Current ammo in the gun
@export var current_ammo: int

## Speed of the bullet after coming out of the gun
@export var muzzle_velocity: float = 0.0

@onready var bullet: Bullet
@onready var muzzle = $muzzle


func ready():
	pass

func _physics_process(delta):
	current_ammo = clamp(current_ammo,0,max_ammo)
	if is_held: 
		self.primary_action(delta)
	if is_held: self.secondary_action(delta)
	if is_held: self.reload()

func primary_action(triangle) -> void:
	if Input.is_action_just_pressed("primary_action") and current_ammo > 0:
		$AnimationPlayer.play("RESET")
		$AnimationPlayer.play("shoot")
		shoot()

func secondary_action(triangle) -> void:
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")

func reload() -> void:
	if Input.is_action_just_pressed("reload") and current_ammo != max_ammo:
		if current_ammo == 0:
			$AnimationPlayer.play("reload_empty")
			await $AnimationPlayer.animation_finished
			to_idle()
		else:
			$AnimationPlayer.play("reload")
			await $AnimationPlayer.animation_finished
			to_idle()
			
		print("Reloading weapon...")

func shoot() -> void:
	bullet = load(ammo).instantiate()
	bullet = bullet.duplicate()
	
	Helpers.get_world(self).add_child(bullet)
	
	bullet.transform = muzzle.global_transform
	bullet.is_flying = true
	bullet.muzzle_velocity = muzzle_velocity
	bullet.velocity = -bullet.transform.basis.z * muzzle_velocity
	
	current_ammo -= 1
	
	print(current_ammo)
	print("---")
	print(max_ammo)

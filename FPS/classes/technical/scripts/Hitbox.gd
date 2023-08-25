class_name Hitbox extends Area3D

## The "switch" for the hitbox
@export var accepting_pain: bool = true
@export var just_struck: bool = false

@export var hp_mod: float
@export var bp_mod: float

## The bone that this hitbox is linked to
## Do not like this if you don't want these bones to be simulated
@export var linked_bone: PhysicalBone3D
## The skeleton to which the bones are from
@export var skeleton: Skeleton3D
@export var vitals: Vitals

func _physics_process(delta):
	pass

func struck(weapon_type, damage, damage_type: String = "Bludgeoning", strike_impulse: Vector3 = Vector3.ZERO, strike_from: Vector3 = Vector3.ZERO) -> void:

	var hp_damage: float
	var bp_damage: float
	
	var impulse: Vector3
	var from: Vector3

	if weapon_type == "Melee Weapon":
		hp_damage = damage[0]*.75
		bp_damage = damage[1]*1.25
	else:
		hp_damage = damage[0]*hp_mod
		bp_damage = damage[1]*bp_mod
	
	vitals.help_or_hurt(hp_damage, bp_damage)


class_name Hitbox extends Area3D

## The "switch" for the hitbox
@export var accepting_pain: bool = true

@export var hp_mod: float
@export var bp_mod: float

@export var vitals: Vitals


func struck(damage, damage_type: String = "Bludgeoning") -> void:
	var hp_damage = damage[0]*hp_mod
	var bp_damage = damage[1]*bp_mod
	
	vitals.help_or_hurt(hp_damage, bp_damage)


class_name Hitbox extends Area3D

## The "switch" for the hitbox
@export var accepting_pain: bool = true

@export var hp_mod: float
@export var bp_mod: float

@export var vitals: Vitals


func struck(damage):
	damage[0] = damage[0]*hp_mod
	damage[1] = damage[1]*bp_mod
	vitals.hurt(damage)

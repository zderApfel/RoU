class_name Hitbox extends Area3D

## The "switch" for the hitbox
@export var accepting_pain: bool = true

@export var hp_mod: float
@export var bp_mod: float

@export var vitals: Vitals

@onready var hp_damage: float
@onready var bp_damage: float


func struck(damage, damage_type: String = "Bludgeoning") -> void:
	hp_damage = damage[0]*hp_mod
	bp_damage = damage[1]*bp_mod
	
	vitals.help_or_hurt(hp_damage, bp_damage)


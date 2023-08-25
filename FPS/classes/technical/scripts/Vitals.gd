class_name Vitals extends Node

@export_range(0,100) var Health: float = 100.0
@export_range(0,100) var Balance: float = 100.0

@export_range(0,100) var Stamina: float = 100.0

func _process(delta):
	pass

'''-----------------------------------------'''

func help_or_hurt(hp, bp) -> void:
	Health = clamp(Health - hp, 0, 100)
	Balance = clamp(Balance - bp, 0, 100)

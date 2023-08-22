class_name Vitals extends Node

@export_range(0,100) var Health: float = 100.0
@export_range(0,100) var Balance: float = 100.0

@export_range(0,100) var Stamina: float = 100.0

func _process(delta):
	pass

'''-----------------------------------------'''

func hurt(by) -> void:
	Health -= by[0]
	Balance -= by[1]
	
	print(Health)
	
	
	

class_name Vitals extends Node

@export var Health: float = 100.0
@export var Balance: float = 100.0

@export var Stamina: float = 100.0

func _process(delta):
	pass

'''-----------------------------------------'''

func hurt(by) -> void:
	Health -= by[0]
	Balance -= by[1]
	
	Health = clamp(Health,0,100)
	Balance = clamp(Balance,0,100)
	Stamina = clamp(Stamina,0,100)
	
	print(Health)
	
	
	

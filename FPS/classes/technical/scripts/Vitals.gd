class_name Vitals extends Node

@export var Life: float = 100.0
@export var Balance: float = 100.0
@export var Armor: float = 0.0

@export var Stamina: float = 100.0

func _process(delta):
	pass

'''-----------------------------------------'''
func heal(by) -> void:
	Life += by[0]
	Balance += by[1]
	Armor += by[2]
	
	Life = clamp(Life,0,100)
	Balance = clamp(Balance,0,100)
	Armor = clamp(Armor,0,100)
	Stamina = clamp(Stamina,0,100)
	
func hurt(by) -> void:
	Life -= by[0]
	Balance -= by[1]
	Armor -= by[2]
	
	Life = clamp(Life,0,100)
	Balance = clamp(Balance,0,100)
	Armor = clamp(Armor,0,100)
	Stamina = clamp(Stamina,0,100)
	
	print(Life)
	
	
	

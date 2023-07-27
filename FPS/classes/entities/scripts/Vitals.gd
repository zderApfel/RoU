class_name Vitals extends Node

@export var Life: float = 100.0
@export var Balance: float = 100.0
@export var Armor: float = 0.0

'''-----------------------------------------'''

func heal(type, by):
	type += by
	return clamp(type, 0.0, 100.0)
	
func hurt(type, by):
	type -= by
	return clamp(type, 0.0, 100.0)

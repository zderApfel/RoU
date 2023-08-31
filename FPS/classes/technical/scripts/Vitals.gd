class_name Vitals extends Node

@export_range(0,100) var Health: float = 100.0
@export_range(0,100) var Balance: float = 100.0

@export_range(0,100) var Stamina: float = 100.0

@export var self_attributes: Attributes

@onready var Body: int

func _process(_delta):
	Body = self_attributes.Body

'''-----------------------------------------'''

func help_or_hurt(hp, bp) -> void:
	
	var bp_resistance = 1 + (self_attributes.return_modifier(Body) * .02)
	print(bp / bp_resistance)
	
	Health = clamp(Health - hp, 0, 100)
	Balance = clamp(Balance - (bp / bp_resistance), 0, 100)
	
	print(Balance)

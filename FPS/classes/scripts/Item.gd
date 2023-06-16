class_name Item extends Node3D
@onready var type = "Item"

@export var is_lootable: bool = true
@export var display_name: String
@export var description: String
@export var is_stackable: bool = false
@export var amount: int = 1
@export var max_stack: int = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


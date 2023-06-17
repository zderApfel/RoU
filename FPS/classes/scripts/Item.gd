class_name Item extends Node3D
@onready var type = "Item"
@onready var equipped: bool = false


@export var is_lootable: bool = true
@export var display_name: String
@export var description: String
@export var is_stackable: bool = false
@export var amount: int = 1
@export var max_stack: int = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func equip():
	if equipped: #Unequip action
		equipped = false
		get_node("model").disabled = false
		self.freeze = false
		
	else: #Equip action
		equipped = true
		get_node("model").disabled = true
		self.freeze = true

func primary_action():
	if Input.is_action_just_pressed("primary_action"):
		print("Primary Action")

func secondary_action():
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")

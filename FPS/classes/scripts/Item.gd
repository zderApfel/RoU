class_name Item extends Node3D

@onready var equipped: bool = false
@onready var type = "Generic"

@export var is_lootable: bool = true
@export var is_holdable: bool = false
@export var display_name: String
@export var description: String
@export_enum("N/A","Common","Uncommon","Rare","Epic","Legendary") var rarity: int
@export var is_stackable: bool = false
@export var amount: int = 1
@export var max_stack: int = 1
@export var bulk: int = 1
@export var legal: bool = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func equip():
	if equipped: #Unequip action
		equipped = false
		
	else: #Equip action
		equipped = true

func primary_action():
	if Input.is_action_just_pressed("primary_action"):
		print("Primary Action")

func secondary_action():
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")

func _physics_process(delta):
	equip()

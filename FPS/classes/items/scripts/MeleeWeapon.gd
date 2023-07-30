class_name Melee_Weapon extends Item

@export var block_parry_strength: String
@export var crit_chance: float

func _ready():
	pass

func _process(_delta):
	pass

func primary_action():
	if Input.is_action_just_pressed("primary_action"):
		print("Primary Action")

func secondary_action():
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")


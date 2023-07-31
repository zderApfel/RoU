class_name MeleeWeapon extends Item

@export var block_parry_strength: int
@export var crit_chance: float
@export var crit_modifier: float

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


class_name TwoHandFirearm extends Item

@export var recoil_variance_min: float
@export var recoil_variance_max: float

var ammo: String
var muzzle: Node3D
var world

func _ready():
	ammo = "res://nodes/items/Ammo/"
	type = "TwoHandFirearm"

func _process(_delta):
	pass

func primary_action():
	if Input.is_action_just_pressed("primary_action"):
		print("Primary Action")

func secondary_action():
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")

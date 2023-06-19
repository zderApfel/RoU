class_name TwoHandFirearm extends Item

var ammo: Bullet
var muzzle: Node3D

func _ready():
	type = "TwoHandFirearm"

func _process(_delta):
	pass

func primary_action():
	if Input.is_action_just_pressed("primary_action"):
		print("Primary Action")

func secondary_action():
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")

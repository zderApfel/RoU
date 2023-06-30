class_name TwoHandFirearm extends Item

@export_enum("762x39","545x39","556x45") var caliber: String
@export var recoil_variance_min: float
@export var recoil_variance_max: float
@export var max_ammo: int
@export var current_ammo: int = 0


var ammo: String
var muzzle: Node3D
var world

func _ready():
	var format_string = "res://nodes/items/Ammo/%s"
	ammo = format_string % caliber
	type = "TwoHandFirearm"

func _process(_delta):
	pass

func primary_action():
	if Input.is_action_just_pressed("primary_action"):
		var x = load(ammo).instantiate()
		
		muzzle.add_child(x)
		x.transform = muzzle.transform
		x.VELOCITY = -x.transform.basis.z * x.MUZZLE_VELOCITY
		#print("Primary Action")

func secondary_action():
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")

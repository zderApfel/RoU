extends TwoHandFirearm

func _ready():
	type = "TwoHandFirearm"
	muzzle = get_tree().get_current_scene().get_node("bullet_test/muzzle")
	ammo = "res://nodes/items/Ammo/762x39.tscn"

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


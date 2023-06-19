extends TwoHandFirearm

func _ready():
	type = "TwoHandFirearm"
	muzzle = get_tree().get_current_scene().get_node("bullet_test")

func _process(_delta):
	pass

func primary_action():
	if Input.is_action_just_pressed("primary_action"):
		
		var ammo = load("res://nodes/items/Ammo/762x39.tscn").instantiate()
		muzzle.add_child(ammo)
		ammo.transform = muzzle.global_transform
		ammo.VELOCITY = -ammo.transform.basis.z * ammo.MUZZLE_VELOCITY
		#print("Primary Action")

func secondary_action():
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")


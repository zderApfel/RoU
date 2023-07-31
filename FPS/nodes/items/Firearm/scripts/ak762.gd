extends Firearm

func _ready():
	muzzle = get_tree().get_current_scene().get_node("bullet_test/muzzle")

func _process(_delta):
	pass

func primary_action():
	var x = load(ammo).instantiate()
		
	muzzle.add_child(x)
	x.transform = muzzle.transform
	x.VELOCITY = -x.transform.basis.z * x.MUZZLE_VELOCITY
	#print("Primary Action")

func secondary_action():
	print("Secondary Action")

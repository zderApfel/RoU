class_name AKM extends Firearm

func _ready():
	pass

func _process(_delta):
	when_held(true)

func primary_action():
	var x = load(ammo).instantiate()
		
	muzzle.add_child(x)
	x.transform = muzzle.transform
	x.VELOCITY = -x.transform.basis.z * x.MUZZLE_VELOCITY

func secondary_action():
	print("Secondary Action")

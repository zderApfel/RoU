extends StaticBody3D
@onready

var INVENTORY = Inventory.INVENTORY

# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("loot"):
		INVENTORY.append(self)
	else: pass

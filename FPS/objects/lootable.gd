extends StaticBody3D
@onready

var INVENTORY = GL_Inventory.INVENTORY
var LOOTABLE = load("res://scripts/GL_Lootable.gd")
var ITEM_NAME = "Dingdong"

var SELF = LOOTABLE.new(ITEM_NAME, self.name, self, null, false, 1)

# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("loot"):
		INVENTORY.append(SELF)
		queue_free()
	else: pass

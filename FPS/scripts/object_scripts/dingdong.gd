extends RigidBody3D

var DISPLAY_NAME = "Dingdong"
var INVENTORY_SPRITE = null
var IS_STACKABLE = false
var MAX_STACK = 1
var AMOUNT = 1
var IS_LOOTABLE = true

var SELF = Lootable.new()


	
func _ready():
	SELF.create(DISPLAY_NAME, self.name, INVENTORY_SPRITE, IS_STACKABLE, MAX_STACK, AMOUNT, IS_LOOTABLE)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

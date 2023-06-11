extends RigidBody3D

var ITEM_ID = self.name
var BODY = self

var display_name: String
var inventory_sprite: Node2D
var is_stackable: bool
var max_stack: int
var amount: int
var is_lootable: bool

func _ready():
	display_name = "DingDong"
	is_stackable = false
	max_stack = 1
	amount = 1
	is_lootable = true
	
	if !is_stackable:
		max_stack = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

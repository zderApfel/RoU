extends Node

@onready var PLAYER = get_parent().get_node("Skeleton3D/neck/Camera3D/first_person")
@onready var ANIMATION_PATH = "slot/movement_tree"

var movement_animations
@onready var jogtracker = 0
@onready var jumptracker = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass

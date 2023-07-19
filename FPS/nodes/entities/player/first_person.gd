extends Node

@onready var PLAYER = get_parent()
@onready var ANIMATION_PATH = "Skeleton3D/neck/Camera3D/first_person/slot/movement_tree"

@onready var movement_animations
@onready var jogtracker = 0
@onready var jumptracker = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	movement_animations = PLAYER.get_node(ANIMATION_PATH)
	
	movement_tracker()

func movement_tracker():
	if movement_animations != null:
		movement_animations["parameters/movement/blend_position"].x = jogtracker
	
	if Input.is_action_pressed("forward"):
		if jogtracker < 8:
			jogtracker += 0.5
	if Input.is_action_pressed("backward"):
		if jogtracker < 6:
			jogtracker += 0.25
	if Input.is_action_pressed("left") or Input.is_action_pressed("right"):
		if jogtracker < 4:
			jogtracker += 0.25
	if !Input.is_action_pressed("forward") or !Input.is_action_pressed("backward") or !Input.is_action_pressed("left") or !Input.is_action_pressed("right"):
		if jogtracker > 0:
			jogtracker -= 0.25

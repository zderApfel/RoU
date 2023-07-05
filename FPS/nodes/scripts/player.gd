extends Human

const WALK_SPEED = 5
const JOG_SPEED = 8
const SPRINT_SPEED = 12
const JUMP_VELOCITY = 3.0

var VELOCITY_Y = 0

var LOOK_SENSITIVITY = ProjectSettings.get_setting("player/look_sensitivity")
var GRAVITY = ProjectSettings.get_setting("physics/3d/default_gravity")

@onready var neck = $Skeleton3D/neck
@onready var movement_animations = $movement_tree

@onready var animtracker = 0
@onready var current_speed = 8

func _ready():
	pass
	
func _process(_delta):
	movement_animations["parameters/movement/blend_position"] = animtracker
	
func _physics_process(delta):
	var horizontal_velocity = Input.get_vector("right", "left", "backward", "forward").normalized() * current_speed
	
	velocity = horizontal_velocity.x * global_transform.basis.x + horizontal_velocity.y * global_transform.basis.z
	
	if is_on_floor():
		VELOCITY_Y = JUMP_VELOCITY if Input.is_action_just_pressed("jump") else 0.0

	else: VELOCITY_Y -= GRAVITY * delta
	
	velocity.y = VELOCITY_Y
	move_and_slide()
	
	if Input.is_action_just_pressed("cancel"): 
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED if Input.mouse_mode == Input.MOUSE_MODE_VISIBLE else Input.MOUSE_MODE_VISIBLE
		
	animation_manager()

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(-event.relative.x * LOOK_SENSITIVITY)
		
		neck.rotate_x(event.relative.y * LOOK_SENSITIVITY)
		neck.rotation.x = clamp(neck.rotation.x, deg_to_rad(-60), deg_to_rad(80))
		
func animation_manager():
	if velocity != Vector3.ZERO:
		if animtracker < current_speed:
			animtracker+=.5
	else:
		if animtracker > 0:
			animtracker-=.5

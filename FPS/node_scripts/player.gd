extends CharacterBody3D

const SPEED = 8
const JUMP_VELOCITY = 3.0

var VELOCITY_Y = 0

var LOOK_SENSITIVITY = ProjectSettings.get_setting("player/look_sensitivity")
var GRAVITY = ProjectSettings.get_setting("physics/3d/default_gravity")

@onready var camera:Camera3D = $Camera3D

func _physics_process(delta):
	var horizontal_velocity = Input.get_vector("left","right","forward","backward").normalized() * SPEED
	
	velocity = horizontal_velocity.x * global_transform.basis.x + horizontal_velocity.y * global_transform.basis.z
	
	if is_on_floor():
		VELOCITY_Y = JUMP_VELOCITY if Input.is_action_just_pressed("jump") else 0.0

	else: VELOCITY_Y -= GRAVITY * delta
	
	velocity.y = VELOCITY_Y
	move_and_slide()
	
	if Input.is_action_just_pressed("cancel"): 
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED if Input.mouse_mode == Input.MOUSE_MODE_VISIBLE else Input.MOUSE_MODE_VISIBLE

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(-event.relative.x * LOOK_SENSITIVITY)
		camera.rotate_x(-event.relative.y * LOOK_SENSITIVITY)
		camera.rotation.x = clamp(camera.rotation.x, -PI/2, PI/2)

func _process(_delta):
	pass

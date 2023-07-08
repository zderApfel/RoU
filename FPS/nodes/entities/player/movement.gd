extends CharacterBody3D

const CROUCH_SPEED = 5
const JOG_SPEED = 8
const SPRINT_SPEED = 12
const JUMP_VELOCITY = 3.0

var VELOCITY_Y = 0

var LOOK_SENSITIVITY = ProjectSettings.get_setting("player/look_sensitivity")
var GRAVITY = ProjectSettings.get_setting("physics/3d/default_gravity")

@onready var camera = $Skeleton3D/neck/Camera3D
@onready var movement_animations = $Skeleton3D/neck/Camera3D/first_person

@onready var walktracker = 0
@onready var jumptracker = 0
@onready var current_speed = 8

func _ready():
	pass
	
func _process(_delta):
	var arms
	var neck
	if movement_animations.get_children() != []:
		arms = $Skeleton3D/neck/Camera3D/first_person/slot/arm_movement_tree
		neck = $Skeleton3D/neck/neck_movement_tree
		
		arms["parameters/jog/blend_position"].x = walktracker
		arms["parameters/jog/blend_position"].y = jumptracker
		
		
		neck["parameters/neck_movement/blend_position"].x = walktracker
		neck["parameters/neck_movement/blend_position"].y = jumptracker
			
		
	
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
		
		camera.rotate_x(event.relative.y * LOOK_SENSITIVITY)
		camera.rotation.x = clamp(camera.rotation.x, deg_to_rad(-60), deg_to_rad(60))

func animation_manager():
	if velocity != Vector3.ZERO:
		if walktracker < current_speed:
			walktracker+=.5
	else:
		if walktracker > 0:
			walktracker-=.5
	
	if velocity.y > 0 or velocity.y < 0:
		jumptracker += .5
		jumptracker = clamp(jumptracker,0,3)
	else:
		jumptracker -= .5
		jumptracker = clamp(jumptracker,0,3)

extends CharacterBody3D

const CROUCH_SPEED = 5
const JOG_SPEED = 8
const SPRINT_SPEED = 12
const JUMP_VELOCITY = 4

var VELOCITY_Y = 0

var LOOK_SENSITIVITY = ProjectSettings.get_setting("player/look_sensitivity")
var GRAVITY = ProjectSettings.get_setting("physics/3d/default_gravity")

@onready var camera = $Skeleton3D/neck/Camera3D
@onready var movement_animations = $Skeleton3D/neck/Camera3D/first_person

@onready var jogtracker = 0
@onready var jumptracker = 0
@onready var current_speed = 0

func _ready():
	pass
	
func _physics_process(delta):

	animation_watcher()
	move()
	jump(delta)
	sprint()

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(-event.relative.x * LOOK_SENSITIVITY)
		
		camera.rotate_x(event.relative.y * LOOK_SENSITIVITY)
		camera.rotation.x = clamp(camera.rotation.x, deg_to_rad(-60), deg_to_rad(60))

	if Input.is_action_just_pressed("cancel"): 
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED if Input.mouse_mode == Input.MOUSE_MODE_VISIBLE else Input.MOUSE_MODE_VISIBLE

func animation_watcher():
	var arms
	var neck

	if movement_animations.get_children() != []:
		arms = $Skeleton3D/neck/Camera3D/first_person/slot/movement_tree
		neck = $Skeleton3D/neck/neck_movement_tree
		
		arms["parameters/movement/blend_position"] = jogtracker
		#arms["parameters/movement/blend_position"].y = jumptracker
		
		neck["parameters/neck_movement/blend_position"].x = jogtracker
		neck["parameters/neck_movement/blend_position"].y = jumptracker
	
	jogtracker = current_speed

func engine(x):
	var horizontal_velocity = Input.get_vector("right", "left", "backward", "forward").normalized() * x
	
	velocity = horizontal_velocity.x * global_transform.basis.x + horizontal_velocity.y * global_transform.basis.z
	
	velocity.y = VELOCITY_Y
	move_and_slide()


func move():
	var x = engine(current_speed)
	if sprint():
		x
		current_speed += 1
		current_speed = clamp(current_speed,0,SPRINT_SPEED)
	elif Input.is_action_pressed("forward"):
		x
		current_speed += 0.5
		current_speed = clamp(current_speed,0,JOG_SPEED)
	elif Input.is_action_pressed("left") or Input.is_action_pressed('right'):
		x
		current_speed += 0.3
		current_speed = clamp(current_speed,0,JOG_SPEED)
	elif Input.is_action_pressed("backward"):
		x
		current_speed += 0.3
		current_speed = clamp(current_speed,0,CROUCH_SPEED)
	elif Input.is_action_pressed("forward") and Input.is_action_pressed("backward"):
		x
		current_speed += 0.5
		current_speed = clamp(current_speed,0,JOG_SPEED)
	else:
		x
		current_speed -= 0.5
		current_speed = clamp(current_speed,0,SPRINT_SPEED)

func sprint():
	if Input.is_action_pressed("sprint") and Input.is_action_pressed("forward"):
		return true

func jump(delta):
	if is_on_floor():
		if Input.is_action_just_pressed("jump"):
			VELOCITY_Y = JUMP_VELOCITY
		else:
			VELOCITY_Y = 0
	else:
		VELOCITY_Y -= GRAVITY * delta
		
	if !is_on_floor():
		jumptracker += 0.5
		jumptracker = clamp(jumptracker,0,JUMP_VELOCITY)
	else:
		jumptracker -= 0.5
		jumptracker = clamp(jumptracker,0,JUMP_VELOCITY)

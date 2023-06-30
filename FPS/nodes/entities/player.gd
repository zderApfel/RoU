extends CharacterBody3D

const WALK_SPEED = 5
const JOG_SPEED = 8
const SPRINT_SPEED = 12
const JUMP_VELOCITY = 3.0

var VELOCITY_Y = 0

var LOOK_SENSITIVITY = ProjectSettings.get_setting("player/look_sensitivity")
var GRAVITY = ProjectSettings.get_setting("physics/3d/default_gravity")


@onready var neck = $human_empty/Armature/Skeleton3D/neck
@onready var waist = $human_empty/Armature/Skeleton3D/waist
@onready var movement_animations = $human_empty/Armature/Skeleton3D/movement

@onready var CURRENT_SPEED = 8

func _ready():
	movement_animations.active = true

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
		
	update_animation_parameters()

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(-event.relative.x * LOOK_SENSITIVITY)
		
		neck.rotate_x(event.relative.y * LOOK_SENSITIVITY)
		neck.rotation.x = clamp(neck.rotation.x, deg_to_rad(-60), deg_to_rad(80))
		
func update_animation_parameters():
	if(velocity == Vector3.ZERO):
		movement_animations["parameters/conditions/is_idle"] = true
		#movement_animations["parameters/conditions/is_moving"] = false
	else:
		movement_animations["parameters/conditions/is_idle"] = false
		#movement_animations["parameters/conditions/is_moving"] = true

func _process(_delta):
	pass

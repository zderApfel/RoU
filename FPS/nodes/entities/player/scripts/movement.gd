class_name Player extends CharacterBody3D

const JUMP_VELOCITY = 4 
const SENSITIVITY = 0.01
const BOB_AMP = 0.06
const BOB_FREQ = 2.2

@onready var vitals = $Vitals
@onready var inventory = $PlayerInventory
@onready var camera = $pivot/Camera3D
@onready var head = $pivot

@onready var jog_speed = 6
@onready var sprint_speed
@onready var crouch_speed
@onready var speed = jog_speed
@onready var gravity = 12
@onready var t_bob = 0.0

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _unhandled_input(event):
	if event is InputEventMouseMotion:
		head.rotate_y(-event.relative.x * SENSITIVITY)
		camera.rotate_x(-event.relative.y * SENSITIVITY)
		camera.rotation.x = clamp(camera.rotation.x, deg_to_rad(-80), deg_to_rad(75))

func _physics_process(delta):
	jog_speed = 6
	sprint_speed = jog_speed*1.25
	crouch_speed = jog_speed*0.5
	
	jump(delta)
	ground_movement(delta)
	headbob_controller(delta)

func jump(x):
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	if not is_on_floor():
		velocity.y -= gravity * x
	

func ground_movement(x):
	
	var input_dir = Input.get_vector("left", "right", "forward", "backward")
	var direction = (head.transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if is_on_floor():
		if direction:
			velocity.x = direction.x * speed
			velocity.z = direction.z * speed
		else:
			velocity.x = lerp(velocity.x, direction.x * speed, x * 7.0)
			velocity.z = lerp(velocity.z, direction.z * speed, x * 7.0)
	else:
		velocity.x = lerp(velocity.x, direction.x * speed, x * 0.5)
		velocity.z = lerp(velocity.z, direction.z * speed, x * 0.5)

	move_and_slide()
	sprint()
	
func _headbob(time) -> Vector3:
	var pos = Vector3.ZERO
	pos.y = sin(time * BOB_FREQ) * BOB_AMP
	pos.x = cos(time * BOB_FREQ / 2) * BOB_AMP
	return pos
	
func headbob_controller(x):
	var z = $pivot/Camera3D/hold_slot
	
	t_bob += x * velocity.length() * float(is_on_floor())
	if velocity.y > 0: t_bob += x * velocity.length() * 0.25
	if z != null:
		z.transform.origin = _headbob(t_bob)
	
func sprint():
	if Input.is_action_pressed("sprint"):
		speed = sprint_speed
	elif Input.is_action_just_released("sprint"):
		speed = jog_speed

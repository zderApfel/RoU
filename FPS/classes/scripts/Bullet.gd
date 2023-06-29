class_name Bullet extends RigidBody3D


@export var MUZZLE_VELOCITY: float = 25.0

@export var RECOIL_VARIANCE_MIN: float = 0.0
@export var RECOIL_VARIANCE_MAX: float = 0.0

@onready var VELOCITY = Vector3.ZERO

func _ready():
	pass

func _process(_delta):
	pass
	
func _physics_process(delta):
	VELOCITY += VELOCITY * delta
	look_at(transform.origin + VELOCITY.normalized(), Vector3.UP)
	transform.origin += VELOCITY * delta

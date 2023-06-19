class_name Bullet extends RigidBody3D

@export var HP_DAMAGE: int = 0
@export var BP_DAMAGE: int = 0
@export var AP_DAMAGE: int = 0
@export var HEADSHOT_MULTIPLIER: float = 0.0

@onready var FIRE_SOUND: AudioStreamPlayer3D
@onready var EAR_WHISTLE: AudioStreamPlayer3D

@export var MUZZLE_VELOCITY: float = 25.0

@export var RECOIL_VARIANCE_MIN: float = 0.0
@export var RECOIL_VARIENCE_MAX: float = 0.0

@onready var VELOCITY = Vector3.ZERO

func _ready():
	pass

func _process(_delta):
	pass
	
func _physics_process(delta):
	VELOCITY += VELOCITY * delta
	look_at(transform.origin + VELOCITY.normalized(), Vector3.UP)
	transform.origin += VELOCITY * delta
	
func init_bullet(fire_sound, ear_whistle):
	FIRE_SOUND = fire_sound
	EAR_WHISTLE = ear_whistle

class_name Bullet extends Item


@export var HP_DAMAGE: float
@export var BP_DAMAGE: float
@export var ARMOR_PIERCE_CHANCE: float
@export var RECOIL_MOD: float
@export var MUZZLE_VELOCITY: float = 25.0

@onready var VELOCITY = Vector3.ZERO

func _ready():
	pass

func _process(_delta):
	pass
	
func _physics_process(delta):
	VELOCITY += VELOCITY * delta
	look_at(transform.origin + VELOCITY.normalized(), Vector3.UP)
	transform.origin += VELOCITY * delta

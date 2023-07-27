class_name Bullet extends Item


@export var HP_DAMAGE: float
@export var BP_DAMAGE: float
@export var AP_DAMAGE: float

## Base chance to pierce armor
@export var AP_CHANCE: float

## Modifier for the bullet's accuracy leaving the muzzle
@export var ACCURACY_MOD: float

## Modifier for the bullet's speed
@export var VELOCITY_MOD: float = 0.0

## Bullets with this trait make heads explode with a headshot
@export var MELONPOPPER: bool = false

@onready var VELOCITY = Vector3.ZERO

func _ready():
	pass

func _physics_process(delta):
	pass

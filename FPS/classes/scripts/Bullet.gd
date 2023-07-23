class_name Bullet extends Item


@export var HP_DAMAGE: float
@export var BP_DAMAGE: float
@export var AP_DAMAGE: float
@export var AP_CHANCE: float #Armor Pierce Chance
@export var ACCURACY_MOD: float
@export var VELOCITY_MOD: float = 0.0

@onready var VELOCITY = Vector3.ZERO

func _ready():
	pass

func _physics_process(delta):
	pass

class_name Bullet extends Item


@export var hp_damage: float
@export var bp_damage: float
@export var ap_damage: float

## The item's damage type (if applicable)
@export_enum("None", "Ballistic", "Bludgeon", "Pierce", "Slash", "Poison", "Fire", "Caustic", "Fire", "Explosive", "Impulse") var damage_type: int = 1

## Bullets with this trait make heads explode with a headshot
@export var melonpopper: bool = false

@onready var velocity = Vector3.ZERO

func _ready():
	pass

func _physics_process(delta):
	pass

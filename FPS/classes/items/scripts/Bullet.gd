class_name Bullet extends Item

@export var description: String

@export var hp_damage: float
@export var bp_damage: float
@export var ap_damage: float

## The item's damage type (if applicable)
@export_enum("Ballistic") var damage_type: int

## Bullets with this trait make heads explode with a headshot
@export var melonpopper: bool = false

@onready var velocity = Vector3.ZERO

func _ready():
	pass

func _physics_process(delta):
	pass


func _on_hitbox_body_entered(body):
	print("Bullet destroyed")
	self.queue_free()

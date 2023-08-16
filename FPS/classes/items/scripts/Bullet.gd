class_name Bullet extends Item

@export var description: String

@export var hp_damage: float
@export var bp_damage: float
@export var ap_damage: float

## The item's damage type (if applicable)
@export_enum("Ballistic") var damage_type: int

## If the bullet is flying
@export var is_flying: bool = false

## Bullets with this trait make heads explode with a headshot
@export var melonpopper: bool = false

@onready var muzzle_velocity: float
@onready var velocity: Vector3


func _ready():
	pass

func _physics_process(delta):
	fly(delta)

func fly(triangle):
	dropoff(triangle)
	
	velocity = -transform.basis.z * muzzle_velocity
	transform.origin += velocity * triangle
	velocity.y = 12 * triangle
	
	await get_tree().create_timer(5).timeout
	self.queue_free()

func dropoff(triangle):
	
	hp_damage -= hp_damage*0.01
	hp_damage = clamp(hp_damage, 0, 999999)
	
	bp_damage -= bp_damage*0.01
	bp_damage = clamp(bp_damage, 0, 999999)
	
	ap_damage -= ap_damage*0.01
	ap_damage = clamp(ap_damage, 0, 999999)

func _on_body_entered(body):
	print(body.name)
	queue_free()

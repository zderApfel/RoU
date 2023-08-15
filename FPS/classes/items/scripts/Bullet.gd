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
	muzzle_velocity -= muzzle_velocity*0.02
	muzzle_velocity = clamp(muzzle_velocity, 0, 9999999)
		
	fly(delta)

func fly(triangle):
	velocity = -transform.basis.z * muzzle_velocity
	transform.origin += velocity * triangle
	
	await get_tree().create_timer(5).timeout
	self.queue_free()

func _on_body_entered(body):
	print("BULLET COLLIDED")
	print(body)
	
	velocity = Vector3.ZERO

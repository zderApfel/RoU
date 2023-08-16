class_name BulletVariant extends Bullet

@export var hp_damage_modifier: float
@export var bp_damage_modifier: float
@export var ap_damage_modifier: float

## Modifier to the gun's accuracy
@export var recoil_mod: float

func _on_body_entered(body):
	print("Bullet collided")
	self.queue_free()

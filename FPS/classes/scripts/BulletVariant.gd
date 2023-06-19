class_name BulletVariant extends Bullet

@export var HP_MODIFIER: float
@export var BP_MODIFIER: float
@export var AP_MODIFIER: float
@export var RECOIL_MODIFIER: float

func _on_body_entered(body):
	print("Bullet collided")
	self.queue_free()

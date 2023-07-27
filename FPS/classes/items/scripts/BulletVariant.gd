class_name BulletVariant extends Bullet

func _on_body_entered(body):
	print("Bullet collided")
	self.queue_free()

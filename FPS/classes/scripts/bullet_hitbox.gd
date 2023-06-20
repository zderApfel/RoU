extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().create_timer(2.5).timeout
	print("Bullet destroyed")
	get_parent().queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	print("Bullet collided")
	get_parent().queue_free()

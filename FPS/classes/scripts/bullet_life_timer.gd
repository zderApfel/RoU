extends Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_life_time_timeout():
	print("Bullet died")
	get_parent().queue_free()
	

class_name Hitbox extends Area3D

@export var hp_damage: float
@export var bp_damage: float
@export var ap_damage: float
@export var headshot_multiplier: float = 0.0


# Called when the node enters the scene tree for the first time.
func _ready():
	self.monitoring = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	await get_tree().create_timer(2.5).timeout
	print("Bullet destroyed")
	get_parent().queue_free()

func _on_body_entered(body):
	print("Bullet collided")
	get_parent().queue_free()

func _on_body_exited(body):
	pass # Replace with function body.

extends Skeleton3D

@onready var COLLISION = get_tree().get_root().get_node("collision")

# Called when the node enters the scene tree for the first time.
func _ready():
	physical_bones_start_simulation()
	COLLISION = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

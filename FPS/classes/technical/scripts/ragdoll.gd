extends Skeleton3D

@onready var vitals: Node = $Vitals

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if vitals.Life <= 0:
		

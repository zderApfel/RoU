class_name Human extends CharacterBody3D

@export var Name: String

@export_enum("Civilian", "Police") var faction: int
@export_enum("Idle") var ai_state: int

@onready var vitals = $Vitals
@onready var skeleton = $human_01/Armature/Skeleton3D
@onready var collision = $collision


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	pass

func _process(delta):
	if vitals.Health <= 0:
		die()

func die():
	skeleton.physical_bones_start_simulation()
	collision.disabled = false
	await get_tree().create_timer(5).timeout
	self.queue_free()

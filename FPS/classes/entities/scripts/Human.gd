class_name Human extends CharacterBody3D

@export_enum("Idle") var ai_state: String
@export_enum("unarmed", "onehand_gun", "twohand_gun", "onehand_melee", "twohand_melee") var pose_state: String

@onready var vitals = $Vitals
@onready var skeleton = $human_01/Armature/Skeleton3D
@onready var collision = $collision

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	pass

func _process(delta):
	if vitals.Life <= 0:
		die()

func die():
	skeleton.physical_bones_start_simulation()
	collision.disabled = true
	await get_tree().create_timer(5).timeout
	self.queue_free()


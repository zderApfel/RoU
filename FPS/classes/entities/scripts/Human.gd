class_name Human extends CharacterBody3D

@export_enum("Idle") var ai_state: String
@export_enum("unarmed", "onehand_gun", "twohand_gun", "onehand_melee", "twohand_melee") var pose_state: String

@onready var vitals = $Vitals

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	pass

func _process(delta):
	pass


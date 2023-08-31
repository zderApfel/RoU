class_name Human extends CharacterBody3D

@export var Name: String

@export_enum("Civilian", "Police") var faction: String

@export var dead: bool
@export var knocked_out: bool

@onready var skeleton = $human_01/Armature/Skeleton3D
@onready var collision = $collision
@onready var vitals = $Vitals


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	pass

func _physics_process(delta):
	if vitals.Health <= 0:
		dead = true
	
	if dead:
		die()

func die():
	collision.disabled = true
	skeleton.physical_bones_start_simulation()
	await get_tree().create_timer(5).timeout
	self.queue_free()
	
func knockout():
	pass

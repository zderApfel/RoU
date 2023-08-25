class_name Human extends CharacterBody3D

@export var Name: String

@export_enum("Civilian", "Police") var faction: int
@export_enum("Idle") var ai_state: int

@onready var skeleton = $human_01/Armature/Skeleton3D
@onready var collision = $collision
@onready var melee_hitbox = $melee_hitbox/CollisionShape3D
@onready var vitals = $Vitals


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	pass

func _physics_process(delta):
	if vitals.Health <= 0:
		die()

func die():
	collision.disabled = false
	melee_hitbox.disabled = false
	skeleton.physical_bones_start_simulation()
	await get_tree().create_timer(5).timeout
	self.queue_free()
	
func knockout():
	pass

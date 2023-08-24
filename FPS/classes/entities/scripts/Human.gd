class_name Human extends CharacterBody3D

@export var Name: String

@export_enum("Civilian", "Police") var faction: int
@export_enum("Idle") var ai_state: int

@onready var vitals = $Vitals
@onready var skeleton = $human_01/Armature/Skeleton3D
@onready var neck = $human_01/Armature/Skeleton3D/neck
@onready var collision = $collision


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	pass

func _process(delta):
	if vitals.Health <= 0:
		die()
	if vitals.Balance <= 0:
		knockout()

func die():
	skeleton.physical_bones_start_simulation()
	collision.disabled = false
	await get_tree().create_timer(5).timeout
	skeleton.physical_bones_stop_simulation() #To make it respawn
	#self.queue_free() #To make it disappear
	
func knockout():
	if vitals.Health > 0: 
		await get_tree().create_timer(3).timeout
		vitals.Balance = 30
	
func respawn():
	vitals.Health = 100
	vitals.Balance = 100
	skeleton.physical_bones_stop_simulation()

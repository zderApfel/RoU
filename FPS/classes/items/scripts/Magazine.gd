class_name Magazine extends Item

## The currently loaded ammo variant
@export_enum("FMJ", "HP", "FMJ+P", "T", "AP", "Buckshot", "Lead Slug", "Steel Slug", "Flechette", "Rubber Slug") var loaded_type: int

## Maximum ammo that can be loaded at any time. Most guns can have a +1 for one in the chamber
@export var max_ammo: int

## How much ammo is in the current magazine
@export var current_ammo: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

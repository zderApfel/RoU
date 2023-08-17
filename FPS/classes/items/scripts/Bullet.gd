class_name Bullet extends Item

@export var description: String

@export var hp_damage: float
@export var bp_damage: float
@export var ap_damage: float

## The item's damage type (if applicable)
@export_enum("Pierce", "Shock", "Impulse", "Frost") var damage_type: int = 0

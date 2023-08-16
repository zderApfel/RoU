class_name Bullet extends Item

@export var description: String

@export var hp_damage: float
@export var bp_damage: float
@export var ap_damage: float

## The item's damage type (if applicable)
@export_enum("Ballistic") var damage_type: int

## If the bullet is flying
@export var is_flying: bool = false

## Bullets with this trait make heads explode with a headshot
@export var melonpopper: bool = false

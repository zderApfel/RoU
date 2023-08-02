class_name MeleeWeapon extends Item

@export var HP_DAMAGE: float
@export var BP_DAMAGE: float
@export var AP_DAMAGE: float

## The strength of the weapon's block-parry.
## In a block-parry contest, the higher block-parry wins.
## A lost parry results in severe BP loss and a small amount of HP loss.
## A lost block results in mild BP and HP loss.
## A tie favors the blocker.
@export var block_parry_level: int

@export var crit_chance: float
@export var crit_modifier: float

func _ready():
	pass

func _process(_delta):
	pass

func primary_action():
	if Input.is_action_just_pressed("primary_action"):
		print("Primary Action")

func secondary_action():
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")


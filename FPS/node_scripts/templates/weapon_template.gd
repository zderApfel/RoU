extends RigidBody3D

@onready var TYPE = "{item_type_here}"
@onready var DISPLAY_NAME = "{item_name_here}"
@onready var INVENTORY_SPRITE = null
@onready var IS_STACKABLE = false
@onready var AMOUNT = 1
@onready var IS_LOOTABLE = true
@onready var MAX_STACK = 1
@onready var DESCRIPTION = "{item_description_here}"

#Weapon traits

@onready var CURRENT_STATE = false
@onready var IDLE_ANIMATION = null
@onready var USE_ANIMATION = null
@onready var WALK_ANIMATION = null
@onready var SPRINT_ANIMATION = null

@onready var SELF = Weapon.new().init_weapon(
	TYPE,
	DISPLAY_NAME,
	INVENTORY_SPRITE,
	IS_STACKABLE,
	AMOUNT,
	IS_LOOTABLE,
	MAX_STACK,
	DESCRIPTION,
	CURRENT_STATE,
	IDLE_ANIMATION,
	USE_ANIMATION,
	WALK_ANIMATION,
	SPRINT_ANIMATION
)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


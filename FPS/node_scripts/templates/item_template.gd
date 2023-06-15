extends RigidBody3D

@onready var TYPE = "{item_type_here}"
@onready var DISPLAY_NAME = "{item_display_name_here}"
@onready var INVENTORY_SPRITE = null
@onready var IS_STACKABLE = false
@onready var AMOUNT = 1
@onready var IS_LOOTABLE = true
@onready var MAX_STACK = 1
@onready var DESCRIPTION = "{item_description_here}"

@onready var SELF = Item.new().init_item(
		TYPE,
		DISPLAY_NAME,
		INVENTORY_SPRITE,
		IS_STACKABLE,
		AMOUNT,
		IS_LOOTABLE,
		MAX_STACK,
		DESCRIPTION
	)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

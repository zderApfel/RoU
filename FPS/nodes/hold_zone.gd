extends Area3D

@onready var FUNCTIONS = get_tree().get_current_scene().get_node("Player/Inventory")
@onready var INVENTORY = FUNCTIONS.PLAYER_INVENTORY

@onready var CURRENT_WEAPON = null

@onready var EMPTY_NODE = Weapon.new().init_weapon().NODE

# Called when the node enters the scene tree for the first time.
func _ready():
	self.add_child(EMPTY_NODE)
	

func _process(_delta):
	
	if Input.is_action_just_pressed("sling_weapon"):
		CURRENT_WEAPON = FUNCTIONS.draw_weapon(1)
		
	if Input.is_action_just_pressed("back_weapon"):
		CURRENT_WEAPON = FUNCTIONS.draw_weapon(2)
		
	if Input.is_action_just_pressed("holster_weapon"):
		CURRENT_WEAPON = FUNCTIONS.draw_weapon(3)
		
	if Input.is_action_just_pressed("sheathe_weapon"):
		CURRENT_WEAPON = FUNCTIONS.draw_weapon(4)
	
	if Input.is_action_just_pressed("stow_weapon"):
		FUNCTIONS.stow_weapon()
	
	if Input.is_action_just_pressed("attack"):
		if CURRENT_WEAPON == null:
			print("Attacking with your fists")
		else:
			print("Attacking with your "+CURRENT_WEAPON.DISPLAY_NAME)

extends RayCast3D

@onready var HAND = get_tree().get_current_scene().get_node("Player/HUD/loot_hand")
@onready var LOOT_LABEL = get_tree().get_current_scene().get_node("Player/HUD/loot_hand/TextureRect/loot")
@onready var INVENTORY = get_tree().get_current_scene().get_node("Player/PlayerInventory")

func _physics_process(_delta):
	if is_colliding() and get_collider() is Item and get_collider().is_lootable:
		HAND.visible = true
		viewsort()
	else:
		HAND.visible = false
			
			
func viewsort() -> void:
	var x = get_collider()
		
	if Input.is_action_just_pressed("action"): 
		if x is Item and x.is_lootable:
			INVENTORY.loot_action(x)
		
	

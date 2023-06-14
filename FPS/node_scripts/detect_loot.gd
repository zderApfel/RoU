extends RayCast3D

@onready var LOOT_HAND = get_tree().get_current_scene().get_node("Player/loot_hand/CanvasItem")
@onready var INVENTORY = get_tree().get_current_scene().get_node("Player/Inventory")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if is_colliding():
		if get_collider() is RigidBody3D:
			LOOT_HAND.visible = true
			if Input.is_action_just_pressed("loot"):
				INVENTORY.loot_action(get_collider())
				LOOT_HAND.visible = false
	else:
		LOOT_HAND.visible = false

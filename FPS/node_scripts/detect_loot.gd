extends RayCast3D

@onready var LOOT_HAND = get_tree().get_current_scene().get_node("Player/loot_hand/CanvasItem")
@onready var INVENTORY = get_tree().get_current_scene().get_node("Player/Inventory")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if is_colliding():
		var x = get_collider()
		if x is Item and x.is_lootable:
			LOOT_HAND.visible = true
			if Input.is_action_just_pressed("loot"):
				INVENTORY.loot_action(x)
				get_tree().get_current_scene().remove_child(x)
				LOOT_HAND.visible = false
	else:
		LOOT_HAND.visible = false

func get_item_reference(item):
	return get_node(item.self_reference)

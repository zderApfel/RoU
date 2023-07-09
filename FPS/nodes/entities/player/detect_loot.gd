extends RayCast3D

@onready var LOOT_HAND = get_tree().get_current_scene().get_node("player/HUD/loot_hand")
@onready var LOOT_LABEL = get_tree().get_current_scene().get_node("player/HUD/loot_hand/TextureRect/loot")
@onready var INVENTORY = get_tree().get_current_scene().get_node("player/Inventory")
@onready var x #Used as an identifier for the item you're looking at


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _physics_process(_delta):
		if is_colliding():
			x = get_collider()
			if x is Item and x.is_lootable:
				LOOT_HAND.visible = true

				var format_string = '''"%s"'''
				var item = x.display_name
				#LOOT_LABEL.text = format_string % item

				if Input.is_action_just_pressed("action"):
					INVENTORY.loot_action(x)
					get_tree().get_current_scene().remove_child(x)
					LOOT_HAND.visible = false
		else:
			LOOT_HAND.visible = false

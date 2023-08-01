extends RayCast3D

@onready var HAND = get_tree().get_current_scene().get_node("Player/HUD/loot_hand")
@onready var LOOT_LABEL = get_tree().get_current_scene().get_node("Player/HUD/loot_hand/TextureRect/loot")
@onready var INVENTORY = get_tree().get_current_scene().get_node("Player/player_inventory")
@onready var x #Used as an identifier for the item you're looking at


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _physics_process(_delta):
		if is_colliding():
			x = get_collider()
			
			if x is Item and x.is_lootable:
				HAND.visible = true

				var format_string = '''"%s"'''
				var item = x.display_name

				if Input.is_action_just_pressed("action"):
					INVENTORY.loot_action(x)
					get_tree().get_current_scene().remove_child(x)
					HAND.visible = false
		else:
			HAND.visible = false

class_name Item extends Node
@onready

var TRAITS: Dictionary

func init(tag: String, display_name: String, inventory_sprite: Node2D, is_stackable: bool, amount: int, is_lootable: bool, max_stack: int, description = ""):
	if is_stackable:
		pass
	else:
		max_stack = 1
	
	TRAITS = {
		"NODE": self,
		"TAG": tag,
		"DISPLAY_NAME": display_name,
		"INVENTORY_SPRITE": inventory_sprite,
		"IS_STACKABLE": is_stackable,
		"AMOUNT": amount,
		"IS_LOOTABLE": is_lootable,
		"MAX_STACK": max_stack,
		"DESCRIPTION": description
	}
	
	return TRAITS
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

class_name Item extends Node
@onready

var TRAITS: Dictionary

func init(display_name, inventory_sprite, is_stackable, amount, is_lootable, max_stack):
	if is_stackable:
		pass
	else:
		max_stack = 1
	
	TRAITS = {
		"NODE": self,
		"DISPLAY_NAME": display_name,
		"INVENTORY_SPRITE": inventory_sprite,
		"IS_STACKABLE": is_stackable,
		"AMOUNT": amount,
		"IS_LOOTABLE": is_lootable,
		"MAX_STACK": max_stack,
	}
	
	return TRAITS
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

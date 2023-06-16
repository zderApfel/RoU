class_name Item extends Node


var TRAITS: Dictionary

func init_item(tag = null, display_name = "{item_name_here}", inventory_sprite = null, is_stackable = false, amount = 1, is_lootable = true, max_stack = 1, description = "{item_description_here}"):
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

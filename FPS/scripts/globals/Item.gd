class_name Item extends Node
@onready

var BODY: Dictionary
var TRAITS: Dictionary

func init(node, display_name, inventory_sprite, is_stackable, amount, is_lootable, max_stack):
	BODY = {
		"NODE": node,
		"TRAITS": load_traits(display_name, inventory_sprite, is_stackable, amount, is_lootable, max_stack)
	}
		
	return BODY

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func load_traits(display_name, inventory_sprite, is_stackable, amount, is_lootable, max_stack):
	TRAITS = {
		"DISPLAY_NAME": display_name,
		"INVENTORY_SPRITE": inventory_sprite,
		"IS_STACKABLE": is_stackable,
		"AMOUNT": amount,
		"IS_LOOTABLE": is_lootable,
		"MAX_STACK": max_stack
	}
	
	if is_stackable:
		TRAITS.MAX_STACK = max_stack
	else:
		TRAITS.MAX_STACK = 1
	
	return TRAITS

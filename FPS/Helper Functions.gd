class_name Helpers

## If true, return false, and vice versa
static func bool_switch(x) -> bool:
	if x:
		x = false
	else:
		x = true
	return x

## Destroys all children from a node
static func familicide(x) -> Node:
	for y in x.get_children():
		y.queue_free()
	return x

## Returns the world environment
## Used for handling spawning in objects into the world	
static func get_world(SELF: Node) -> Node:
	return SELF.get_tree().get_root().get_node("Game")

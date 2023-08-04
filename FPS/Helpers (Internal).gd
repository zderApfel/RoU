class_name Helpers

static func bool_switch(x) -> bool:
	if x:
		x = false
	else:
		x = true
	return x
	
static func delete_children(node) -> Node:
	for i in node.get_children():
		if i is RigidBody3D: i.freeze = false
		node.remove_child(i)
		i.queue_free()
	return node

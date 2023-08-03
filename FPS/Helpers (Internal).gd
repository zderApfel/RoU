class_name Helpers

static func bool_switch(x) -> bool:
	if x:
		x = false
	else:
		x = true
	return x

static func switch_child(parent, child) -> void:
	child.held = true
	child.when_held()
	
	if parent.get_children() == null and child != null:
		parent.add_child(child)
		parent.position = child.first_person_position
	else:
		parent = delete_children(parent)
		parent.add_child(child)
		parent.position = child.first_person_position
		


	
static func delete_children(node) -> Node:
	for i in node.get_children():
		if i is RigidBody3D: i.freeze = false
		node.remove_child(i)
		i.queue_free()
	return node

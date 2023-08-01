class_name Helpers

static func bool_switch(x) -> bool:
	if x:
		x = false
	else:
		x = true
	return x

static func switch_child(parent, child):
	if parent.get_children() == null:
		parent.add_child(child)
		parent.transform = Vector3(0,-0.428,0.394)
	else:
		parent = delete_children(parent)
		parent.add_child(child)
		parent.transform = Vector3(0,-0.428,0.394)
		
static func delete_children(node) -> Node:
	for i in node.get_children():
		node.remove_child(i)
		i.queue_free()
	return node

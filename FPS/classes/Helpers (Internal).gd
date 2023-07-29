class_name Helpers

static func bool_switch(x):
	if x:
		x = false
	else:
		x = true
	return x

static func switch_child(parent, child):
	var y = load(child.arm_path).instantiate()
	
	if parent != null:
		
		if parent.get_children() == []:
			parent.add_child(y)
		else:
			parent.get_children()[0].queue_free()
			parent.add_child(y)


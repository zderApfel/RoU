class_name Helpers

static func bool_switch(x) -> bool:
	if x:
		x = false
	else:
		x = true
	return x

static func familicide(x) -> Node:
	for y in x.get_children():
		y.queue_free()
	return x


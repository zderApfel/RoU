class_name Tool extends Item

@export var description: String

func primary_action(triangle):
	if Input.is_action_just_pressed("primary_action"):
		print("Primary Action")

func secondary_action(triangle):
	if Input.is_action_just_pressed("secondary_action"):
		print("Secondary Action")


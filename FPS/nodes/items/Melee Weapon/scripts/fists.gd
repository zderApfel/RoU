class_name Fists extends Item

func _physics_process(delta):
	if is_held and !block_inputs: 
		self.primary_action(delta)
		self.secondary_action(delta)

func primary_action(_triangle):
	if Input.is_action_pressed("primary_action") or Input.is_action_pressed("melee_attack"):
		attack_animation()

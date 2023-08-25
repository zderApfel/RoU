class_name Fists extends Item


# Called when the node enters the scene tree for the first time.

func _physics_process(delta):
	if is_held and !block_inputs: 
		self.primary_action(delta)
		self.secondary_action(delta)

func primary_action(_triangle):
	if Input.is_action_pressed("primary_action"):
		attack_animation()

func attack_animation():
	var animation: String
	match animation_step:
		0:	
			animation = "weak_combo_1"
		1:
			animation = "weak_combo_2"
		2:
			animation = "weak_combo_3"

	animation_step+=1
	$AnimationPlayer.play("RESET")
	$AnimationPlayer.play(animation)
	await $AnimationPlayer.animation_finished
	to_idle()

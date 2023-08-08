class_name AKM extends Firearm

func _ready():
	pass

func _physics_process(delta):
	self.primary_action(delta)
	self.secondary_action(delta)

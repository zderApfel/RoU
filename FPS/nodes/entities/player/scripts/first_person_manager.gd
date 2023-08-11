extends Node3D

signal gun_shoots(item, new_rotation, camera, triangle)

@onready var item = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	var x = $Camera3D/hold_slot.get_children()
	var item
	
	if x != []: item = x[0] 
	if Input.is_action_just_pressed("primary_action") and item.type == 2:
		recoil(item, self, delta)

func recoil(item, camera, triangle):
	var x_value = $Camera3D.rotation.x + deg_to_rad(item.recoil)
	gun_shoots.emit(item, x_value, camera, triangle)

func _on_gun_shoots(item, x_value, camera, triangle):
	if item.current_ammo > 0:
		item.shoot()
		if x_value < 1.308997 and x_value > -1.396263:
			$Camera3D.rotation.x = x_value
			await get_tree().create_timer(.01).timeout
			$Camera3D.rotation.x -= x_value*.02


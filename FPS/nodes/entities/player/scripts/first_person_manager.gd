extends Node3D

signal gun_shoots(new_rotation, camera, triangle)

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
	var coin = RNG.coinflip()
	var x_value: float = item.recoil_vertical ## VERTICAL
	var y_value: float = item.recoil_horizontal ## HORIZONTAL
	var old_rotation: Vector3 = camera.rotation
	var new_rotation: Vector3
	
	x_value = item.recoil_vertical + camera.rotation.x
	y_value = item.recoil_horizontal + camera.rotation.y

	if coin == true:
		y_value = y_value *-1
		print("right")
	else:
		print("left")
	new_rotation = Vector3(x_value,y_value,old_rotation.z)
	gun_shoots.emit(x_value, y_value, camera, triangle)


func _on_gun_shoots(x_value, y_value, camera, triangle):
	camera.rotation.x = clamp(lerp(camera.rotation.x, x_value, 0.5*triangle), -80, 75)
	camera.rotation.y = lerp(camera.rotation.y, y_value, 0.5*triangle)
	

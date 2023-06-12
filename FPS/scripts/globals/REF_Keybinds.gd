extends Node
@onready

var is_inventory_open

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	if Input.is_action_just_pressed("inventory"):
		for x in Inventory.INVENTORY:
			print(x.TRAITS.DISPLAY_NAME)
	else:
		pass
		
	if Input.is_action_just_pressed("loot"):
		print("Loot Key")
	else: pass


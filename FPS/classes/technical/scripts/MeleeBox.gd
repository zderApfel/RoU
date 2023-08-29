'''
A hitbox used for melee weapons.
In order for them to work, they must be set to monitoring through the animations at
some point; and subsequently turned off so you don't have a persistent hitbox
at strange times in the animation. The code will disable the box 
autoamatically after a strike happens as well
'''

class_name MeleeBox extends RayCast3D

@onready var player_attributes = get_tree().get_root().get_node("Game/Player/Attributes")
@onready var weapon = get_tree().get_root().get_node("Game/Player/pivot/Camera3D/hold_slot/item")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	if is_colliding():
		strike(get_collider())
		set_deferred("enabled", false)

func strike(area):
	var strength_modifier = player_attributes.return_modifier(player_attributes.Strength)
	var luck_modifier = player_attributes.return_modifier(player_attributes.Luck)

	if "accepting_pain" in area and area.accepting_pain and weapon != null:
		weapon.melee_strike(area, strength_modifier, luck_modifier)

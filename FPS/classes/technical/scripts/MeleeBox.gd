class_name MeleeBox extends RayCast3D
'''
A hitbox used for melee weapons.
In order for them to work, they must be set to monitoring through the animations at
some point; and subsequently turned off so you don't have a persistent hitbox
at strange times in the animation. The code will disable the box 
automatically after a strike happens as well
'''

func _process(delta) -> void:
	if is_colliding():
		$"../../".melee_strike(get_collider())
		set_deferred("enabled", false)




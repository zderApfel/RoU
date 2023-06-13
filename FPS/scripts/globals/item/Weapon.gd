class_name Weapon extends Item
@onready

var IDLE_ANIMATION: Animation
var USE_ANIMATION: Animation
var WALK_ANIMATION: Animation
var SPRINT_ANIMATION: Animation

func init_weapon(type, display_name, inventory_sprite, is_stackable, amount, is_lootable, max_stack, idle_animation, use_animation, walk_animation, sprint_animation):
	TRAITS = init(type, display_name, inventory_sprite, is_stackable, amount, is_lootable, max_stack)
	
	TRAITS[IDLE_ANIMATION] = idle_animation
	TRAITS[USE_ANIMATION] = use_animation
	TRAITS[WALK_ANIMATION] = walk_animation
	TRAITS[SPRINT_ANIMATION] = sprint_animation
	
	return TRAITS
	
func _process(_delta):
	pass

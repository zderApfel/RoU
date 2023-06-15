class_name Weapon extends Item
@onready

var CURRENT_STATE: bool
var IDLE_ANIMATION: Animation
var USE_ANIMATION: Animation
var WALK_ANIMATION: Animation
var SPRINT_ANIMATION: Animation


func init_weapon(tag = null, display_name = "{item_name_here}", inventory_sprite = null, is_stackable = false, amount = 1, is_lootable = true, max_stack = 1, description = "{item_description_here}", current_state = false, idle_animation = null, use_animation = null, walk_animation = null, sprint_animation = null):
	TRAITS = init_item(tag, display_name, inventory_sprite, is_stackable, amount, is_lootable, max_stack)
	
	TRAITS[CURRENT_STATE] = current_state
	TRAITS[IDLE_ANIMATION] = idle_animation
	TRAITS[USE_ANIMATION] = use_animation
	TRAITS[WALK_ANIMATION] = walk_animation
	TRAITS[SPRINT_ANIMATION] = sprint_animation
	
	return TRAITS
	
func _process(_delta):
	pass

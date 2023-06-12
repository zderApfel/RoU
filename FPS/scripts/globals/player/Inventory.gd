extends Node
@onready

var INVENTORY = {
	"HEAD_SLOT": Item,
	"BACK_SLOT": {
		"TWOHAND_WEAPON": Item,
		"BACKPACK": Item
	},
	"ARMOR_SLOT": Item,
	"CHEST_SLOT": Item,
	"SLING_SLOT": Item,
	"HOLSTER_SLOT": Item,
	"EXTRA_SLOTS": {
		"CHEST_INVENTORY": [],
		"BACK_INVENTORY": []
	}
}

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

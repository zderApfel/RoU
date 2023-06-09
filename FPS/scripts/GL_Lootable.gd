class_name Lootable extends Node
@onready

var DisplayName: String
var ItemID: String
var Model: StaticBody3D
var InventorySprite: Node2D
var IsStackable: bool
var MaxStack: int

func _init(display_name, item_ID, model, inventory_sprite, is_stackable, max_stack):
	self.DisplayName = display_name
	self.ItemID = item_ID
	self.Model = model
	self.InventorySprite = inventory_sprite
	self.IsStackable = is_stackable
	self.MaxStack = max_stack
	
	if !is_stackable:
		max_stack = 1
	else:
		max_stack = self.max_stack

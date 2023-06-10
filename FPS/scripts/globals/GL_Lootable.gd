class_name Lootable

var DisplayName: String
var ItemID: String
var InventorySprite: Node2D
var IsStackable: bool
var MaxStack: int
var Amount: int
var IsLootable: bool

func create(display_name: String, item_ID: String, inventory_sprite: Node2D, is_stackable: bool, max_stack: int, amount: int, is_lootable: bool):
	self.DisplayName = display_name
	self.ItemID = item_ID
	self.InventorySprite = inventory_sprite
	self.IsStackable = is_stackable
	self.MaxStack = max_stack
	self.Amount = amount
	self.IsLootable = is_lootable

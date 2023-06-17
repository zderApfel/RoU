extends TwoHandFirearm


# Called when the node enters the scene tree for the first time.
func _ready():
	self.type = "TwoHandFirearm"

func _process(_delta):
	pass

func primary_action():
	print("BANG!")

func secondary_action():
	print("*aims down sights")


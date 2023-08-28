class_name RNG extends RandomNumberGenerator

static func coinflip() -> bool:
	var x = randi_range(0,100)
	
	if x < 50:
		return false
	else:
		return true

static func d100(chance: float = 50.0, primary_mod: float = 0.0, secondary_mod: float = 0.0) -> bool:
	var x = randf_range(0,100)
	
	var final_chance = chance + primary_mod + secondary_mod
	
	if x <= final_chance:
		return true
	else:
		return false

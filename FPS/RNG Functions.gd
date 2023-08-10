class_name RNG extends RandomNumberGenerator

static func coinflip() -> bool:
	var x = randi_range(0,100)
	
	if x < 50:
		return false
	else:
		return true

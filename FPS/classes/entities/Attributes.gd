extends Node

@export var Melee: int = 10
@export var Shooting: int = 10
@export var Health: int = 10
@export var Agility: int = 10
@export var Charisma: int = 10

#NOT PUBLIC
@export var Luck: int = 10

#NPC ONLY
@export var Reputation: int = 0
@export var Loyalty: int = 0
@export var Cowardice: int = 0


'''-----------------------------------------'''
	
func add_attribute(attribute, by):
	attribute += by
	return clamp(attribute, 1, 20)
	
func sub_attribute(attribute, by):
	attribute -= by
	return clamp(attribute, 1, 20)


class_name Attributes extends Node

## Scales melee attack damage and critical strike chance
@export var Melee: int = 10

## Scales accuracy and reload speed
@export var Shooting: int = 10

## Scales maximum stamina and BP damage resistance
@export var Health: int = 10

## Scales movement speed and melee speed
@export var Agility: int = 10

## Improves chance of success to dialogue checks & shop discounts
@export var Charisma: int = 10

## PRIVATE | Improves to most RNG rolls
@export var Luck: int = 10

## NPC ONLY | Represents the NPCs opinion of the Player Character
@export var Reputation: int = 0

## NPC ONLY | Represents a mercenary's loyalty to the cause
@export var Loyalty: int = 0

## PRIVATE | NPC ONLY | The liklihood for an NPC to flee instead of initiating combat 
@export var Cowardice: int = 0


'''-----------------------------------------'''
	
func add_attribute(attribute, by):
	attribute += by
	return clamp(attribute, 1, 20)
	
func sub_attribute(attribute, by):
	attribute -= by
	return clamp(attribute, 1, 20)


class_name Attributes extends Node

## Per point:
## +1 Melee damage
## +0.5% melee crit chance
@export var Melee: int = 10

## Per point:
## +2% accuracy
## +0.5% faster reload speed
@export var Shooting: int = 10

## Per point:
## +2% maximum stamina
## +2% BP Damage resistance
@export var Health: int = 10

## Per point:
## +1% movement speed
## +1% melee speed
@export var Agility: int = 10

## Per point:
## +2% discount at vendors
## 1% to dialogue checks
@export var Charisma: int = 10

## PRIVATE | 
## Per point: 
## +0.2% to most random rolls
@export var Luck: int = 10

## NPC ONLY | 
## Represents the NPCs opinion of the Player Character
@export var Reputation: int = 0

## NPC ONLY |
## Represents a mercenary's loyalty to the cause
@export var Loyalty: int = 0

## PRIVATE |
## NPC ONLY |
## The liklihood for an NPC to flee instead of initiating combat 
@export var Cowardice: int = 0


'''-----------------------------------------'''
	
func add_attribute(attribute, by) -> int:
	attribute += by
	return clamp(attribute, 1, 20)
	
func sub_attribute(attribute, by) -> int:
	attribute -= by
	return clamp(attribute, 1, 20)
	
func return_modifier(attribute) -> float:
	return (attribute-10)/2


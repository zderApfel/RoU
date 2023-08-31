class_name Attributes extends Node


## Per point: 
## -1% recoil; 
## +0.5% faster reload speed
@export var Shooting: int = 10

## Per point: 
## +2% melee speed; [Implemented]
## +1% melee BP damage; [Implemented]
## +0.5% melee crit chance [Implemented]
@export var Strength: int = 10

## Per point: 
## -2% reduced stamina usage; 
## +2% BP Damage resistance
## +2% faster recovery from knockdowns
@export var Body: int = 10

## Per point: 
## +1% lockpickinging/hacking chance; 
## +1% to dialogue checks to recall or know information
@export var Mind: int = 10

## Per point: 
## +2% discount at vendors; 
## +1% to dialogue checks to pursuade, intimidate, or lie. 
@export var Charisma: int = 10

## PRIVATE |  
## Per point: 
## +0.2% to most random rolls
@export var Luck: int = 10

## NPC ONLY:  
## Represents the NPCs opinion of the Player Character
@export var Reputation: int = 0

## NPC ONLY: 
## Represents a mercenary's loyalty to the cause
@export var Loyalty: int = 0

## PRIVATE |
## NPC ONLY: 
## The liklihood for an NPC to flee instead of initiating combat 
@export var Cowardice: int = 0

## PRIVATE: 
## A dictionary of crimes that's tracked per character. 
## This has various influence to varying degrees depending on 
## Severity, amount, etc.
@export var Crimes: Array = []


'''-----------------------------------------'''
	
func add_attribute(attribute, by) -> int:
	attribute += by
	return clamp(attribute, 1, 20)
	
func sub_attribute(attribute, by) -> int:
	attribute -= by
	return clamp(attribute, 1, 20)
	
func return_modifier(attribute) -> float:
	if attribute == 10:
		return 0
	else:
		return attribute-10


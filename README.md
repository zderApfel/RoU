# Rage of the Urbanites - The ACAB FPS

It is 2054.

Due to a catastrophic failure in 2032 to regulate the global temperature via an experimental weather machine, Earth has now entered a new ice age. 

In the early years of the ice age, many nations around the world buckled under the new threat. Most survivors from the Global South (who were able to) had to migrate due to the worsened famine and instability, until they eventually became frozen wastelands devoid of most life. The first world nations survived mostly unscathed. However, the ticking time bomb that was the United States eventually burst. 

The nation's simmering alt-right plague came to a head when agitators joined forces with militias and high-ranking military officers, as well as other elected officials to forcibly coup the entire American government, instilling a new fascist regime called Neopublicans. Their first act was to rename the nation to the Republic of America, and replaced all state governments with cronies of their own given the power to rule with impunity.

The police forces, as expected, got worse as a result, with police brutality practically made legal against the ever larger poverty class.

You play as a disillusioned anarchist who recently lost their closest friend to a murder by one of these emboldened police officers. Through events I don't want to spoil, you decide to start a militia of their own and bring the power back to the people. 

# Gameplay

The game will take place in an open world in which the NPCs, quests, and loot are procedurally generated.

* You will be given free-reign to explore the world at your leisure in what's called the **exploration phase**. During the exploration phase you can meet NPCs, do favors for them, find loot through legal or illegal means, or just kill people. It's really up to you. Keep in mind murder hoboing DOES have consequences...

* In order to complete these raids you need to prepare, which is what the exploration phase is for. 

* Some raids have time frames you need to act within, while others are free to be done whenever you want.

* In order to complete the game, there's a series of scripted missions you have to beat, called "Raids". 

# Mechanics

## Time

## Mercenary Stats and Attributes

* Hit Points (HP) - Represents your mercenary's health. When reaching zero, a calculation is made to determine if the mercenary dies or is rendered unconscious. (See [Unconscious](#unconscious))

* Balance Points (BP) - Represents your mercenary's balance. BP reduces from getting damaged, and once it reaches zero your mercenary ragdolls for a time. Melee attacks have significantly stronger BP damage than bullets do (outside of the high caliber ones), so don't worry about getting cheesed down but a group of gunmen...but also a group of gunmen can kill you fast anyway. BP regenerates quickly after not being damaged for a time

* Armor Points (AP) - Represents the health of any worn armor. Armor health is depleted by a large amount when pierced by a bullet. If a bullet is deflected, AP and HP reduction is minimal, with BP damage being reduced by a margin. 

## States

Individual mercenary recruits can get into various states depending on many possible factors. These can be both positive and negative

### MIA

A placeholder state for when your mercenary's gone unconscious mid-raid. You'll find out what state they're in the following day. In some cases, MIA leads to the character having been mugged (stripped of all carried items) and making their way home the following day.

### Unconscious

Happens when your mercenary's HP reaches zero with blunt damage.

What happens after getting knocked out also depends on who got the last hit in, unless law enforcement are in active pursuit of you, in which case the police condition applies.

* Police/Military - That mercenary is [Detained](#detained)
* Civilian; self-defense - The mercenary can either be detained, killed, or mugged.
* Civilian; aggressor - The character may be killed or mugged
* Hostile - Character is killed

### Detained

When detained, a mercenary is in police custody. Mercenaries stay in this state until they are broken out 

[TBD]

## Item Quality

Quality is tied directed to cost in shops, chance to spawn in loot areas, and signified but a color around it in the inventory. Quality is NOT a signifier of how strong/good the item is.

* Junk [0] | Black/no outline | Anything uncharacterized or is so common it's not meant to be picked up
* Common [1] | Light grey | Most mundane items and common melee weapons are in this category
* Uncommon [2] | Light green | Civilian firearms and unique melee weapons are in this category
* Rare [3] | Cyan | All fully automatic/illegal firearms fit into this catgory, as well as Police-issue items
* Epic [4] | Purple | Military-issue items fit into this category
* Legendary [5] | Yellow | Incredibly unique items are in this category, like easter egg items. Usually these can only be found in specific item pools

## Item List

FORMAT: Name | ID* | Quality - Description

*I use this value for item pool purposes **exclusively**

### Generic

* **Dingdong** | 1 | N/A - *This is just a placeholder item*

### TwoHandFirearm

#### Assault Rifles

* **AK-762** | 2 | [3] - *One of the USSR's few good contributions. The AK-762 has been the strong-arm of underdog revolutionaries since the 1940s, a tradition that continues to this day thanks to its sturdy construction, powerful cartridge, and easy maintenance. However, its weight and recoil leave much to be desired.*
* AK-545 | 3 | [3] - *A newer version of the AK that was made during the Cold War that used a newer, smaller cartridge.*
* AK-48 | 4 | [4] - *The Russian Federation's rifle of choice for their troops. Part of a long line of derivatives of the original AK-762*
* M4A3 | 5 | [4] - *Standard issue rifle of the ROA military, based on the highly customizable and very balanced AR platform*
* M16 | 6 | [5] - *One of the oldest versions of the AR platform that can be found. First developed in the 1950s by the United States*


### OneHandFirearm

### OneHandMelee

### TwoHandMelee | 5x

### Tools | 6x

----------------------------------

### Consumable

### Ammo

#### Intermediate

##### 5.45x39mm [3]

* Traits:

    (+) Low recoil
    
    (-) Low HP, BP, and AP damage

* Variants

    * 5.45x39mm HP | 10001
    * 5.45x39mm FMJ | 10002
    * 5.45x39mm FMJ (+)p | 10003
    * 5.45x39mm AP | 10004

##### 7.62x39mm [2]

* Traits:

    (+) High power

    (-) High Recoil
    
    (-) Low accuracy

* Variants 

    * 7.62x39mm HP | 10005
    * 7.62x39mm FMJ | 10006

##### 5.56x45mm [2]

* Traits:
    (+) Manageable recoil
    
    (+) Moderate HP damage
    
    (-) Low AP damage

* Variants

    * 5.56x45mm HP | 10007
    * 5.56x45mm FMJ | 10008
    * 5.56x45mm AP | 10009

#### Ammo Types

Not all types are available for every caliber. When loot is generated, the type is FMJ by default and then has a chance to be changed to another type depending on where it is being purchased

* Hollow Point (HP) - High BP and HP damage but low AP damage. Typically used by law enforcement, hunters, and personal defense
* Full Metal Jacket (FMJ) - Standard cartridge with decent damage across the board. Used by military personel and sport shooters
* Full Metal Jacket Enhanced Penetration (FMJ +p) - Full Metal Jacket rounds with slightly higher AP damage but slightly lower HP damage. Used mostly by gun enthusiasts
* Armor Piercing (AP) - Expensive cartridge with very high BP damage but lower HP damage
* Sub-Sonic (SP) - Exotic cartridge with extremely low sound when firing, at the expense of slow muzzle velocity. This is an exceedingly rare type of ammo that is usually only afforded to elite military units

### Armor

### Headgear

### Chest Rigs

### Backpacks



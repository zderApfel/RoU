# Rage of the Urbanites - The ACAB FPS

It is 2054.

Due to a catastrophic failure in 2032 to regulate the global temperature via an experimental weather machine, Earth has now entered a new ice age. 

In the early years of the ice age, many nations around the world buckled under the new threat. Most survivors from the Global South (who were able to) had to migrate due to the worsened famine and instability, until they eventually became frozen wastelands devoid of most life. The first world nations survived mostly unscathed. However, the ticking time bomb that was the United States eventually burst. 

The nation's simmering alt-right plague came to a head when agitators joined forces with militias and high-ranking military officers, as well as other elected officials to forcibly coup the entire American government, instilling a new fascist regime called Neopublicans. Their first act was to rename the nation to the Republic of America, and replaced all state governments with cronies of their own given the power to rule with impunity.

The police forces, as expected, got worse as a result, with police brutality practically made legal against the ever larger poverty class.

You play as a disillusioned anarchist who recently lost their closest friend to a murder by one of these emboldened police officers. Through events I don't want to spoil, you decide to start a militia of their own and bring the power back to the people. 

# Raids [CONFIDENTIAL]

## Tutorial Raid 

* Protag Lock
* An optional (and skippable) mission that you can do at the beginning. This raid entails escaping jail after being arrested during a protest

## A New Home 

* Protag Lock
* Find an abandoned weather site
* This site is a dungeon that is inhabited by a cult that believes that the start of the Second Ice Age was a simulation and the weather sites hold the key to escaping it
* Once beaten, this site becomes your new hideout

## Retribution

* *"Get your revenge. Take down the Chief of Police and anybody who tries to stop you"*

## The Showdown 

* Protag Lock
* *"This is it. All your work is now finally going to pay off. Take that waste down"*
* You will be raiding the Presidental Palace and taking down Royland DerSantos
* This raid has high-tier enemies that can easily cut down the ill-prepared

# Difficulty [CONFIDENTIAL]

## Casual

*"An easier experience, but still challenging"*

* Main character respawns
* "Tired", "Bleeding", and "Poisoned" effects are disabled
* Health regenerates to 30% over time
* Extra starting attribute points

## Intermediate

*"A good challenge for those familiar with FPSs"*

* Main character respawns
* "Bleeding" effects are disabled
* Health regnerates to 10% over time
* Melee attacks require stamina

## Hardcore

*"The developer-intended way to play. Punishingly difficult to those unfamiilar with the game's mechanics"*

* Main character death means GAME OVER and save file deletion
* Some raids now must be completed within a certain time frame, with consequences for failure
* Health doesn't regenerate
* You regain stamina at a slower rate the less health you have

## Modifiers

### Melee Only

* Guns and ammunition are removed from all item pools
* Enemies use melee weapons instead of firearms
* Throwables are still available
* Recommended for players who want a less intense experience

# Mechanics

## Combat

HP/BP/AP Damage
* The HP/BP/AP damage done before any resistances

Damage Type

* Bludgeon, Pierce, Slash, Ballistic, Poison, Caustic, Fire, Explosive, Impulse
* Used for handling resistances/immunities

Bleed Chance

* Chance for an enemy to bleed when struck
* BLEED = BASE - (HEALTH - 10) * 1

### Melee Exclusive

Block Power
* This value is directly tied to parry strength 

Crit Chance
* CRT = BASE + [(LUCK - 10 ) * 0.2] + [(MELEE - 10) * 0.5]
* Critical hits multiply the damage by the weapon's crit modifier

Crit Modifier
* Per weapon

### Firearm Exclusive

## Mercenaries

The core mechanic of this game is recruiting mercenaries to fight by your side when the need arises. 

However, a large majority of people are not terribly comfortable with, and may be hostile to, the idea of revolting. That means you must build a [reputation](#reputation) with them. The higher their reputation, the more likely they will accept your offer. 

Once recruited, mercenaries will have a [loyalty](#loyalty) stat that's equal to their reputation stat when brought onto the team.

Mercenaries do not exist in the world anymore once hired, and are "activated" from the Hideout between explorations/raids or put into different support slots

### Activating a Merc

During exploration or a raid, you can either play as yourself, or you can play as one of your mercenaries.

### Stats

* Hit Points (HP) - Represents your health. When reaching zero, a calculation is made to determine if the mercenary dies or is rendered unconscious. (See [Unconscious](#unconscious))

* Stamina - Depletes when sprinting, jumping, or melee attacking. Regeneration scales with Health

* Balance Points (BP) - Represents your balance. BP reduces from getting damaged, and once it reaches zero your mercenary ragdolls for a time. Melee attacks have significantly stronger BP damage than bullets do (outside of the high caliber ones), so don't worry about getting cheesed down by a group of gunmen...but also a group of gunmen can kill you fast anyway. BP regenerates quickly after not being damaged for a time.

* Armor Points (AP) - Represents the health of any worn armor. Armor health is depleted by a large amount when pierced by a bullet or hit with a bladed melee weapon. If a bullet is deflected, damage is minimal.

### Attributes

Attributes are listed on a scale from 10 to 20, with 10 being represented as "average" and the baseline for stat increases/decreases

#### Melee

* +1 melee damage
* +0.5% melee crit chance

#### Shooting

* +2% accuracy
* +0.5% reload speed

#### Health

* +2% maximum stamina
* +2% BP damage resistance
* (HARDCORE ONLY) 1% bleed resistance

Agility:

* +1% movement speed
* +1% melee speed

Charisma:

* +2% discount at vendors
* +1% to dialogue checks

Luck [CONFIDENTIAL]:

* 0.2% added to ALL rolls
* Will be implemented in other specific ways

In addition, there's a couple additional attributes that apply only to NPCs

* Reputation: Represents the NPCs opinion of the player character
* Loyalty: Represents a mercenaries loyalty to the cause
* Cowardice [CONFIDENTIAL]: The liklihood that the NPC will flee from combat when damaged or threatened. *HINT: This decreases significantly when an NPC is armed.*

### Legendary Attributes [CONFIDENTIAL]

For any attribute that's at level 20, you can continue training that attribute with a 1% chance to gain a legendary attribute. Only one legendary attribute can be acquired per character, and cannot be removed.

* Superhuman Strength (Melee) - You can no longer be handcuffed, you break out of them with ease

* Terra Shooter (Shooting) - 20% chance not to consume ammo for MOST guns

* Poison Immunity (Health) - Immunity to inhaled and lingering poisons

* Cracked Egg (Agility) - You gain the ability to double jump

* Silver Tongue (Charisma) - All social checks automatically succeed

### Passive Activites

During an exploration phase where they're not doing anything, you can select a passive activity for a merc to do:

Training - Weightlifting

* 3% chance to increase Strength/Health

Training - Target Practice

* 3% chance to increase Shooting
* Costs an amount of money to spend on ammunition

Training - Cardio

* 3% chance to increase Agility/Health

Casino - Charisma

* Chance to win or lose money
* Chance to win: 40% + (Charisma-10)*2

Casino - Agility/Charisma

* Significantly higher chance to win money, but loss means getting [detained](#detained) Scales with Agility/Charisma
* Chance to win: 100 - gambling_difficulty + (Charisma-10)*2
* Chance to be caught: 30 + gambling_difficulty + (Agility-10)*2

Theft - Agility 

* Chance to steal some extra items, but with a chance to be detained or killed
* Has its own loot pool and not all items are possible to be found through theft
* Chance to succeed: 100 - item_difficulty + (Agility-10)*2

Scout - Agility/Shooting

* Can scout out a raid area for you to provide some basic details
* Has a chance to result in death
* Chance to succeed: 100 - raid_difficulty + ((Agility-10)+(Shooting-10))

### Specializations

Rarely, the merc you hired on is particularly good at a certain set of skills, this means they have special talents that can benefit

Master Thief:

* Active: Lockpicking is doublerolled, with a 20% chance to not consume a lockpick
* Passive: Never fails at passive theft but can only bring back half as much loot
* Requires: Agility 14, Charisma 12 

Martial Artist: 

* Active: Can parry melee weapons with your fists
* Passive: +0.5% chance for all mercenaries to level up fron training activities (Stackable)
* Requires: Agility 16, Strength 14

Heavyweight:

* Active: You resist 50% of BP damage BEFORE all other resistances
* Passive: None
* Requires: Strength 16, Health 14

Packrat:

* Active: Doubled pocket inventory space
* Passive: None
* Requires: N/A

Infiltrator:

* Active: Doesn't make noise when jogging
* Passive: Scout/Thief activities are double-rolled, taking the highest
* Requires: Agility 15

Hacker: 

* Active: Chance to bypass an electronic countermeasure without inputting a passcode (keycads, computers, etc.)
* Passive: N/A  
* Requires: N/A
* Works only once per device
* Matches the character's lockpicking chance (stacks with master thief)

Smooth Criminal:

* Active: Speech checks are double-rolled
* Passive: A random mercenary has a 3% (+0.5% per) chance to gain a point of Charisma every 24 in-game hours
* Requires: Charisma 16

## Security/Unrest

[TBD]

## Buffs/Debuffs

**Tired** - Happens after 8 in game hours. Increases with intensity over time. Can be suppressed with drugs, but Tired V will kill you if not addressed. Reduces Stamina regen

**Poisoning** - There's two types of poisoning, inhaled and lingering. Inhaled poisons damage you for an amount per second while in an area contaminated by it. Lingering poisons can have various effects that last until the end of the raid/mission or if an antidote is taken 

## Mercenary States

You can get into various states depending on many possible factors. These can be both positive and negative

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

When detained, a mercenary is in police custody. Mercenaries stay in this state for a certain amount of time depending on the wanted level you had before 

[TBD]

## Item Quality

Quality is tied directed to cost in shops, chance to spawn in loot areas, and signified but a color around it in the inventory. Quality is NOT a signifier of how strong/good the item is.

* Common [1] | Light grey | Most mundane items and common melee weapons are in this category

* Uncommon [2] | Light green | Civilian firearms and unique melee weapons are in this category

* Rare [3] | Cyan | All fully automatic/illegal firearms fit into this catgory, as well as Police-issue items

* Epic [4] | Purple | Military-issue items fit into this category

* Legendary [5] | Yellow | Incredibly unique items are in this category, like easter egg items. Usually these can only be found in specific item pools

## Item List

### Generic

* **Dingdong** | N/A - *This is just a placeholder item*

### TwoHandFirearm

#### Intermediate Rifles

* **AK-47** | [3] | 7.62x39 - *One of the USSR's few good contributions. The AK-762 has been the strong-arm of underdog revolutionaries since the 1940s, a tradition that continues to this day thanks to its sturdy construction, powerful cartridge, and easy maintenance. However, its weight and recoil leave much to be desired.*

* **AK-74** | [3] | 5.45x39 - *A newer version of the AK that was made during the Cold War that used a newer, smaller cartridge.

* AK-48 | [4] | 5.45x39 - *The Russian Federation's rifle of choice for their troops. Part of a long line of derivatives of the original AK-47*

* Mjolnir-5.56 | [4] | 5.56x45 - *Standard issue rifle of the ROA military, based on the highly customizable and very balanced AR platform*

* ARM-22 | [1] | .22lr - *A civilian version of the Mjolnir rifle. Semi-auto only. Compatible with Mjolnir and ARM parts*

* ARM-5.56 | [4] | 5.56x45 - *A modified version of the ARM-.22 that can fire the much more powerful 5.56x45 round. Semi-auto only*

#### Full-Power Rifles

* SCAR-H | [4] | .308 - *A criminally under-used battle rifle.*

#### Carbines/SBRs

* DrAKo | [5] | 7.62x39 - *A "pistol" designed in Romania in the mid 20th century to attempt to ride the coattails of the AK, with surprising success*


#### Bolt-Action Rifles

* Woodsman-43 | [1] | .308 - *A common hunting rifle with with a modern flair.*

#### Shotguns

* DB Shotgun | [1] | 12 Guage - *A classic beauty. Perfect for hunting and demon-slaying*

#### Submachine Guns

* UMP-45 | [3] | .45acp - *Standard-issue police SMG that's used by SWAT teams. Low rate of fire but excellent stopping power*

### OneHandFirearm

#### Low-Cap Pistols

* M1911 | [5] | .45acp - *A legendary relic of the early 20th century. Small magazine but great stopping power*
* M49 | [2] | .45acp - *A modernized version of the M1911. More bells and whistles but missing an aspect of magic*

#### Hi-Cap Pistols

* G84 | [2] | 9x19 - *A reliable polymer pistol used as a sidearm for police forces around the world*

#### Magnums

* Ytho-44 | [2] | .44 Magnum - *A powerful revolver favored by those without wrists or bastard Generals*
* Deagle | [4] | .44 Magnum - *A beautiful abomination designed by a failed ethnostate. Perfect for when you want your target's head to disappear*

### OneHandMelee

* Kitchen Knife | [1] - *Do you like scary movies?*

### TwoHandMelee

* Baseball Bat | [1] - *Homerun!*

### Tools

* Lockpick Kit [2] - *A collection of tools for opening locks. Can be used 20 times*
    - Chance to pick lock: 20% * (0.5 * (Agility-10))
    - Illegal
* Drill [1] - *Can be used to open various things, or break locks...loudly*

----------------------------------

### Consumable

### Ammo

#### Ammo Variants

Not all variants are available for every caliber. When loot is generated, the type is FMJ by default and then has a chance to be changed to another type depending on its loot pool

* Hollow Point (HP) - High BP and HP damage but low AP damage
* Full Metal Jacket (FMJ) - Standard cartridge with decent damage across the board
* Full Metal Jacket Enhanced Penetration (FMJ +p) - Full Metal Jacket rounds with slightly higher AP damage but slightly lower HP damage
* Tracer (T) - Guarantees a green tracer for your bullet. Helps with accuracy. Also has slightly increased HP damage
* Armor Piercing (AP) - Expensive cartridge with very high BP damage but lower HP damage
* Sub-Sonic (SP) - Exotic cartridge with extremely low sound when firing, at the expense of slow muzzle velocity. This is an exceedingly rare type of ammo that is usually only afforded to elite military units

There's also a few variants exclusive to shotgun ammo:

* Buckshot (Red) - Standard shotgun ammunition
* HP Slug (Green) - A singular projectile with very high HP damage, but barely scratches armor
* Steel Slug (Yellow) - A singular projectile with higher AP damage but lower HP damage
* Flechette (White) - Similar to buckshot, but with higher AP damage


#### Ammo Stats [CONFIDENTIAL]

TBD

#### Intermediate

##### 5.45x39mm [3]

Traits:

* (+) Low recoil
* (-) Low HP, BP, and AP damage


Variants:

* HP
* FMJ
* FMJ +P
* T
* AP

##### 7.62x39mm [2]

Traits:

* (+) High power
* (-) High Recoil
* (-) Low accuracy

Variants:

* HP
* FMJ
* T

##### 5.56x45mm [2]

Traits:

* (+) Manageable recoil
* (+) Moderate HP damage
* (-) Low AP damage

Variants:

* HP
* FMJ
* T
* AP

### Armor

#### Mechanics

##### Armor Leves

Each set of armor has an armor level. As a rule of thumb, armor is guaranteed to block ~3 rounds of ammo of equal pen rating

Levels:

* TBD

##### Absorbtion

Armor has an "absorbtion" rating which signifies the armor's resistance to being damaged

##### Penetration Chance

Penetration chance follows this formula:

Pen% = 100 + (absorbtion) - percentage_ap_missing

Pen% CAN go over 100.

### Headgear

Works the same as armor, except for the head region. Also cannot be repaired in any way

### Backpacks



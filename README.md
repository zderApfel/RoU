# Rage of the Urbanites - A modern TBRPG

# Overview

Rage of the Urbanites will be a turn-based RPG in a modern setting. The story centers around the fictional nation of Dufonta, which is currently under rule of a theocratic fascist party, the “Purity Party”. The Purity Party is a party that focuses on squashing perceived moral decay. This results in strict laws governing personal liberties as they may contradict the party’s religious beliefs. Their initial victory was after the “Worker’s Party of Dufonta” was overthrown in a violent coup de tat that resulted in the execution of almost all the key party members.
The player takes the role of a struggling family man who recently lost their job. After responding to a cry for help one night, you find yourself part of a campaign far beyond anything you ever saw yourself doing. 

# Gameplay

## Exploration Phase

In this phase, your character usually has full freedom to move around. In this state, your controls are very basic, with your basic movement keys and then the following actions, bound to their own buttons:

* "Talk”: If an NPC is nearby, you begin a conversation
* “Inspect”: You investigate the nearby area for anything of interest. Outside of obvious/required things, you can find random loot depending on where you investigate depending on your “INTELLECT” stat
* "Attack”: If an NPC or object is nearby that can be attacked, you do so. If it’s an NPC, combat starts with you automatically doing a basic attack with your equipped weapon. 
* “Menu”: Open the pause menu

## Combat Phase

In this phase, your party and your opponents are placed on the left and right side of a vertical battlefield. In combat, the following happens in order:
* Opportunity attacks happen
* Initiative is rolled (influenced by AGILITY and VIGOR) to determine turn order. 
* Both sides start combat, each entity taking a turn. 
* On the player’s (left) side, you control your teammate’s moves when it’s their turn. 
* On the enemy’s (right) side, attacks are done randomly, with a chance to do an “Intelligent Action” (determined by the enemy’s INTELLECT”)

### Innate Attributes
Almost every NPC and enemy in the game has a set of attributes, including the player. These attributes affect various elements of gameplay, and sometimes affect player entities and enemy entities differently. 

Attributes are listed on a scale of 1-20, where 1 is disabled-level, 10 is average, and 20 is nigh-superhuman. A score cannot go below 1 for any reason, but CAN be brought over 20 by specific means.

When you start a campaign, you'll have the option to dedicate one point to **two** of these attributes

* **Strength (STR)**: Modifier for strength-based actions and melee attacks
* **Agility (AGI)**: Modifier for agility-based actions and ranged attacks
* **Vigor (VIG)**: Modifier for resistance to damage and some effects
* **Intellect (INT)**: Different uses depending on the entity:
    ```
        For Players: Modifier for many specific things (see “Intellect” for more information)
        For Enemies: Modifier for “Intelligent Actions”
    ```
* **Personality (PER)**: Modifier for social actions. Also effects the “Taunt” action in combat.
* **Sanity (SAN)**: Modifier for resistance to mental effects (such as insults) 



### Arbitrary Attributes

These are attributes that are more arbitrary and thus have very specific methods of being changed, which will be elaborated here. They operate on the same 1-20 scale that other attributes do. 

* **Luck (LUK)**: Slightly modifies all RNG-based actions by adding **LUK * .2** to the calculation. Changed with certain gear or actions
* **Criminality (CRM)**: The entity's criminal history, which increases the liklihood of random encounters with law enforcement. Increased by committing crimes, can be mitigated with certain gear. 

### Critical Hits

Weapon attacks have a chance to deal a critical hit when it hits. Critical hits boost the damage of the attack depending on its crit modifier. The chance is dependent on the entity weilding it and the weapon being used. Critical hit chance is also modified by luck.

### Status Effects

* **Enraged**: Melee damage boosted, accuracy and dodge chance reduced
* **Burned**: Deals tick damage at the start of their turn for a number of turns
* **Paralyzed**: Paralyzes the entity for a number of turns; resisted with Vigor
* **Poisoned**: Works the same as fire
* **Chemical Burns**: Entity takes 0.5x extra damage for a number of turns
* **Confusion**: Entity has a chance to either attack its teammate 

### Damage types

These are different damage types that can 

**Weapon Damage Types - Damage dealt by weapon attacks. Can critical hit**
* **Blunt**: CRTMOD - 1.25x
* **Pierce**: CRTMOD - 2x
* **Slash**: CRTMOD - 1.5x
* **Ballistic**: CRTMOD - 2x
* **Explosive**: CRTMOD - 1.25x

**Elemental Damage Types - Damage dealt by various elements. Can cause status effects**

* **Fire**: STATUS - *Burned*
* **Electric**: STATUS - *Paralyzed*
* **Poison**: STATUS - *Poisoned*
* **Acid**: STATUS - *Chemical Burns*


 

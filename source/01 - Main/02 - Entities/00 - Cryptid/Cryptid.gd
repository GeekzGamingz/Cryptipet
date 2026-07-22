extends CharacterBody2D
class_name Cryptid
## Cryptid
##
## All [Cryptid]s inherit from [CharacterBody2D]. The player never has direct control[br]
## over the [Cryptid] and only can influence its behaviors by tending to its needs.
#------------------------------------------------------------------------------#
# Variables
# Exported Variables
## Sets the [enum concept] level of the player's [Cryptid] to the specified [String];[br]
## This the maturity of the creature and will help it evolve into the different stages [br]
## of life as a [Cryptid].[br][br]
## Default = "Essence"
@export_enum(
	"Essence",
	"Rumor",
	"Glimpse",
	"Revealed",
	"Manifesting"
) var concept: String = "Essence":
	set(new_concept):
		concept = new_concept
		print("Concept: ", concept)
## Sets the [enum happiness] level of the player's [Cryptid] to the specified [String];[br]
## How happy the creature is will depend on how it evolves, when it leaves, or if it dies.[br][br]
## Default = "Neutral"
@export_enum(
	"Hostile",
	"Angry",
	"Frustrated",
	"Neutral",
	"Happy",
	"Elated",
	"Euphoric"
) var happiness: String = "Neutral":
	set(new_happiness):
		happiness = new_happiness
		print("Happiness: ", happiness)
## Sets the [enum hunger] level of the player's [Cryptid] to the specified [String];[br]
## Hunger can greatly affect the [enum happiness] of the [Cryptid] and how it evolves.[br][br]
## Default = "Satiated"
@export_enum(
	"Starving",
	"Ravenous",
	"Famished",
	"Peckish",
	"Nibbly",
	"Content",
	"Satiated",
	"Full"
) var hunger: String = "Satiated": 
	set(new_hunger):
		hunger = new_hunger
		print("Hunger: ", hunger)

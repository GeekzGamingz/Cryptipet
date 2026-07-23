extends Node2D
## [Cryptid] Concept
##
## This node manages the [Cryptid]'s Concept and how strong it has become.
#------------------------------------------------------------------------------#
# Variables
# Exported Variables
# Exported Enums
## Sets the Concept [enum stage] of the player's [Cryptid] to the specified [String];[br]
## This is the maturity of the creature and will help it evolve into the different stages [br]
## of life as a [Cryptid].[br][br]
## Default = "Essence"
@export_enum(
	"Essence",
	"Rumor",
	"Glimpse",
	"Revealed",
	"Manifesting"
) var stage: String = "Essence":
	set(new_stage):
		stage = new_stage
		print("Concept: ", stage)

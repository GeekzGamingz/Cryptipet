extends Node2D
#------------------------------------------------------------------------------#
# Variables
# Exported Variables
# Exported Enums
## Sets the [enum concept] level of the player's [Cryptid] to the specified [String];[br]
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

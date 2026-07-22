extends Node2D
#------------------------------------------------------------------------------#
# Variables
# Exported Variables
# Exported Enums
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
) var stage: String = "Satiated": 
	set(new_stage):
		stage = new_stage
		print("Hunger: ", stage)

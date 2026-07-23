extends Node
## Textures
##
## This node is intended to store the [Texture2D]s for Global useage.
#------------------------------------------------------------------------------#
# Global Variables
# Global Dictionaries
## Stores the Location Background [Texture2D]s to a Global [Dictionary]
var LOCATIONS: Dictionary = {
	"Off": preload("uid://wnc2m06npfqg"),
	"Graveyard_Night": preload("uid://dtd5fcqyd17to"),
	"Graveyard_Day": preload("uid://5y0xykj2iki7")
}
## Stores the Cryptid Sprite Sheet [Texture2D]s to a Global [Dictionary]
var CRYPTIDS: Dictionary = {}

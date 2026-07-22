extends TextureRect
#------------------------------------------------------------------------------#
# Variables
# Exported Variables
# Exported Enumerations
@export_enum("Off", "Graveyard") var location = "Off":
	set(new_location):
		location = new_location
		texture = Textures.LOCATIONS[location]
#------------------------------------------------------------------------------#

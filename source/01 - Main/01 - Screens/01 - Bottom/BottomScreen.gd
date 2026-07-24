extends TextureRect
#------------------------------------------------------------------------------#
const _BOTTOM_OFF = preload("uid://c3u4h1h5ya4h8")
const _BOTTOM_ON = preload("uid://dm5alueyt0wj8")
#------------------------------------------------------------------------------#
# Variables
## Sets the Bottom Screen's [enum phase].
@export_enum("On", "Off") var phase = "Off":
	set(new_phase):
		phase = new_phase
		update_screen()
# OnReady Variables
@onready var menu_container: HBoxContainer = $MenuContainer
#------------------------------------------------------------------------------#
# Custom Functions
func update_screen():
	match(phase):
		"On":
			texture = _BOTTOM_ON
			menu_container.set_deferred("visible", true)
		"Off":
			texture = _BOTTOM_OFF
			menu_container.set_deferred("visible", false)

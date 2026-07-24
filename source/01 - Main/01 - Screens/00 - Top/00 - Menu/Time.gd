extends TextureButton
#------------------------------------------------------------------------------#
# Signals
signal switch_time
#------------------------------------------------------------------------------#
# Variables
# OnReady Variables
@onready var top_screen: TextureRect = $"../.."
#------------------------------------------------------------------------------#
#Signaled Functions
func _on_toggled(toggled_on: bool) -> void:
	top_screen.time = "Day" if toggled_on else "Night"
	match(top_screen.time):
		"Day": emit_signal("switch_time", "Day")
		"Night": emit_signal("switch_time", "Night")

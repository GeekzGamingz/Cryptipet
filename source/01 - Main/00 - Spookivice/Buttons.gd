extends Control
## Buttons
##
## This node is intended to manage the [TextureButton]s and their functions.
#------------------------------------------------------------------------------#
# Signals
signal left_pressed
signal right_pressed
#------------------------------------------------------------------------------#
# Variables
# OnReady Variables
# Local Nodes
@onready var left: TextureButton = $Left
@onready var right: TextureButton = $Right
#------------------------------------------------------------------------------#
# Signaled Functions
func _on_left_button_up() -> void: emit_signal("left_pressed")
func _on_right_button_up() -> void: emit_signal("right_pressed")

extends Control
#------------------------------------------------------------------------------#
# Constants
const PANEL = preload("uid://dov63udho8a2v")
#------------------------------------------------------------------------------#
# Variables
# OnReady Variables
@onready var notifications: VBoxContainer = $Notifications
#@onready var notification_audio: AudioStreamPlayer2D = $AudioPlayers/NotificationAudio
#------------------------------------------------------------------------------#
# Custom Functions
func add_message(message, timeout):
	var panel_scene = PANEL.instantiate()
	notifications.add_child(panel_scene)
	panel_scene.load_message(message, timeout)
	#notification_audio.play()

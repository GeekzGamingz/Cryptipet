extends TextureRect
#------------------------------------------------------------------------------#
# Variables
# Exported Variables
## Points to the Spookivice. This is your responsibility... Your curse.
@export var spookivice: Control
# Exported Enumerations
## Sets the [enum location] of the player's [Cryptid] to the [Texture2D];[br]
## Depends on the [enum time].[br][br]
## Default = "Off"
@export_enum("Off", "Graveyard") var location = "Off":
	set(new_location):
		location = new_location
		update_location()
@export_enum("Day", "Night") var time = "Night":
	set(new_time):
		time = new_time
		update_location()
# OnReady Variables
@onready var menu_container: HBoxContainer = $MenuContainer
@onready var feed: TextureButton = $MenuContainer/Feed
#------------------------------------------------------------------------------#
# Functions
# Ready
func _ready() -> void:
	await get_tree().process_frame
	spookivice.buttons.connect("left_pressed", left_pressed)
	spookivice.buttons.connect("right_pressed", right_pressed)
#------------------------------------------------------------------------------#
# Custom Signaled Functions
# Main Arrows
func left_pressed(): change_focus("Previous")
func right_pressed(): change_focus("Next")
# Grab Focus
func change_focus(arrow: String):
	var focused: bool = false
	for button: TextureButton in menu_container.get_children():
		if button.has_focus():
			var button_to_focus: TextureButton
			match(arrow):
				"Previous": button_to_focus = button.get_node(button.focus_previous)
				"Next": button_to_focus = button.get_node(button.focus_next)
			print("Switching Focus: [%s] to [%s]" % [button.name, button_to_focus.name])
			button_to_focus.grab_focus()
			focused = true
			break
	if !focused:
		print("Nothing Focused: Switching to [%s]" % feed.name)
		feed.grab_focus()
#------------------------------------------------------------------------------#
# Custom Functions
func update_location():
	if location == "Off": texture = Textures.LOCATIONS[location]
	else: texture = Textures.LOCATIONS[str("%s_%s" % [location, time])]
	if spookivice != null:
		spookivice.notifier.add_message("Change Scene: [%s] at [%s]" % [location, time], 5)

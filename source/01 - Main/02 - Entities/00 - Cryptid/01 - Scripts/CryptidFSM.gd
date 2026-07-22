# Inherits StateMachine Code
extends StateMachine
#------------------------------------------------------------------------------#
# Variables
# OnReady Variables
@onready var e: CharacterBody2D = $"../.."
@onready var state_label: Label = e.get_node("Outputs/States")
#------------------------------------------------------------------------------#
# Ready Method
func _ready() -> void:
	# Add States
	state_add("idle")
	state_add("walk_left")
	state_add("walk_right")
	state_add("walk_up")
	state_add("walk_down")
	call_deferred("state_set", states.idle)
#------------------------------------------------------------------------------#
# State Machine
# State Logistics
func state_logic(_delta):
	e.movement.handle_movement()
	e.movement.apply_movement()
	match(state):
		states.idle: pass
# State Transitions
@warning_ignore("unused_parameter")
func transitions(delta):
	match(state):
		#Idle
		states.idle: return basic_movement()
		states.walk_left: return basic_movement()
		states.walk_right: return basic_movement()
		states.walk_up: return basic_movement()
		states.walk_down: return basic_movement()
	return null
# Enter State
@warning_ignore("unused_parameter")
func state_enter(new_state, old_state):
	match(new_state):
		states.idle: pass
	state_label.text = str(states.keys()[new_state])
	#if old_state != null:
		#var old_string = str(states.keys()[old_state])
		#var new_string = str(states.keys()[new_state])
		#print("Switch States: [%s] -> [%s]" % [old_string, new_string])
# Exit State
@warning_ignore("unused_parameter")
func state_exit(old_state, new_state):
	match(old_state):
		states.idle: pass
#------------------------------------------------------------------------------#
# Custom Functions
func basic_movement() -> int:
	if e.velocity.x > 0: return states.walk_right
	elif e.velocity.x < 0: return states.walk_left
	elif e.velocity.y < 0: return states.walk_up
	elif e.velocity.y > 0: return states.walk_down
	return states.idle

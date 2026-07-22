#Inherits StateMachine Code
extends StateMachine
#------------------------------------------------------------------------------#
#Variables
#OnReady Variables
@onready var e: CharacterBody2D = $".."
@onready var state_label: Label = $"../Outputs/StateOutput"
#------------------------------------------------------------------------------#
#Ready Method
func _ready() -> void:
	#Add States
	state_add("idle")
	call_deferred("state_set", states.idle)
#------------------------------------------------------------------------------#
#State Label
#func _process(_delta: float) -> void: state_label.text = str(states.keys()[state])
#------------------------------------------------------------------------------#
#State Machine
#State Logistics
func state_logic(_delta):
	match(state):
		states.idle: pass
#State Transitions
@warning_ignore("unused_parameter")
func transitions(delta):
	match(state):
		#Idle
		states.idle: pass
	return null
#Enter State
@warning_ignore("unused_parameter")
func state_enter(new_state, old_state):
	match(new_state):
		states.idle: pass
	state_label.text = str(states.keys()[state])
	if old_state != null: print("Switch States: [%s] > [%s]" % old_state, new_state)
#Exit State
@warning_ignore("unused_parameter")
func state_exit(old_state, new_state):
	match(old_state):
		states.idle: pass

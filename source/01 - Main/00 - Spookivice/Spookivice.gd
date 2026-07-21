extends Control
#------------------------------------------------------------------------------#
# Variables
var dragPoint = null
@export var border: Polygon2D
#------------------------------------------------------------------------------#
# Functions
# Has Point Override
func _has_point(point: Vector2) -> bool:
	var local_point: Vector2 = point - border.position
	return Geometry2D.is_point_in_polygon(local_point, border.polygon)
#------------------------------------------------------------------------------#
# Signaled Functions
# GUI Input
func _on_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed: dragPoint = DisplayServer.mouse_get_position() - DisplayServer.window_get_position()
			else: dragPoint = null
	if event is InputEventMouseMotion && dragPoint != null:
		DisplayServer.window_set_position(DisplayServer.mouse_get_position() - dragPoint)

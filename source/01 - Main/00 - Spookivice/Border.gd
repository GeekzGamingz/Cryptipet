extends Polygon2D
#------------------------------------------------------------------------------#
# Variables
# Stored Polygons
# Base Polygon
var base_border: PackedVector2Array = PackedVector2Array([
	Vector2(91.0, 56.0), Vector2(97.9772, 56.0), Vector2(101.0, 53.0), Vector2(102.0, 53.0), Vector2(102.0, 40.0),
	Vector2(100.0, 38.0), Vector2(100.0, 35.0), Vector2(105.0, 30.0), Vector2(107.0, 30.0), Vector2(112.0, 35.0),
	Vector2(112.0, 38.0), Vector2(110.0, 40.0), Vector2(110.0, 53.0), Vector2(111.0, 53.0), Vector2(114.0, 56.0),
	Vector2(168.0, 56.0), Vector2(171.0, 53.0), Vector2(172.0, 53.0), Vector2(172.0, 40.0), Vector2(170.0, 38.0),
	Vector2(170.0, 35.0), Vector2(175.0, 30.0), Vector2(177.0, 30.0), Vector2(182.0, 35.0), Vector2(182.0, 38.0),
	Vector2(180.0, 40.0), Vector2(180.0, 53.0), Vector2(181.0, 53.0), Vector2(184.0, 56.0), Vector2(191.0, 56.0),
	Vector2(198.0, 59.0), Vector2(243.0, 104.0), Vector2(246.0, 111.0), Vector2(246.0, 125.0), Vector2(250.0, 129.0),
	Vector2(252.0, 140.0), Vector2(252.0, 182.0), Vector2(250.0, 193.0), Vector2(246.0, 197.0), Vector2(246.0, 211.0),
	Vector2(243.0, 218.0), Vector2(198.0, 263.0), Vector2(191.0, 266.0), Vector2(91.0, 266.0), Vector2(84.0, 263.0),
	Vector2(39.0, 218.0), Vector2(36.0, 211.0), Vector2(36.0, 197.0), Vector2(32.0, 193.0), Vector2(30.0, 182.0),
	Vector2(30.0, 140.0), Vector2(32.0, 129.0), Vector2(36.0, 125.0), Vector2(36.0, 111.0), Vector2(39.0, 104.0),
	Vector2(84.0, 59.0)])
# Sample Polygon
var polygon1: PackedVector2Array = PackedVector2Array([ #Unused
	Vector2(91.0, 56.0), Vector2(191.0, 56.0), Vector2(198.0, 59.0), Vector2(243.0, 104.0), Vector2(246.0, 111.0),
	Vector2(246.0, 125.0), Vector2(250.0, 129.0), Vector2(252.0, 140.0), Vector2(252.0, 182.0), Vector2(250.0, 193.0),
	Vector2(246.0, 197.0), Vector2(246.0, 211.0), Vector2(243.0, 218.0), Vector2(198.0, 263.0), Vector2(191.0, 266.0),
	Vector2(91.0, 266.0), Vector2(84.0, 263.0), Vector2(39.0, 218.0), Vector2(36.0, 211.0), Vector2(36.0, 197.0),
	Vector2(32.0, 193.0), Vector2(30.0, 182.0), Vector2(30.0, 140.0), Vector2(32.0, 129.0), Vector2(36.0, 125.0),
	Vector2(36.0, 111.0), Vector2(39.0, 104.0), Vector2(84.0, 59.0)])
# Dictionaries
var borders = {}
#Exported Variables
#Exported Enumerations
@export_enum("Base", "Polygon1") var current_polygon = "Base":
	set(new_polygon): polygon = borders[new_polygon]
#------------------------------------------------------------------------------#
#Functions
#Ready
func _ready() -> void:
	borders.set("Base", base_border)
	borders.set("Polygon1", polygon1)

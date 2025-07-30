extends Node

func _ready() -> void:
	var screen_size = Vector2(DisplayServer.screen_get_size())
	var margin = Vector2(100, 100)  # Adjust this to taste
	var new_size = screen_size - margin
	DisplayServer.window_set_size(new_size)

	var center_position = (screen_size - new_size) / 2
	DisplayServer.window_set_position(center_position)

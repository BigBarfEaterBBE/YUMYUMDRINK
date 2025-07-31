extends Node2D
var spawner = preload("res://scenes/spawner_node.tscn")
var strawberry_spawner_pos = Vector2(885,-400)
var banana_spawner_pos = Vector2(885, -229)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var screen_size = DisplayServer.screen_get_size()
	DisplayServer.window_set_size(screen_size)
	var strawberry_spawner = spawner.instantiate()
	var banana_spawner = spawner.instantiate()
	strawberry_spawner.position = strawberry_spawner_pos
	banana_spawner.position = banana_spawner_pos
	add_child(strawberry_spawner)
	add_child(banana_spawner)

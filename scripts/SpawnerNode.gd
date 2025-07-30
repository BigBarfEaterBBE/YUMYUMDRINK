extends Sprite2D

var mynode = preload("res://scenes/draggable_node.tscn")
var is_template = true

func _on_button_pressed() -> void:
	if is_template:
		var instance = mynode.instantiate()
		instance.is_template = false
		instance.position = get_global_mouse_position()
		get_tree().current_scene.add_child(instance)
		print("Spawning new node at ", instance.position)

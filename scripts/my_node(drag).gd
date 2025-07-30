extends Sprite2D

var dragging = false
var of = Vector2.ZERO
var is_template = false
# Called every frame. 'delta' is the elapsed time since the previous frame.



func _process(delta: float) -> void:
	if dragging:
		position = get_global_mouse_position() - of


func _on_button_button_down() -> void:
	dragging = true
	of = get_global_mouse_position() - global_position


func _on_button_button_up() -> void:
	dragging = false

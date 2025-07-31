extends RigidBody2D

var dragging = false
var of = Vector2.ZERO
@onready var sprite = $Sprite2D
@onready var size = sprite.texture.get_size() * sprite.scale

func _process(delta: float) -> void:
	var top_left = global_position - size/2
	var bottom_right = global_position + size/2
	var mouse_pos = get_global_mouse_position()
	var mouse_within_node = bool(mouse_pos.x >= top_left.x and mouse_pos.x <= bottom_right.x and mouse_pos.y >= top_left.y and mouse_pos.y <= bottom_right.y)
	if mouse_within_node and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		dragging = true
	else:
		dragging = false
	if dragging:
		position = get_global_mouse_position() - of


func _on_button_button_down() -> void:
	dragging = true
	of = get_global_mouse_position() - global_position


func _on_button_button_up() -> void:
	dragging = false

extends StaticBody2D

signal clickBox

func _on_Carton_input_event(viewport, event, shape_idx):
	if  event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		emit_signal("clickBox")

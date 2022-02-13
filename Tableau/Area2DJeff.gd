extends Area2D

signal clickJeff

func _on_Area2DJeff_input_event(viewport, event, shape_idx):
	if  event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		emit_signal("clickJeff")

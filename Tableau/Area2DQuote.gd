extends Area2D

signal clickQuote

func _on_Area2DQuote_input_event(viewport, event, shape_idx):
	if  event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		emit_signal("clickQuote")

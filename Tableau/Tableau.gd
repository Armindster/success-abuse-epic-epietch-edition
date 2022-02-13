extends Node2D

signal Isaac
signal Quote
signal Jeff

func _on_Area2DIsaac_clickIsaac():
	emit_signal("Isaac")

func _on_Area2DQuote_clickQuote():
	emit_signal("Quote")

func _on_Area2DJeff_clickJeff():
	emit_signal("Jeff")

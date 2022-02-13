extends Node2D

signal Isaac
signal Quote
signal Jeff

func _on_Area2DIsaac_clickIsaac():
	$Area2DIsaac/CollisionShape2D.disabled = true
	emit_signal("Isaac")

func _on_Area2DQuote_clickQuote():
	$Area2DQuote/CollisionShape2D.disabled = true
	emit_signal("Quote")

func _on_Area2DJeff_clickJeff():
	$Area2DJeff/CollisionShape2D.disabled = true
	emit_signal("Jeff")

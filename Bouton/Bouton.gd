extends Control

var pressed = 0
var ach = ["ach1", "ach2", "ach3", "ach4", "ach5", "ach6", "ach7", "ach8", "ach9", "ach10", "ach11", "ach12",
			"ach13", "ach14", "ach15", "ach16", "ach17", "ach18", "ach19", "ach20", "ach42", "ach50", "ach999"]
var count = -1

signal achievement

func _on_Button_pressed():
	pressed += 1
	if pressed >= 1 and pressed <= 20 or pressed == 42 or pressed == 50 or pressed == 999:
		count += 1
		print(pressed)
		emit_signal("achievement")

func get_achievement():
	return ach[count]

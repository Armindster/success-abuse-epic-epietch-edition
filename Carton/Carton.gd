extends Node2D

var unpack = ["deadCat", "aliveCat", "airplane", "jam"] #add XddL w/ signal
var open = 0
var upk = 0
var remove
var func_called = true

signal achievement
signal empty

func _on_CartonBody_clickBox():
	if unpack.empty() and upk == 4 :
		print("I think there is nothing left to unpack.")
		emit_signal("empty")
	elif !unpack.empty():
		if func_called:
			open = randi() % 4
			if open == 1:
				remove = unpack.pop_at(randi() % (unpack.size()))
				print(remove)
				upk += 1
				emit_signal("achievement")
				func_called = false
		else:
			print("The box is empty...")

func return_unpacked_object():
	func_called = true
	return remove

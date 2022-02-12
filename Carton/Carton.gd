extends Node2D

var unpack = ["deadCat", "aliveCat", "airplane", "jam"] #add XddL w/ signal
var open = 0
var upk = 0
var remove

signal empty

func _on_CartonBody_clickBox():
	if unpack.empty() and upk == 5 :
		print("I think there is nothing left to unpack.")
		emit_signal("empty")
	else:
		open = randi() % 4
		if open == 1:
			remove = unpack.pop_at(randi() % (unpack.size()))
			print(remove)
			upk += 1
		else:
			print("The box is empty...")

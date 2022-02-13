extends Node2D

var unpack = ["deadCat", "aliveCat", "airplane", "jam"]
var open = 0
var upk = 0
var remove
var func_called = true

signal achievement
signal empty

func add_Xav_in_Carton():
	unpack.append("XDdL")

func _on_CartonBody_clickBox():
	if unpack.empty() and upk == 5 :
		print("I think there is nothing left to unpack.")
		emit_signal("empty")
		get_node("CartonBody/CollisionCarton").disabled = true
	elif !unpack.empty():
		open = randi() % 5
		print(func_called)
		if func_called and open == 1:
			remove = unpack.pop_at(randi() % (unpack.size()))
			print(remove)
			upk += 1
			func_called = false
			emit_signal("achievement")
		else:
			print("The box is empty...")

func return_unpacked_object():
	func_called = true
	return remove

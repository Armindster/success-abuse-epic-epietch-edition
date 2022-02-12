extends Node2D

onready var tmr = get_node("Timer")

func _ready():
	start_timer()

func start_timer():
	var time = randi() % 10 + 1
	print("Time: ", time)
	tmr.set_wait_time(time)
	tmr.start()

func _on_Timer_timeout():
	print("Timeout")
	if not get_node("Fax"):
		print("Create fax")
		add_child(load("res://fax/Fax.tscn").instance(), get_child_count() - 1)
		get_node("Fax").position = Vector2(100, 100)
	start_timer()

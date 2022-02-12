extends Node2D

onready var tmr = get_node("Timer")

func _ready():
	start_timer()

func start_timer():
	var time = randi() % 10 + 1
	tmr.set_wait_time(time)
	tmr.start()

func _on_Timer_timeout():
	if not get_node("Fax"):
		add_child(load("res://Fax/Fax.tscn").instance())
	start_timer()
